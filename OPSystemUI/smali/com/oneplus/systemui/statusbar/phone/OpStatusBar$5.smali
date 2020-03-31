.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;
.super Lcom/oneplus/util/SystemSetting;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/util/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$700(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5$1;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
