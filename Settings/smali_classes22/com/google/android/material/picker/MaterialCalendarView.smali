.class public abstract Lcom/google/android/material/picker/MaterialCalendarView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "MaterialCalendarView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/widget/LinearLayoutCompat;"
    }
.end annotation


# instance fields
.field private final monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/MaterialCalendarView;->setOrientation(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$layout;->mtrl_date_picker_calendar_days_header:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v2, Lcom/google/android/material/R$layout;->mtrl_date_picker_calendar_days:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v2, Lcom/google/android/material/R$id;->date_picker_calendar_days_header:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/picker/MaterialCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    sget v3, Lcom/google/android/material/R$id;->date_picker_calendar_days:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/picker/MaterialCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    nop

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/android/material/picker/MonthInYear;->create(II)Lcom/google/android/material/picker/MonthInYear;

    move-result-object v0

    new-instance v5, Lcom/google/android/material/picker/MonthInYearAdapter;

    invoke-direct {v5, p1, v0}, Lcom/google/android/material/picker/MonthInYearAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/MonthInYear;)V

    iput-object v5, p0, Lcom/google/android/material/picker/MaterialCalendarView;->monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;

    new-instance v5, Lcom/google/android/material/picker/DaysHeaderAdapter;

    invoke-direct {v5}, Lcom/google/android/material/picker/DaysHeaderAdapter;-><init>()V

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v5, v0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v5, p0, Lcom/google/android/material/picker/MaterialCalendarView;->monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v5, v0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v5, Lcom/google/android/material/picker/MaterialCalendarView$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/picker/MaterialCalendarView$1;-><init>(Lcom/google/android/material/picker/MaterialCalendarView;)V

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected abstract drawSelection(Landroid/widget/AdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation
.end method

.method protected final getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendarView;->monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;

    return-object v0
.end method

.method protected abstract getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method protected abstract getSelection()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
