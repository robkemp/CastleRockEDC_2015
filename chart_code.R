library(codemogProfile)


jco=ms_jobs("000", "Colorado")+
  theme(axis.text=element_text(size=rel(1.15)),
        axis.title=element_text(size=rel(1.15)))


ggsave("colorado_jobs_2014.png", jco, h=150, w=250, units="mm")


jl=ms_jobs("035", "Douglas")+
  theme(axis.text=element_text(size=rel(1.15)),
        axis.title=element_text(size=rel(1.15)))


ggsave("douglas_jobs_2014.png", jl, h=150, w=250, units="mm")

jw=ms_jobs("035", "Douglas")+
  theme(axis.text=element_text(size=rel(1.15)),
        axis.title=element_text(size=rel(1.15)))


ggsave("douglas_jobs_2014.png", jw, h=150, w=250, units="mm")




ico=cp_indchange("035", "Douglas")+
  theme(axis.text.x=element_text(size=rel(1.15)),
        axis.text.y=element_text(size=rel(1.15)),
        axis.title=element_text(size=rel(1.05)),
        plot.title=element_blank())

ico

ggsave("douglas_indchange_2014.png", ico, h=150, w=250, units="mm")


pt=cp_poptrend("035", "Douglas")

png("douglas_pop_trend.png", w=250, h=150, units="mm", res=300)
cp_poptrend("035", "Douglas")
dev.off()

mig=cp_migbyage(c("035", "031", "059"))

ggsave("douglas_mig_2014.png", mig, h=150, w=250, units="mm")


pop_muni=muni_ts_chart("12415")
ggsave("castlerock_pop_2014.png", pop_muni, h=150, w=250, units="mm")

job_share=cp_jobShare("035", "Douglas")+
  theme(axis.text.x=element_text(size=rel(1.15)),
        axis.text.y=element_text(size=rel(1.15)),
        axis.title=element_text(size=rel(1.05)),
        plot.title=element_blank())
ggsave("douglas_jobshare_2014.png", job_share, h=150, w=250, units="mm")
