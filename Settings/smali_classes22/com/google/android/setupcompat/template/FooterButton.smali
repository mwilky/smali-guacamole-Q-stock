.class public final Lcom/google/android/setupcompat/template/FooterButton;
.super Ljava/lang/Object;
.source "FooterButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/template/FooterButton$Builder;,
        Lcom/google/android/setupcompat/template/FooterButton$ButtonType;,
        Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
    }
.end annotation


# static fields
.field private static final KEY_BUTTON_ON_CLICK_COUNT:Ljava/lang/String; = "_onClickCount"

.field private static final KEY_BUTTON_TEXT:Ljava/lang/String; = "_text"

.field private static final KEY_BUTTON_TYPE:Ljava/lang/String; = "_type"

.field private static final MAX_BUTTON_TYPE:I = 0x8


# instance fields
.field private buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

.field private final buttonType:I

.field private clickCount:I

.field private enabled:Z

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/CharSequence;

.field private theme:I

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    sget v2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_sucButtonType:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonTypeValue(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    sget v2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_android_theme:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V
    .locals 1
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    iput p4, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILcom/google/android/setupcompat/template/FooterButton$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-void
.end method

.method private getButtonTypeName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "OTHER"

    return-object v0

    :pswitch_0
    const-string v0, "STOP"

    return-object v0

    :pswitch_1
    const-string v0, "SKIP"

    return-object v0

    :pswitch_2
    const-string v0, "OPT_IN"

    return-object v0

    :pswitch_3
    const-string v0, "NEXT"

    return-object v0

    :pswitch_4
    const-string v0, "DONE"

    return-object v0

    :pswitch_5
    const-string v0, "CLEAR"

    return-object v0

    :pswitch_6
    const-string v0, "CANCEL"

    return-object v0

    :pswitch_7
    const-string v0, "ADD_ANOTHER"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getButtonTypeValue(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a ButtonType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getButtonType()I
    .locals 1

    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    return v0
.end method

.method public getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_onClickCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getOnClickListenerWhenDisabled()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTheme()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onEnabledChanged(Z)V

    :cond_0
    return-void
.end method

.method setOnButtonEventListener(Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;)V
    .locals 2
    .param p1    # Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Event listener of footer button may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnClickListenerWhenDisabled(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setText(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onTextChanged(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method
