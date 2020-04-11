.class public Lcom/google/android/material/picker/MaterialDatePickerView;
.super Lcom/google/android/material/picker/MaterialCalendarView;
.source "MaterialDatePickerView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialCalendarView<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEF_STYLE_ATTR:I

.field private static final emptyColor:Landroid/graphics/drawable/ColorDrawable;

.field private static final selectedColor:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private final onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private selectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/material/R$attr;->materialDatePickerStyle:I

    sput v0, Lcom/google/android/material/picker/MaterialDatePickerView;->DEF_STYLE_ATTR:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDatePickerView;->emptyColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDatePickerView;->selectedColor:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialDatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/picker/MaterialDatePickerView;->DEF_STYLE_ATTR:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/MaterialDatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/picker/MaterialDatePickerView;->selectedPosition:I

    new-instance v0, Lcom/google/android/material/picker/MaterialDatePickerView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialDatePickerView$1;-><init>(Lcom/google/android/material/picker/MaterialDatePickerView;)V

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialDatePickerView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/picker/MaterialDatePickerView;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/MaterialDatePickerView;->selectedPosition:I

    return p1
.end method


# virtual methods
.method protected drawSelection(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    nop

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/picker/MaterialDatePickerView;->selectedPosition:I

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/google/android/material/picker/MaterialDatePickerView;->selectedColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/material/picker/MaterialDatePickerView;->emptyColor:Landroid/graphics/drawable/ColorDrawable;

    :goto_1
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDatePickerView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerView;->getSelection()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()Ljava/util/Calendar;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/MaterialDatePickerView;->selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
