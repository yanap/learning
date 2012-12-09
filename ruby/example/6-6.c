for (int i = 0; i < 10; ++i) { printf("%d\n", i); }
const char str[] = "Glubbdubdrib";
for (const char *ptr = str; *ptr; ++ptr) {
	printf("%x\n", *ptr);
}