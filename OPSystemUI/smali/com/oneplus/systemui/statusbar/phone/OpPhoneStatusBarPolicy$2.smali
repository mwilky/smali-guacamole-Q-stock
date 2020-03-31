.class Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;
.super Ljava/lang/Object;
.source "OpPhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set BT Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPhoneStatusBarPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$700(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$600(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$700(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method
