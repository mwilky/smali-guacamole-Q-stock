.class Lcom/oneplus/support/core/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/view/ViewCompat$1;->val$listener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/support/core/view/ViewCompat$1;->val$listener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    invoke-interface {p0, p1, p2}, Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->unwrap(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    return-object p0
.end method
