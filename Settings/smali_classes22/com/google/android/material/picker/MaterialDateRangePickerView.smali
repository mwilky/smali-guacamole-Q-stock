.class public Lcom/google/android/material/picker/MaterialDateRangePickerView;
.super Lcom/google/android/material/picker/MaterialCalendarView;
.source "MaterialDateRangePickerView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialCalendarView<",
        "Landroid/util/Pair<",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEF_STYLE_ATTR:I

.field private static final emptyColor:Landroid/graphics/drawable/ColorDrawable;

.field private static final endColor:Landroid/graphics/drawable/ColorDrawable;

.field private static final rangeColor:Landroid/graphics/drawable/ColorDrawable;

.field private static final startColor:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private final onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private selectedEndPosition:I

.field private selectedStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/material/R$attr;->materialDateRangePickerStyle:I

    sput v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->DEF_STYLE_ATTR:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->emptyColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->startColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff0100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->endColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->rangeColor:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->DEF_STYLE_ATTR:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    iput v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    new-instance v0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;-><init>(Lcom/google/android/material/picker/MaterialDateRangePickerView;)V

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    return p1
.end method


# virtual methods
.method protected drawSelection(Landroid/widget/AdapterView;)V
    .locals 4
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

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->emptyColor:Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    if-ne v0, v2, :cond_0

    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->startColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    if-ne v0, v3, :cond_1

    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->endColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_1

    :cond_1
    if-le v0, v2, :cond_2

    if-ge v0, v3, :cond_2

    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->rangeColor:Landroid/graphics/drawable/ColorDrawable;

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getEnd()Ljava/util/Calendar;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method protected getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getSelection()Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getStart()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getEnd()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getStart()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getEnd()Ljava/util/Calendar;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getSelection()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Ljava/util/Calendar;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
