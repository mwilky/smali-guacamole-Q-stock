.class Lcom/oneplus/settings/OPFontStyleActivity$1;
.super Ljava/lang/Object;
.source "OPFontStyleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPFontStyleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity$1;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$1;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$200(Lcom/oneplus/settings/OPFontStyleActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$400(Lcom/oneplus/settings/OPFontStyleActivity;I)V

    return-void
.end method
