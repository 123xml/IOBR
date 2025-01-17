




#' Transform features with Inf or NA to other number
#'
#' @param data data with Inf
#' @param feature variables
#' @param data_type is data NA or infinite
#' @param into transform data into 0 or 1, or others, default is 0
#'
#' @return minipulated data
#' @author Dongqiang Zeng
#' @export
#'
#' @examples
#'
transform_data<-function(data, feature, data_type= c("NA", "Inf", "zero"), into = 0){
  feature<-colnames(data)[colnames(data)%in%feature]

  if(data_type == "NA"){
    for(i in 1:length(feature) ){
      var<-feature[i]
      j<-which(colnames(data)==var)

      if(into=="mean"){
        data[is.na(data[,var]),j]<-mean(data[,j], na.rm = TRUE )
      }else{
        data[is.na(data[,var]),j]<- into
      }
    }
  }else if(data_type == "Inf"){
    for(i in 1:length(feature) ){
      var<-feature[i]
      j<-which(colnames(data)==var)

      if(into=="mean"){
        data[is.infinite(data[,var]),j]<-mean(data[,j], na.rm = TRUE )
      }else{
        data[is.infinite(data[,var]),j]<- into
      }

    }
  }else if(data_type == "zero"){
    for(i in 1:length(feature) ){
      var<-feature[i]
      j<-which(colnames(data)==var)
      data[data[,var]== 0,j]<- into
    }
  }
  return(data)
}



