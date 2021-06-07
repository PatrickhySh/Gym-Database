package ca.ubc.cs304.model;

import java.util.Objects;

public class TrainingSession {
    private int date;
    private int uid;
    private int tid;

    public TrainingSession(int d, int uid, int tid) {
        date = d;
        this.uid = uid;
        this.tid = tid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TrainingSession that = (TrainingSession) o;
        return date == that.date && uid == that.uid && tid == that.tid;
    }

    @Override
    public int hashCode() {
        return Objects.hash(date, uid, tid);
    }
}
