.class public Lcom/google/android/setupdesign/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;,
        Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

.field private everScrolledToBottom:Z

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requiringScrollToBottom:Z


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 2
    .param p1    # Lcom/google/android/setupcompat/internal/TemplateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method private postScrollStateChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getOnRequireScrollStateChangedListener()Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method public isScrollingRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    return v0
.end method

.method notifyScrollabilityChange(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public requireScroll()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    invoke-interface {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;->startListening()V

    return-void
.end method

.method public requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/setupcompat/template/FooterButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p4}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/setupdesign/template/RequireScrollMixin$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$3;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/Button;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    return-void
.end method

.method public requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Lcom/google/android/setupcompat/template/FooterButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    return-void
.end method

.method public requireScrollWithNavigationBar(Lcom/google/android/setupdesign/view/NavigationBar;)V
    .locals 2
    .param p1    # Lcom/google/android/setupdesign/view/NavigationBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$2;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupdesign/view/NavigationBar;)V

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    invoke-virtual {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    return-void
.end method

.method public setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V
    .locals 0
    .param p1    # Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-void
.end method

.method public setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V
    .locals 0
    .param p1    # Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-void
.end method
