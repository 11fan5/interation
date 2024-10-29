drug_table = function(html, number, drug){
  
  drug_df = 
    html %>% 
    html_table() %>% 
    nth(number) %>% 
    slice(-1) %>% 
    mutate(drug = drug) %>% 
    select(-contains("P Values"))
  
  return(drug_df)
}