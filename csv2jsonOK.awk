BEGIN {
    FS="\",\""
    OFS=""

    getline

    for(i = 1; i < NF; i++)
	names[i] = ($i)
    
    print "{"
    print "   \"data\":{"
}
{
    if(($24) == "OK")
    {
	 printf "      \"%s\":{\n", ($1)
	 for(i=2; i<NF; i++)
	 {
	     if(($i) == "")
	     	printf "      \"%s\":\"%s\"%s", names[i], ($i), (i == (NF - 1) ? "" : ",\n")
	 }
	 
	 print "\n      },"
    }
}
END {
    print "      \"null\": {}\n"
    print "   }\n"
    print "}"
}
