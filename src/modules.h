typedef struct {
  char *moduleName;
  char *location;
} i_module;

i_module load_module(char *moduleName);
void unload_module(i_module *module);

