.class public Lcom/google/android/setupdesign/template/NavigationBarMixin;
.super Ljava/lang/Object;
.source "NavigationBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    return-void
.end method


# virtual methods
.method public getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_navigation_bar:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/setupdesign/view/NavigationBar;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/setupdesign/view/NavigationBar;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getNextButtonText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;->getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setNavigationBarListener(Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;->getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/NavigationBar;->setNavigationBarListener(Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;)V

    return-void
.end method

.method public setNextButtonText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;->getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setNextButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;->getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
