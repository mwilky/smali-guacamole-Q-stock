.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$RQUqCpCXtFwKbIxFJ1AuU4K69W4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$RQUqCpCXtFwKbIxFJ1AuU4K69W4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$RQUqCpCXtFwKbIxFJ1AuU4K69W4;->f$1:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$RQUqCpCXtFwKbIxFJ1AuU4K69W4;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$RQUqCpCXtFwKbIxFJ1AuU4K69W4;->f$1:Landroidx/preference/ListPreference;

    invoke-static {v0, p0}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindLayout$1(Ljava/lang/String;Landroidx/preference/ListPreference;)V

    return-void
.end method
