gc_content <- function(seq) {
  seq <- toupper(seq)
  bases <- strsplit(seq, "")[[1]]
  gc_count <- sum(bases == "G" | bases == "C")
  return((gc_count / length(bases)) * 100)
}
gc_content("GCTAGCTAGCTA")
gc_content("gctagcTAGCTA")

