.class public final Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideLeakReportEmailFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;->module:Lcom/android/systemui/SystemUIFactory;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;-><init>(Lcom/android/systemui/SystemUIFactory;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/SystemUIFactory;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;->proxyProvideLeakReportEmail(Lcom/android/systemui/SystemUIFactory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideLeakReportEmail(Lcom/android/systemui/SystemUIFactory;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory;->provideLeakReportEmail()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;->module:Lcom/android/systemui/SystemUIFactory;

    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;->provideInstance(Lcom/android/systemui/SystemUIFactory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
