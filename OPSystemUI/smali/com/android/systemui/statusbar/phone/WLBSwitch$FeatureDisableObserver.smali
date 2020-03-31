.class public Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;
.super Landroid/database/ContentObserver;
.source "WLBSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureDisableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$300(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V

    return-void
.end method
