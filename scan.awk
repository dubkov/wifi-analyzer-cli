$1 == "BSS" {
	MAC = $2
	wifi[MAC]["enc"] = "Open"
	wifi[MAC]["mac"] = $2 " " $3

}
MAC == "Load:" {				#this is for removing trash from table
	wifi[MAC]["mac"] = " "
	wifi[MAC]["enc"] = " "
}
$1 == "SSID:" {
	wifi[MAC]["SSID"] = $2
}
$1 == "freq:" {
	wifi[MAC]["freq"] = $NF	
}
$1 == "signal:" {
	wifi[MAC]["sig"] = $2 " " $3	
}
$1 == "WPA:" {
	wifi[MAC]["enc"] = "WPA"	
}
$1 == "WEP:" {
	wifi[MAC]["enc"] = "WEP"	
}
END {
	printf "%s\t\t\t\t%s\t%s\t\t%s\t%s\n","MAC","Freq","Signal","Enc","SSID"
	printf "=================================================================================\n"

	for (w in wifi) {
		printf "%s\t%s\t%s\t%s\t%s\n",wifi[w]["mac"],wifi[w]["freq"],wifi[w]["sig"],wifi[w]["enc"],wifi[w]["SSID"]
	}
}

