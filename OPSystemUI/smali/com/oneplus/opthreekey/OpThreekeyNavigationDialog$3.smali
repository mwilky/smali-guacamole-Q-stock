.class Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$3;
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

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$3;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$3;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$500(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$600(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$3;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$202(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;I)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$3;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    const-string p1, "op_threekey_navigation_completed"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$700(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Ljava/lang/String;I)V

    return-void
.end method
