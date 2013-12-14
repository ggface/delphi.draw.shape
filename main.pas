unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    cbScale: TComboBox;
    rgColor: TRadioGroup;
    procedure FormPaint(Sender: TObject);
    procedure cbScaleChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rgColorClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

// Обработчик при изменении масштаба
procedure TMainForm.cbScaleChange(Sender: TObject);
begin
// просто перерибуем форму
  Refresh;
end;

// Обработчик при перерисовке формы
procedure TMainForm.FormPaint(Sender: TObject);
const
  Radius: integer = 25; // Радиус круга будет 25 пикселей
var
  Scale: integer; // Переменная для масштаба
  LeftTopX, LeftTopY: integer; // Для левой верхней точки
  RightBottomX, RightBottomY: integer; // Для правой нижней точки
begin
// Определяем цвет

if rgColor.ItemIndex = 0 then // Если выбран красный
begin
  Canvas.Pen.Color:= clRed; // Цвет границы круга
  Canvas.brush.Color:=clRed;  // Цвет заливки круга
end;

if rgColor.ItemIndex = 1 then // Если выбран зеленый
begin
  Canvas.Pen.Color:= clGreen;
  Canvas.brush.Color:=clGreen;
end;

if rgColor.ItemIndex = 2 then // Если выбран синий
begin
  Canvas.Pen.Color:= clBlue;
  Canvas.brush.Color:=clBlue;
end;

  // Получаем масштаб
  if (cbScale.ItemIndex = 0) then
    Scale := 1 // Если выбран верхний элемент 1:1
    else
    Scale := cbScale.ItemIndex + 1; // Если выбран любой другой элемент

    // Получим X и Y левой верхней точки
    LeftTopX := (MainForm.Width div 2) - (Radius * Scale);
    LeftTopY := (MainForm.Height div 2) - (Radius * Scale);
     // Получим X и Y правой нижней точки
    RightBottomX := (Width div 2) + (Radius * Scale);
    RightBottomY :=  (Height div 2) + (Radius * Scale);
    //Рисуем круг
  Canvas.Ellipse(LeftTopX, LeftTopY, RightBottomX, RightBottomY);
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
// При изменении размера формы перерисуем ее.
  Refresh;
end;

// Событие при смене цвета
procedure TMainForm.rgColorClick(Sender: TObject);
begin
// Перерисуем форму
  Refresh;
end;

end.
