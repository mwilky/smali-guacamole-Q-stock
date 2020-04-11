.class public Lcom/google/android/material/picker/MonthInYear;
.super Ljava/lang/Object;
.source "MonthInYear.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final daysInMonth:I

.field public final daysInWeek:I

.field public final month:I

.field private final monthInYear:Ljava/util/Calendar;

.field public final year:I


# direct methods
.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MonthInYear;->month:I

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MonthInYear;->year:I

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    return-void
.end method

.method public static create(II)Lcom/google/android/material/picker/MonthInYear;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Lcom/google/android/material/picker/MonthInYear;

    invoke-direct {v1, v0}, Lcom/google/android/material/picker/MonthInYear;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method


# virtual methods
.method public daysFromStartOfWeekToFirstOfMonth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v1, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/material/picker/MonthInYear;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/picker/MonthInYear;

    iget v3, p0, Lcom/google/android/material/picker/MonthInYear;->month:I

    iget v4, v1, Lcom/google/android/material/picker/MonthInYear;->month:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/picker/MonthInYear;->year:I

    iget v4, v1, Lcom/google/android/material/picker/MonthInYear;->year:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDay(I)Ljava/util/Calendar;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/material/picker/MonthInYear;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/picker/MonthInYear;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
