.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5$1;
.super Ljava/lang/Object;
.source "OpStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;->handleValueChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5$1;->this$1:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpStatusBar"

    const-string/jumbo v1, "theme setting changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5$1;->this$1:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$600(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    return-void
.end method
