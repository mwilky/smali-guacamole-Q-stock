.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$nx5Q7aHowvZ9Bevy96_zeYYIxAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$nx5Q7aHowvZ9Bevy96_zeYYIxAY;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$nx5Q7aHowvZ9Bevy96_zeYYIxAY;->f$1:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$nx5Q7aHowvZ9Bevy96_zeYYIxAY;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$nx5Q7aHowvZ9Bevy96_zeYYIxAY;->f$1:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindLayout$2$NavBarTuner(Landroidx/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
