void setup() {
  // put your setup code here, to run once:
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(8, INPUT);
 
 Serial.begin(9600);
  helloworld();
}

int loop_number = 0;

void loop() {
  loop_number++;
  Serial.print(loop_number);
  Serial.print(" ");
  
  // put your main code here, to run repeatedly:
  for(int i=2;i<9;i++)
  {
    Serial.print(digitalRead(i));
    Serial.flush();
  }
  delay(10);
  Serial.println();

}

void helloworld()
{
  delay(5000);
  Serial.println('hello world');   
}
