.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyConstants$4opg-Q5IrqXO7Mn9_Fp2x2nMZNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyConstants$4opg-Q5IrqXO7Mn9_Fp2x2nMZNY;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyConstants$4opg-Q5IrqXO7Mn9_Fp2x2nMZNY;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->lambda$registerDeviceConfigListener$0$SmartReplyConstants(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
