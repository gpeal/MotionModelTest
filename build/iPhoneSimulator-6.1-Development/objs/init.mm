extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_C05497A24FC8461EA896C73F794E4366(void *, void *);
void MREP_21467592626A481BB20B9F057360095C(void *, void *);
void MREP_E0E0869800B240F1B1C99237980A3C4B(void *, void *);
void MREP_7FB7B340BFE34922940B9A8480C4682D(void *, void *);
void MREP_768BD00318D44021A11F1B8903DBC05A(void *, void *);
void MREP_EC105507DF8348DCABAE0A28A47AE738(void *, void *);
void MREP_F517973D46774183BAABA0E96C50D903(void *, void *);
void MREP_24CDEA4BF1014BEEAE43FC18167DF5FA(void *, void *);
void MREP_076BCEDC0ADE454BB378AC114E4C8EFF(void *, void *);
void MREP_F06A8B2CA24B407885D6DB4FC26B94DE(void *, void *);
void MREP_2BAB1C36783C425882881BF91698732C(void *, void *);
void MREP_BE9BBE61F1004A47A1F0847E43F3A008(void *, void *);
void MREP_9D9056370B014F25A9951F2AB8C47BD3(void *, void *);
void MREP_5399231F17964D2EADDCF1C26409496A(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
MREP_C05497A24FC8461EA896C73F794E4366(self, 0);
MREP_21467592626A481BB20B9F057360095C(self, 0);
MREP_E0E0869800B240F1B1C99237980A3C4B(self, 0);
MREP_7FB7B340BFE34922940B9A8480C4682D(self, 0);
MREP_768BD00318D44021A11F1B8903DBC05A(self, 0);
MREP_EC105507DF8348DCABAE0A28A47AE738(self, 0);
MREP_F517973D46774183BAABA0E96C50D903(self, 0);
MREP_24CDEA4BF1014BEEAE43FC18167DF5FA(self, 0);
MREP_076BCEDC0ADE454BB378AC114E4C8EFF(self, 0);
MREP_F06A8B2CA24B407885D6DB4FC26B94DE(self, 0);
MREP_2BAB1C36783C425882881BF91698732C(self, 0);
MREP_BE9BBE61F1004A47A1F0847E43F3A008(self, 0);
MREP_9D9056370B014F25A9951F2AB8C47BD3(self, 0);
MREP_5399231F17964D2EADDCF1C26409496A(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
