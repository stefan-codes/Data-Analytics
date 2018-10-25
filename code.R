# Relationships and their code

# ONE - Location(D) vs SO
ggplot(data = dataset, mapping = aes(x = Location, y = so))+ geom_boxplot()

# TWO - Age(O) vs SD
ggplot(data = dataset, mapping = aes(x = Age, y = sd))+ geom_boxplot() + scale_x_discrete(limits=c("T","U","L","O"))

# THREE - Age vs Gender(F) vs SJ
ggplot(data = subset(dataset, Gender == "F"), mapping = aes(x = Age, y = sj)) + geom_boxplot(aes(fill = Age)) + scale_x_discrete(limits=c("T","U","L","O")) + labs(x = "Age", y = "Jumps Score") + theme_classic() + theme(legend.position = "none") + scale_fill_manual(values = c("#ed97ca", "#ed665d", "#6dccda", "#ad8bc9"))

# FOUR - Location(A,C) vs SS vs ST
ggplot(data = subset(dataset, Location == "A" | Location == "C"), mapping = aes(x = ss, y = st)) + geom_point() + facet_wrap(~Location, ncol=2)

# FIVE - Location(B,D,E) vs Gender(F) vs ST vs SO
ggplot(data = subset(dataset, Gender == "F" & (Location == "B" | Location == "D" | Location == "E")), mapping = aes(x = st, y = so)) + geom_point() + geom_smooth(method = 'lm', aes(color = Gender)) + facet_wrap(~Location, ncol=2)

# SIX - Locaction(B) vs Gender(M) vs SD vs SJ
ggplot(data = subset(dataset, Location == "B" & Gender == "M"), mapping = aes(x = sd, y = sj)) + geom_point()

# SEVEN - Location(E) vs Gender(F) vs Age(T) vs SS vs SJ
ggplot(data = subset(dataset, Location == "E" & Gender == "F" & Age == "T"), mapping = aes(x = ss, y = sj)) + geom_point()