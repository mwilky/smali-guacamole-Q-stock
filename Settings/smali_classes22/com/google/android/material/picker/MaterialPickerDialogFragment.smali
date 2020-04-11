.class public abstract Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialPickerDialogFragment.java"


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
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final THEME_RESOURCE_ID_KEY:Ljava/lang/String; = "themeResId"


# instance fields
.field private header:Landroid/widget/TextView;

.field private materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end field

.field private selection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private themeResId:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object v0
.end method

.method protected static addThemeToBundle(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "themeResId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static getThemeResource(Landroid/content/Context;II)I
    .locals 3
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    if-eqz p2, :cond_0

    return p2

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private updateHeader()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected abstract createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end method

.method protected abstract getDefaultThemeAttr()I
.end method

.method protected abstract getHeaderText()Ljava/lang/String;
.end method

.method public final getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object v0
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    nop

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getDefaultThemeAttr()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "themeResId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getThemeResource(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    new-instance v1, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialCalendarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$id;->date_picker_header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/R$id;->date_picker_calendar_view_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget v2, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader()V

    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final setSimpleDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method
