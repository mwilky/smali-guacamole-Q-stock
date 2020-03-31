.class final Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;
.super Landroid/os/Handler;
.source "NavigationBarGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$1700(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    :goto_0
    return-void
.end method
