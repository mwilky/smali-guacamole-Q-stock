.class public final Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideAllowNotificationLongPressFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->module:Lcom/android/systemui/SystemUIFactory;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;-><init>(Lcom/android/systemui/SystemUIFactory;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/SystemUIFactory;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->proxyProvideAllowNotificationLongPress(Lcom/android/systemui/SystemUIFactory;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAllowNotificationLongPress(Lcom/android/systemui/SystemUIFactory;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory;->provideAllowNotificationLongPress()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->module:Lcom/android/systemui/SystemUIFactory;

    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->provideInstance(Lcom/android/systemui/SystemUIFactory;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
