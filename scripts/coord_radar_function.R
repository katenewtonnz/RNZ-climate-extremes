coord_radar <- function (theta = "x", start = 0, direction = 1)
{
  theta <- match.arg(theta, c("x", "y"))
  r <- if (theta == "x")
    "y"
  else "x"
  ggproto("CoordRadar", ggplot2::CoordPolar, theta = theta, r = r, start = start,
          direction = sign(direction),
          is_linear = function(coord) TRUE)
}

#'Rescale all numeric variables of a data.frame except grouping variable
#'
#'@param data A data.frame
#'@param groupvar A column name used as a grouping variable
#'@importFrom scales rescale
#'
#'@export
#'@return A rescaled data.frame
rescale_df=function(data,groupvar=NULL){
  if(is.null(groupvar)) df=data
  else df=data[,-which(names(data) %in% groupvar)]
  
  select=sapply(df,is.numeric)
  df[select]=lapply(df[select], scales::rescale)
  if(!is.null(groupvar)) {
    df=cbind(df,data[groupvar])
    #colnames(df)[length(df)]=groupvar
  }
  df
}


#' extract variable name from mapping, aes
#' @param mapping aesthetic mapping
#' @param varname variable name to extract
#' @return variable name in character
#' @importFrom stringr str_replace_all str_detect str_split fixed
#' @importFrom utils packageVersion
#' @export
#' @examples
#' require(ggplot2)
#' mapping=aes(colour=sex)
#' mapping=aes(x=c(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width))
#' getMapping(mapping,"colour")
#' getMapping(mapping,"x")
getMapping=function(mapping,varname) {
  
  # mapping=aes(colour=sex)
  # varname="x"
  # mapping=aes(colour=am,facet=cyl);varname=c("colour","facet")
  
  if(is.null(mapping)) return(NULL)
  result=paste(mapping[varname])
  result
  if(length(result)==1){
    if(result=="NULL") result<-NULL
  } else{
    for(i in 1:length(result)){
      if(result[i]=="NULL") result[i]<-NULL
    }
  }
  if(!is.null(result)){
    if(packageVersion("ggplot2") > "2.2.1") {
      result=stringr::str_replace_all(result,"~","")
    }
    result=stringr::str_replace_all(result,stringr::fixed("c("),"")
    result=stringr::str_replace_all(result,stringr::fixed(")"),"")
    result=stringr::str_replace_all(result," ","")
    # res=c()
    # if(stringr::str_detect(result,",")) {
    result=unlist(stringr::str_split(result,","))
    # }
    
  }
  result
}