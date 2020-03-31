.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroidx/preference/ListPreference;

.field private final synthetic f$3:Landroidx/preference/Preference;

.field private final synthetic f$4:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$2:Landroidx/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$3:Landroidx/preference/Preference;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$4:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$2:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$3:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$Q4QuzL1NB7uGZ3GCFspFwSEMA8g;->f$4:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$6$NavBarTuner(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    return-void
.end method
