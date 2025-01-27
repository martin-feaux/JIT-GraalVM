JAVAC = $(GRAALVM_HOME)/bin/javac
JAVA = $(GRAALVM_HOME)/bin/java
NATIVE_IMAGE = $(GRAALVM_HOME)/bin/native-image

BUILD_FOLDER = bin

.PHONY: all
all: blender blender2 blender3 blender4 blender5 blender6 blender7 count_uppercase fibo

.PHONY: run-all
run-all: run-OpenJDK-all run-GraalVM-all run-native-all

.PHONY: run-OpenJDK-all
run-OpenJDK-all: run-OpenJDK-blender run-OpenJDK-blender2 run-OpenJDK-blender3 run-OpenJDK-blender4 run-OpenJDK-blender5 run-OpenJDK-blender6 run-OpenJDK-blender7 run-OpenJDK-count_uppercase run-OpenJDK-fibo

.PHONY: run-GraalVM-all
run-GraalVM-all: run-GraalVM-blender run-GraalVM-blender2 run-GraalVM-blender3 run-GraalVM-blender4 run-GraalVM-blender5 run-GraalVM-blender6 run-GraalVM-blender7 run-GraalVM-count_uppercase run-GraalVM-fibo

.PHONY: run-native-all
run-native-all: run-native-blender run-native-blender2 run-native-blender3 run-native-blender4 run-native-blender5 run-native-blender6 run-native-blender7 run-native-count_uppercase run-native-fibo

.PHONY: blender
blender: $(BUILD_FOLDER)/blender

.PHONY: run-OpenJDK-blender
run-OpenJDK-blender: $(BUILD_FOLDER)/Blender.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Blender

.PHONY: run-GraalVM-blender
run-GraalVM-blender: $(BUILD_FOLDER)/Blender.class
	cd $(BUILD_FOLDER) && $(JAVA) Blender

.PHONY: run-native-blender
run-native-blender: $(BUILD_FOLDER)/blender
	cd $(BUILD_FOLDER) && ./blender

$(BUILD_FOLDER)/Blender.class: Blender.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/blender: $(BUILD_FOLDER)/Blender.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Blender blender

.PHONY: blender2
blender2: $(BUILD_FOLDER)/blender2 

.PHONY: run-OpenJDK-blender2
run-OpenJDK-blender2: $(BUILD_FOLDER)/Blender2.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Blender2

.PHONY: run-GraalVM-blender2
run-GraalVM-blender2: $(BUILD_FOLDER)/Blender2.class
	cd $(BUILD_FOLDER) && $(JAVA) Blender2

.PHONY: run-native-blender2
run-native-blender2: $(BUILD_FOLDER)/blender2
	cd $(BUILD_FOLDER) && ./blender2

$(BUILD_FOLDER)/Blender2.class: Blender2.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/blender2: $(BUILD_FOLDER)/Blender2.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Blender2 blender2

.PHONY: blender3
blender3: $(BUILD_FOLDER)/blender3 

.PHONY: run-OpenJDK-blender3
run-OpenJDK-blender3: $(BUILD_FOLDER)/Blender3.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Blender3

.PHONY: run-GraalVM-blender3
run-GraalVM-blender3: $(BUILD_FOLDER)/Blender3.class
	cd $(BUILD_FOLDER) && $(JAVA) Blender3

.PHONY: run-native-blender3
run-native-blender3: $(BUILD_FOLDER)/blender3
	cd $(BUILD_FOLDER) && ./blender3

$(BUILD_FOLDER)/Blender3.class: Blender3.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/blender3: $(BUILD_FOLDER)/Blender3.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Blender3 blender3

.PHONY: blender4
blender4: $(BUILD_FOLDER)/blender4 

.PHONY: run-OpenJDK-blender4
run-OpenJDK-blender4: $(BUILD_FOLDER)/Blender4.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Blender4

.PHONY: run-GraalVM-blender4
run-GraalVM-blender4: $(BUILD_FOLDER)/Blender4.class
	cd $(BUILD_FOLDER) && $(JAVA) Blender4

.PHONY: run-native-blender4
run-native-blender4: $(BUILD_FOLDER)/blender4
	cd $(BUILD_FOLDER) && ./blender4

$(BUILD_FOLDER)/Blender4.class: Blender4.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/blender4: $(BUILD_FOLDER)/Blender4.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Blender4 blender4

.PHONY: blender5
blender5: $(BUILD_FOLDER)/blender5 

.PHONY: run-OpenJDK-blender5
run-OpenJDK-blender5: $(BUILD_FOLDER)/Blender5.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Blender5

.PHONY: run-GraalVM-blender5
run-GraalVM-blender5: $(BUILD_FOLDER)/Blender5.class
	cd $(BUILD_FOLDER) && $(JAVA) Blender5

.PHONY: run-native-blender5
run-native-blender5: $(BUILD_FOLDER)/blender5
	cd $(BUILD_FOLDER) && ./blender5

$(BUILD_FOLDER)/Blender5.class: Blender5.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/blender5: $(BUILD_FOLDER)/Blender5.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Blender5 blender5

.PHONY: blender6
blender6: $(BUILD_FOLDER)/blender6 

.PHONY: run-OpenJDK-blender6
run-OpenJDK-blender6: $(BUILD_FOLDER)/Blender6.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Blender6

.PHONY: run-GraalVM-blender6
run-GraalVM-blender6: $(BUILD_FOLDER)/Blender6.class
	cd $(BUILD_FOLDER) && $(JAVA) Blender6

.PHONY: run-native-blender6
run-native-blender6: $(BUILD_FOLDER)/blender6
	cd $(BUILD_FOLDER) && ./blender6

$(BUILD_FOLDER)/Blender6.class: Blender6.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/blender6: $(BUILD_FOLDER)/Blender6.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Blender6 blender6

.PHONY: blender7
blender7: $(BUILD_FOLDER)/blender7 

.PHONY: run-OpenJDK-blender7
run-OpenJDK-blender7: $(BUILD_FOLDER)/Blender7.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Blender7

.PHONY: run-GraalVM-blender7
run-GraalVM-blender7: $(BUILD_FOLDER)/Blender7.class
	cd $(BUILD_FOLDER) && $(JAVA) Blender7

.PHONY: run-native-blender7
run-native-blender7: $(BUILD_FOLDER)/blender7
	cd $(BUILD_FOLDER) && ./blender7

$(BUILD_FOLDER)/Blender7.class: Blender7.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/blender7: $(BUILD_FOLDER)/Blender7.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Blender7 blender7

.PHONY: count_uppercase
count_uppercase: $(BUILD_FOLDER)/count_uppercase 

.PHONY: run-OpenJDK-count_uppercase
run-OpenJDK-count_uppercase: $(BUILD_FOLDER)/CountUppercase.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler CountUppercase

.PHONY: run-GraalVM-count_uppercase
run-GraalVM-count_uppercase: $(BUILD_FOLDER)/CountUppercase.class
	cd $(BUILD_FOLDER) && $(JAVA) CountUppercase

.PHONY: run-native-count_uppercase
run-native-count_uppercase: $(BUILD_FOLDER)/count_uppercase
	cd $(BUILD_FOLDER) && ./count_uppercase

$(BUILD_FOLDER)/CountUppercase.class: CountUppercase.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/count_uppercase: $(BUILD_FOLDER)/CountUppercase.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) CountUppercase count_uppercase

.PHONY: fibo
fibo: $(BUILD_FOLDER)/fibo 

.PHONY: run-OpenJDK-fibo
run-OpenJDK-fibo: $(BUILD_FOLDER)/Fibo.class
	cd $(BUILD_FOLDER) && $(JAVA) -XX:-UseJVMCICompiler Fibo

.PHONY: run-GraalVM-fibo
run-GraalVM-fibo: $(BUILD_FOLDER)/Fibo.class
	cd $(BUILD_FOLDER) && $(JAVA) Fibo

.PHONY: run-native-fibo
run-native-fibo: $(BUILD_FOLDER)/fibo
	cd $(BUILD_FOLDER) && ./fibo

$(BUILD_FOLDER)/Fibo.class: Fibo.java
	mkdir -p $(BUILD_FOLDER)/ && $(JAVAC) -d $(BUILD_FOLDER) $^

$(BUILD_FOLDER)/fibo: $(BUILD_FOLDER)/Fibo.class
	cd $(BUILD_FOLDER)/ && $(NATIVE_IMAGE) Fibo fibo

.PHONY: clean
clean:
	rm -r $(BUILD_FOLDER)
