.class Lcom/oneplus/settings/OPQuitConfirmFragment$2;
.super Ljava/lang/Object;
.source "OPQuitConfirmFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPQuitConfirmFragment;->showWarningDialog(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$2;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$2;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    iget-object v0, v0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$2;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    iget-object v0, v0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

    invoke-interface {v0}, Lcom/oneplus/settings/OnBackPressListener;->onConfirmPressed()V

    :cond_0
    return-void
.end method
