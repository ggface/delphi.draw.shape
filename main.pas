unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cbScale: TComboBox;
    rgColor: TRadioGroup;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbScaleChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rgColorClick(Sender: TObject);
  private
    procedure SetShapeColor(value: integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type
  TMyItem = class
     Value: integer;
     constructor Create(value: integer);
  end;

procedure TForm1.cbScaleChange(Sender: TObject);
begin
  Refresh;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: byte;
begin
  // Подготовка холста
  Canvas.brush.Style := bsSolid;
  // Данные для масштаба
  cbScale.AddItem('1:1', TMyItem.Create(1));
  for i := 1 to 5 do
    cbScale.AddItem('1:' + IntToStr(2*i), TMyItem.Create(2*i));
  // Данные для выбора цвета
  rgColor.Items.AddObject('Красный' , TMyItem.Create(clRed));
  rgColor.Items.AddObject('Зеленый' , TMyItem.Create(clGreen));
  rgColor.Items.AddObject('Синий' , TMyItem.Create(clBlue));
  // Значения по-умолчанию
  cbScale.ItemIndex := 0;
  rgColor.ItemIndex := 0;
end;



procedure TForm1.FormPaint(Sender: TObject);
const
  Radius: integer = 25;
var
  Scale: integer;
begin
  // Получаем масштаб
  Scale := (cbScale.Items.Objects[cbScale.ItemIndex] as TMyItem).Value;
    // Рисуем
  Canvas.Ellipse((Width div 2) - (Radius * Scale),(Height div 2) - (Radius * Scale),
    (Width div 2) + (Radius * Scale), (Height div 2) + (Radius * Scale));
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Refresh;
end;

procedure TForm1.rgColorClick(Sender: TObject);
begin
  SetShapeColor((rgColor.Items.Objects[rgColor.ItemIndex] as TMyItem).Value);
  Refresh;
end;

procedure TForm1.SetShapeColor(value: integer);
begin
  // Цвет границы
  Canvas.Pen.Color:=value;
  // Цвет заливки
  Canvas.brush.Color:=value;
end;

{ TMyItem }

constructor TMyItem.Create(value: integer);
begin
   self.Value := value;
end;

end.
