void setup() {
  // put your setup code here, to run once:
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  pinMode(A4, INPUT);
  pinMode(A5, INPUT);
 
  Serial.begin(9600);
  helloworld();
}

int loop_number = 0;

void loop() {
  loop_number++;
  Serial.print(loop_number);
  Serial.print(" ");
  
  // put your main code here, to run repeatedly:
  for(int i=0;i<6;i++)
  {
    Serial.print(analogRead(i));
    Serial.print(" ");
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
