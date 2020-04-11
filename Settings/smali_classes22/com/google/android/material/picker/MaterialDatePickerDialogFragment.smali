.class public Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
.super Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.source "MaterialDatePickerDialogFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialPickerDialogFragment<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->newInstance(I)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(I)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
    .locals 2

    new-instance v0, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;

    invoke-direct {v0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->addThemeToBundle(Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/picker/MaterialDatePickerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDefaultThemeAttr()I
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->materialDatePickerDialogTheme:I

    return v0
.end method

.method protected getHeaderText()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendarView;->getSelection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_header_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_header_selected:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
