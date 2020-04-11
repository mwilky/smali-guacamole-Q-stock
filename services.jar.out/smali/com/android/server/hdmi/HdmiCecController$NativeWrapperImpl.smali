.class final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NativeWrapperImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAddLogicalAddress(JI)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->access$1100(JI)I

    move-result v0

    return v0
.end method

.method public nativeClearLogicalAddress(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1200(J)V

    return-void
.end method

.method public nativeEnableAudioReturnChannel(JIZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->access$1900(JIZ)V

    return-void
.end method

.method public nativeGetPhysicalAddress(J)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1300(J)I

    move-result v0

    return v0
.end method

.method public nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1600(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetVendorId(J)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1500(J)I

    move-result v0

    return v0
.end method

.method public nativeGetVersion(J)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$1400(J)I

    move-result v0

    return v0
.end method

.method public nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$900(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeIsConnected(JI)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->access$2000(JI)Z

    move-result v0

    return v0
.end method

.method public nativeSendCecCommand(JII[B)I
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/hdmi/HdmiCecController;->access$1000(JII[B)I

    move-result v0

    return v0
.end method

.method public nativeSetLanguage(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->access$1800(JLjava/lang/String;)V

    return-void
.end method

.method public nativeSetOption(JIZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->access$1700(JIZ)V

    return-void
.end method
