.class public final synthetic Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;->f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    iput-object p2, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;->f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    iget-object p0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->lambda$new$1$FalsingManagerProxy(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
