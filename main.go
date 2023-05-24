package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

func BilanganCacah(n int) {
	count := 0
	i := 1
	for count < n {
		if i%3 == 0 || i%7 == 0 {
			if i%3 == 0 && i%7 == 0 {
				fmt.Println("Z")
				count++
			} else {
				fmt.Println(i)
				count++
			}
		}
		i++

	}
}

func PencarianKata(sentence string) {
	words := strings.Split(sentence, " ")
	for i := 0; i < len(words); i++ {
		if words[i] == "Sang" || words[i] == "sang" {
			if strings.Contains(words[i+1], "Gajah") || strings.Contains(words[i+1], "gajah") {
				fmt.Println("sang gajah")
			}
		}
		if words[i] == "Harimau" || words[i] == "harimau" {
			fmt.Println("harimau")
		}
		if words[i] == "Serigala" || words[i] == "serigala" {
			fmt.Println("serigala")
		}
	}
}

func PasswordValidation(password string) {
	if len(password) < 8 || len(password) > 32 {
		fmt.Println("Password harus lebih dari 8 karakter dan maksimal 32 karakter")
	} else {
		if strings.ContainsAny(password, "0123456789") {
			if strings.ContainsAny(string(password[0]), "0123456789") {
				fmt.Println("Karakter awal tidak boleh angka")
			} else {
				if strings.ContainsAny(password, "abcdefghijklmnopqrstuvwxyz") {
					if strings.ContainsAny(password, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") {
						fmt.Println("Password valid")
					} else {
						fmt.Println("Harus memiliki huruf kapital dan huruf kecil")
					}
				} else {
					fmt.Println("Harus memiliki huruf kapital dan huruf kecil")
				}
			}
		} else {
			fmt.Println("Password harus mengandung angka")
		}
	}
}

func FindSmallestMissingNUmbers(data []int) {
	sort.Ints(data)
	for i := 0; i < len(data); i++ {
		if data[i]+1 == data[i+1] {
			continue
		} else {
			fmt.Println(data[i] + 1)
			break
		}
	}
}

func Pattern(n int) {
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			fmt.Print("X")
		}
		fmt.Println()
	}
}

func main() {

	// SOAL NOMOR 1
	BilanganCacah(13)

	// SOAL NOMOR 2
	sentence := "Berikut adalah kisah sang gajah. Sang gajah memiliki teman serigala bernama DoeSang. Gajah sering dibela oleh serigala ketika harimau mendekati gajah."
	PencarianKata(sentence)

	// SOAL NOMOR 3
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Print("Masukkan password: ")
	scanner.Scan()

	// Uncomment line below to test with input from user
	// password := scanner.Text()

	PasswordValidation("Sandiw")
	PasswordValidation("Sandiwar4123123123assadasdasdasdasdqweqweqweqeqwsadasdasdasdasd")
	PasswordValidation("5andiwara")
	PasswordValidation("sandiwar4")
	PasswordValidation("Sandiwar4")

	// SOAL NOMOR 4
	data1 := []int{5, 2, 8, 4, 3, 10}
	data2 := []int{2, 3, 4, 6}
	data3 := []int{8, 6, 7, 12}
	FindSmallestMissingNUmbers(data1)
	FindSmallestMissingNUmbers(data2)
	FindSmallestMissingNUmbers(data3)

	// SOAL NOMOR 5
	Pattern(5)

}
