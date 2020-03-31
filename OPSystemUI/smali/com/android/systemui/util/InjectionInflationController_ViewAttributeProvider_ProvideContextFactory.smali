.class public final Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;
.super Ljava/lang/Object;
.source "InjectionInflationController_ViewAttributeProvider_ProvideContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method public static proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->provideContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method
