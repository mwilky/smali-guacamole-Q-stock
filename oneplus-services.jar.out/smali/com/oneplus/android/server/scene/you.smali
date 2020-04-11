.class Lcom/oneplus/android/server/scene/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/tsu;->you(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you;->this$0:Lcom/oneplus/android/server/scene/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->this$0:Lcom/oneplus/android/server/scene/tsu;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/tsu;->zta(Lcom/oneplus/android/server/scene/tsu;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->this$0:Lcom/oneplus/android/server/scene/tsu;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/tsu;->zta(Lcom/oneplus/android/server/scene/tsu;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {}, Lcom/oneplus/android/server/scene/tsu;->access$100()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->this$0:Lcom/oneplus/android/server/scene/tsu;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/tsu;->you(Lcom/oneplus/android/server/scene/tsu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "game_mode_show_fnatic_intr"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->this$0:Lcom/oneplus/android/server/scene/tsu;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/tsu;->sis(Lcom/oneplus/android/server/scene/tsu;)Lcom/oneplus/android/server/scene/tsu$zta;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->this$0:Lcom/oneplus/android/server/scene/tsu;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/tsu;->sis(Lcom/oneplus/android/server/scene/tsu;)Lcom/oneplus/android/server/scene/tsu$zta;

    move-result-object p1

    invoke-interface {p1}, Lcom/oneplus/android/server/scene/tsu$zta;->bio()V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/scene/you;->this$0:Lcom/oneplus/android/server/scene/tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/tsu;->hide()V

    return-void
.end method
