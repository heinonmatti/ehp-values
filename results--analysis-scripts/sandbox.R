df <- cbind(df,
            lapply(names(scales_t1),
                   function(scaleName) {
                     if (length(scales_t1[[scaleName]]) > 1) {
                       return(aggregate_and_document_scale(df[, scales_t1[[scaleName]]]));
                     } else {
                       return(df[, scales_t1[[scaleName]]]);
                     }
                   }));
names(df)[(length(names(df))-length(names(scales_t1))):length(names(df)] <-
  names(scales_t1);

