.class public final synthetic Lcom/android/settings/core/instrumentation/-$$Lambda$SettingsIntelligenceLogWriter$VFXexcil80tWUJXN7_8-eUYD3K4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

.field private final synthetic f$1:Lcom/android/settings/intelligence/LogProto$SettingsLog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/core/instrumentation/-$$Lambda$SettingsIntelligenceLogWriter$VFXexcil80tWUJXN7_8-eUYD3K4;->f$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    iput-object p2, p0, Lcom/android/settings/core/instrumentation/-$$Lambda$SettingsIntelligenceLogWriter$VFXexcil80tWUJXN7_8-eUYD3K4;->f$1:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/-$$Lambda$SettingsIntelligenceLogWriter$VFXexcil80tWUJXN7_8-eUYD3K4;->f$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    iget-object v1, p0, Lcom/android/settings/core/instrumentation/-$$Lambda$SettingsIntelligenceLogWriter$VFXexcil80tWUJXN7_8-eUYD3K4;->f$1:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0, v1}, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;->lambda$action$0$SettingsIntelligenceLogWriter(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-void
.end method
