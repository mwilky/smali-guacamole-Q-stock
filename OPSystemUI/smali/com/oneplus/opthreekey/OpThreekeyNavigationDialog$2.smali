.class Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$2;
.super Ljava/lang/Object;
.source "OpThreekeyNavigationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$2;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClickNextButton"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$2;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$400(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    return-void
.end method
