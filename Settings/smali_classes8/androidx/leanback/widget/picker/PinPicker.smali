.class public Landroidx/leanback/widget/picker/PinPicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "PinPicker.java"


# static fields
.field private static final DEFAULT_COLUMN_COUNT:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/leanback/R$attr;->pinPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/PinPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Landroidx/leanback/R$styleable;->lbPinPicker:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    sget-object v4, Landroidx/leanback/R$styleable;->lbPinPicker:[I

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/leanback/widget/picker/PinPicker;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_0
    :try_start_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/PinPicker;->setSeparator(Ljava/lang/CharSequence;)V

    sget v1, Landroidx/leanback/R$styleable;->lbPinPicker_columnCount:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/PinPicker;->setNumberOfColumns(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PinPicker;->getSelectedColumn()I

    move-result v1

    add-int/lit8 v3, v0, -0x7

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Landroidx/leanback/widget/picker/PinPicker;->setColumnValue(IIZ)V

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PinPicker;->performClick()Z

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroidx/leanback/widget/picker/Picker;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public getPin()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PinPicker;->getColumnsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/picker/PinPicker;->getColumnAt(I)Landroidx/leanback/widget/picker/PickerColumn;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public performClick()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PinPicker;->getSelectedColumn()I

    move-result v0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PinPicker;->getColumnsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroidx/leanback/widget/picker/Picker;->performClick()Z

    move-result v1

    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/PinPicker;->setSelectedColumn(I)V

    const/4 v1, 0x0

    return v1
.end method

.method public resetPin()V
    .locals 3

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PinPicker;->getColumnsCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1, v2, v2}, Landroidx/leanback/widget/picker/PinPicker;->setColumnValue(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/picker/PinPicker;->setSelectedColumn(I)V

    return-void
.end method

.method public setNumberOfColumns(I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v2}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    const-string v3, "%d"

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/picker/PickerColumn;->setLabelFormat(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/PinPicker;->setColumns(Ljava/util/List;)V

    return-void
.end method
