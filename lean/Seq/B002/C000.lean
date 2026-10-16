import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B001.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A008860.P18332775515594479900

`A008859(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008860.P18332775515594479900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008859 (n - 1) + a (n - 1)

end

end A008860.P18332775515594479900

noncomputable section

/-- A008860: a(n) = Sum_{k=0..7} binomial(n,k).

Offset 0, canonical program `A008860.P18332775515594479900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008860 (n : ℕ) : ℤ :=
  A008860.P18332775515594479900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025831.P9343871419199393657

`A025798(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025831.P9343871419199393657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025798 n - a (n - 2)

end

end A025831.P9343871419199393657

noncomputable section

/-- A025831: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)).

Offset 0, canonical program `A025831.P9343871419199393657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025831 (n : ℕ) : ℤ :=
  A025831.P9343871419199393657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025850.P8628792431840119563

`A025769(n)+A025798(n)-A025765(n)`
-/

namespace A025850.P8628792431840119563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025769 n + (A025798 n - A025765 n)

end

end A025850.P8628792431840119563

noncomputable section

/-- A025850: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025850.P8628792431840119563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025850 (n : ℕ) : ℤ :=
  A025850.P8628792431840119563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025855.P15285033373270992385

`A025771(n)+A025798(n)-A025766(n)`
-/

namespace A025855.P15285033373270992385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025771 n + (A025798 n - A025766 n)

end

end A025855.P15285033373270992385

noncomputable section

/-- A025855: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025855.P15285033373270992385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025855 (n : ℕ) : ℤ :=
  A025855.P15285033373270992385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025902.P4948105290104538966

`A025850(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025902.P4948105290104538966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025850 n - a (n - 3)

end

end A025902.P4948105290104538966

noncomputable section

/-- A025902: Expansion of 1/((1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025902.P4948105290104538966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025902 (n : ℕ) : ℤ :=
  A025902.P4948105290104538966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025905.P16596384045298763806

`A025855(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025905.P16596384045298763806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025855 n - a (n - 3)

end

end A025905.P16596384045298763806

noncomputable section

/-- A025905: Expansion of 1/((1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025905.P16596384045298763806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025905 (n : ℕ) : ℤ :=
  A025905.P16596384045298763806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026029.P1005494940722334040

`A026012(n)+A000588(n)`
-/

namespace A026029.P1005494940722334040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + A000588 n

end

end A026029.P1005494940722334040

noncomputable section

/-- A026029: Number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 3. Also T(2n,n), where T is defined in A026022.

Offset 0, canonical program `A026029.P1005494940722334040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026029 (n : ℕ) : ℤ :=
  A026029.P1005494940722334040.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029041.P7111796206172511067

`A025779(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029041.P7111796206172511067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025779 n + a (n - 3)

end

end A029041.P7111796206172511067

noncomputable section

/-- A029041: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A029041.P7111796206172511067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029041 (n : ℕ) : ℤ :=
  A029041.P7111796206172511067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029059.P4126972357667091520

`∑[A025855(n)]`
-/

namespace A029059.P4126972357667091520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029059.P4126972357667091520

noncomputable section

/-- A029059: Expansion of 1/((1-x)*(1-x^3)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029059.P4126972357667091520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029059 (n : ℕ) : ℤ :=
  A029059.P4126972357667091520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029087.P3165810773826742856

`A029041(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029087.P3165810773826742856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029041 n - a (n - 3)

end

end A029087.P3165810773826742856

noncomputable section

/-- A029087: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029087.P3165810773826742856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029087 (n : ℕ) : ℤ :=
  A029087.P3165810773826742856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029091.P4227717721528143562

`∑[A025882(n)]`
-/

namespace A029091.P4227717721528143562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029091.P4227717721528143562

noncomputable section

/-- A029091: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029091.P4227717721528143562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029091 (n : ℕ) : ℤ :=
  A029091.P4227717721528143562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029111.P18190003655687312260

`∑[A025902(n)]`
-/

namespace A029111.P18190003655687312260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029111.P18190003655687312260

noncomputable section

/-- A029111: Expansion of 1/((1-x)(1-x^6)(1-x^8)(1-x^9)).

Offset 0, canonical program `A029111.P18190003655687312260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029111 (n : ℕ) : ℤ :=
  A029111.P18190003655687312260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029114.P3228547095557846636

`∑[A025905(n)]`
-/

namespace A029114.P3228547095557846636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029114.P3228547095557846636

noncomputable section

/-- A029114: Expansion of 1/((1-x)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029114.P3228547095557846636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029114 (n : ℕ) : ℤ :=
  A029114.P3228547095557846636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029154.P15883492566712472573

`A029048(n)-a(n-1)` with `a(0)=1`
-/

namespace A029154.P15883492566712472573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029048 n - a (n - 1)

end

end A029154.P15883492566712472573

noncomputable section

/-- A029154: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A029154.P15883492566712472573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029154 (n : ℕ) : ℤ :=
  A029154.P15883492566712472573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029166.P10852139919608764401

`A029059(n)-a(n-1)` with `a(0)=1`
-/

namespace A029166.P10852139919608764401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029059 n - a (n - 1)

end

end A029166.P10852139919608764401

noncomputable section

/-- A029166: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029166.P10852139919608764401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029166 (n : ℕ) : ℤ :=
  A029166.P10852139919608764401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029176.P1107500298987403073

`A029068(n)-a(n-1)` with `a(0)=1`
-/

namespace A029176.P1107500298987403073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029068 n - a (n - 1)

end

end A029176.P1107500298987403073

noncomputable section

/-- A029176: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^11)).

Offset 0, canonical program `A029176.P1107500298987403073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029176 (n : ℕ) : ℤ :=
  A029176.P1107500298987403073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029195.P11890290906593188320

`A029087(n)-a(n-1)` with `a(0)=1`
-/

namespace A029195.P11890290906593188320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029087 n - a (n - 1)

end

end A029195.P11890290906593188320

noncomputable section

/-- A029195: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A029195.P11890290906593188320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029195 (n : ℕ) : ℤ :=
  A029195.P11890290906593188320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029199.P326149095581380570

`A029091(n)-a(n-1)` with `a(0)=1`
-/

namespace A029199.P326149095581380570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029091 n - a (n - 1)

end

end A029199.P326149095581380570

noncomputable section

/-- A029199: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A029199.P326149095581380570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029199 (n : ℕ) : ℤ :=
  A029199.P326149095581380570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029209.P9661014665530843499

`A029166(n)+A029195(n)-A029154(n)`
-/

namespace A029209.P9661014665530843499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 n + (A029195 n - A029154 n)

end

end A029209.P9661014665530843499

noncomputable section

/-- A029209: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029209.P9661014665530843499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029209 (n : ℕ) : ℤ :=
  A029209.P9661014665530843499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029219.P7299716398362055067

`A029111(n)-a(n-1)` with `a(0)=1`
-/

namespace A029219.P7299716398362055067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029111 n - a (n - 1)

end

end A029219.P7299716398362055067

noncomputable section

/-- A029219: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029219.P7299716398362055067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029219 (n : ℕ) : ℤ :=
  A029219.P7299716398362055067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029222.P6488115771881220225

`A029114(n)-a(n-1)` with `a(0)=1`
-/

namespace A029222.P6488115771881220225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029114 n - a (n - 1)

end

end A029222.P6488115771881220225

noncomputable section

/-- A029222: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029222.P6488115771881220225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029222 (n : ℕ) : ℤ :=
  A029222.P6488115771881220225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029342.P10735621688491322017

`A029209(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029342.P10735621688491322017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029209 n - a (n - 2)

end

end A029342.P10735621688491322017

noncomputable section

/-- A029342: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029342.P10735621688491322017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029342 (n : ℕ) : ℤ :=
  A029342.P10735621688491322017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029352.P1393725205556291625

`A029219(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029352.P1393725205556291625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029219 n - a (n - 2)

end

end A029352.P1393725205556291625

noncomputable section

/-- A029352: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029352.P1393725205556291625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029352 (n : ℕ) : ℤ :=
  A029352.P1393725205556291625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029355.P10567033194552355608

`A029222(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029355.P10567033194552355608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029222 n - a (n - 2)

end

end A029355.P10567033194552355608

noncomputable section

/-- A029355: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029355.P10567033194552355608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029355 (n : ℕ) : ℤ :=
  A029355.P10567033194552355608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029424.P3660127937913149376

`A029355(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A029424.P3660127937913149376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A029355 n - a (n - 4)

end

end A029424.P3660127937913149376

noncomputable section

/-- A029424: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029424.P3660127937913149376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029424 (n : ℕ) : ℤ :=
  A029424.P3660127937913149376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032093.P17812668640305024204

`∑[A032092(n+7)]`
-/

namespace A032093.P17812668640305024204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032093.P17812668640305024204

noncomputable section

/-- A032093: Number of reversible strings with n-1 beads of 2 colors. 6 beads are black. Strings are not palindromic.

Offset 8, canonical program `A032093.P17812668640305024204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032093 (n : ℕ) : ℤ :=
  A032093.P17812668640305024204.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033434.P16108752292041278544

`Δ[A026012(n)]`
-/

namespace A033434.P16108752292041278544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P16108752292041278544

noncomputable section

/-- A033434: Third differences of Catalan numbers A000108.

Offset 0, canonical program `A033434.P16108752292041278544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A033434 (n : ℕ) : ℤ :=
  A033434.P16108752292041278544.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A033434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034738.P10286811658297623229

`∑{d}[n+1, A007427(#)*A034737((n+1)/#)]`
-/

namespace A034738.P10286811658297623229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034737 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P10286811658297623229

noncomputable section

/-- A034738: Dirichlet convolution of b_n = 2^(n-1) with phi(n).

Offset 1, canonical program `A034738.P10286811658297623229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034738 (n : ℕ) : ℤ :=
  A034738.P10286811658297623229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035039.P702556951674997886

`A000079(n)-A008859(n)`
-/

namespace A035039.P702556951674997886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A008859 n

end

end A035039.P702556951674997886

noncomputable section

/-- A035039: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,6).

Offset 0, canonical program `A035039.P702556951674997886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035039 (n : ℕ) : ℤ :=
  A035039.P702556951674997886.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046645.P11243749111570164507

`log2(A046644(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046645.P11243749111570164507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046644 (n + 1) : ℝ)

end

end A046645.P11243749111570164507

noncomputable section

/-- A046645: a(n) = log_2(A046644(n)); also the 2-adic valuation of A046644(n).

Offset 1, canonical program `A046645.P11243749111570164507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046645 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046645.P11243749111570164507.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046930.P1162450832993365803

`Δ[A011974(n+1)]-2`
-/

namespace A046930.P1162450832993365803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A046930.P1162450832993365803

noncomputable section

/-- A046930: Size of sea of composite numbers surrounding n-th prime.

Offset 1, canonical program `A046930.P1162450832993365803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046930 (n : ℕ) : ℤ :=
  A046930.P1162450832993365803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054541.P347795157194570387

`A046930(n)+2-a(n-1)` with `a(0)=2`
-/

namespace A054541.P347795157194570387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A046930 n + (2 - a (n - 1))

end

end A054541.P347795157194570387

noncomputable section

/-- A054541: Sum of first n terms equals n-th prime.

Offset 1, canonical program `A054541.P347795157194570387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054541 (n : ℕ) : ℤ :=
  A054541.P347795157194570387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061554.P3186504673658884258

`C(A003056(n), A004526(A025581(n)))`
-/

namespace A061554.P3186504673658884258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004526 (A025581 n).toNat).toNat

end

end A061554.P3186504673658884258

noncomputable section

/-- A061554: Square table read by antidiagonals: a(n,k) = binomial(n+k, floor(k/2)).

Offset 0, canonical program `A061554.P3186504673658884258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061554 (n : ℕ) : ℤ :=
  (A061554.P3186504673658884258.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064058.P300498006429403485

`∑[A064057(n)-C(n+3, 3)]`
-/

namespace A064058.P300498006429403485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n - (Nat.choose (n + 3) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064058.P300498006429403485

noncomputable section

/-- A064058: Ninth column of quintinomial coefficients.

Offset 0, canonical program `A064058.P300498006429403485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064058 (n : ℕ) : ℤ :=
  A064058.P300498006429403485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064279.P14159687515513872245

`∑{d}[n+1, A001065(#)*A063445((n+1)/#)]`
-/

namespace A064279.P14159687515513872245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P14159687515513872245

noncomputable section

/-- A064279: Number of ordered pairs a,b of elements in the cyclic group C_n such that the subgroup generated by the pair a,b is a proper subgroup of C_n.

Offset 1, canonical program `A064279.P14159687515513872245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064279 (n : ℕ) : ℤ :=
  A064279.P14159687515513872245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064692.P5168258694329805100

`∑{digits}[n, A029352(#)]`
-/

namespace A064692.P5168258694329805100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029352 x).sum

end

end A064692.P5168258694329805100

noncomputable section

/-- A064692: Total number of holes in decimal expansion of the number n, assuming 4 has 1 hole.

Offset 0, canonical program `A064692.P5168258694329805100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064692 (n : ℕ) : ℤ :=
  A064692.P5168258694329805100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064693.P14262218597709513042

`A064692(n)+1`
-/

namespace A064693.P14262218597709513042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n + 1

end

end A064693.P14262218597709513042

noncomputable section

/-- A064693: Number of connected components remaining when decimal expansion of the number n is cut from a piece of paper.

Offset 0, canonical program `A064693.P14262218597709513042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064693 (n : ℕ) : ℤ :=
  A064693.P14262218597709513042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068552.P16266079210275203260

`n*A028329(n)-4^n`
-/

namespace A068552.P16266079210275203260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028329 n - (4 ^ n : ℤ)

end

end A068552.P16266079210275203260

noncomputable section

/-- A068552: 2n*binomial(2n,n) - 4^n.

Offset 0, canonical program `A068552.P16266079210275203260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A068552 (n : ℕ) : ℤ :=
  A068552.P16266079210275203260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A068552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071740.P5522841597563350787

`A026029(n)+A000245(n)`
-/

namespace A071740.P5522841597563350787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n + A000245 n

end

end A071740.P5522841597563350787

noncomputable section

/-- A071740: Expansion of (1+x^3*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071740.P5522841597563350787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071740 (n : ℕ) : ℤ :=
  A071740.P5522841597563350787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071741.P9703723317413013413

`Δ[A026029(n)]`
-/

namespace A071741.P9703723317413013413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071741.P9703723317413013413

noncomputable section

/-- A071741: Expansion of (1+x^3*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071741.P9703723317413013413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071741 (n : ℕ) : ℤ :=
  A071741.P9703723317413013413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072192.P15559087047844524175

`lt[A023595(n+1), 2]+1`
-/

namespace A072192.P15559087047844524175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023595 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072192.P15559087047844524175

noncomputable section

/-- A072192: Indices of Sophie Germain primes: p and 2p+1 are primes.

Offset 1, canonical program `A072192.P15559087047844524175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A072192 (n : ℕ) : ℤ :=
  (A072192.P15559087047844524175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A072192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082542.P3253226966033198615

`A000040(n+1)+A070750(n+1)`
-/

namespace A082542.P3253226966033198615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A070750 (n + 1)

end

end A082542.P3253226966033198615

noncomputable section

/-- A082542: a(n) = prime(n) + 2 - (prime(n) mod 4).

Offset 1, canonical program `A082542.P3253226966033198615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082542 (n : ℕ) : ℤ :=
  A082542.P3253226966033198615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092249.P8919152455619656948

`A091369(n+1)-∑[n]`
-/

namespace A092249.P8919152455619656948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092249.P8919152455619656948

noncomputable section

/-- A092249: Positions of the integers in the standard diagonal enumeration of the rationals (with the integers in the first column and diagonals moving up to the right).

Offset 1, canonical program `A092249.P8919152455619656948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249 (n : ℕ) : ℤ :=
  A092249.P8919152455619656948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120009.P17761584806816662286

`A005807(n)-A026012(n)`
-/

namespace A120009.P17761584806816662286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A026012 n

end

end A120009.P17761584806816662286

noncomputable section

/-- A120009: G.f.: A(x) = (x-x^2) o x/(1-x) o (1-sqrt(1-4*x))/2, a composition of functions involving the Catalan function and its inverse.

Offset 1, canonical program `A120009.P17761584806816662286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A120009 (n : ℕ) : ℤ :=
  A120009.P17761584806816662286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A120009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120108.P13431050358684570806

`A003418(A002024(n+1))/a(A112367(n))` with `a(0)=1`
-/

namespace A120108.P13431050358684570806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A003418 (A002024 (n + 1)).toNat : ℚ) / a (A112367 n).toNat

end

end A120108.P13431050358684570806

noncomputable section

/-- A120108: Number triangle T(n,k) = lcm(1,..,n+1)/lcm(1,..,k+1).

Offset 0, canonical program `A120108.P13431050358684570806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120108.P13431050358684570806.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130321.P6740187654358347306

`A000079(A025581(n))`
-/

namespace A130321.P6740187654358347306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat

end

end A130321.P6740187654358347306

noncomputable section

/-- A130321: Triangle, (2^0, 2^1, 2^2, ...) in every column.

Offset 0, canonical program `A130321.P6740187654358347306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130321 (n : ℕ) : ℤ :=
  A130321.P6740187654358347306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144328.P12344292576665353938

`A128227(abs(1-n))`
-/

namespace A144328.P12344292576665353938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 |1 - (n : ℤ)|.toNat

end

end A144328.P12344292576665353938

noncomputable section

/-- A144328: A002260 preceded by a column of 1's: a (1, 1, 2, 3, 4, 5, ...) crescendo triangle by rows.

Offset 1, canonical program `A144328.P12344292576665353938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144328 (n : ℕ) : ℤ :=
  A144328.P12344292576665353938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145342.P11180459690303212781

`(A145341(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145342.P11180459690303212781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145341 (n + 1) + 1 : ℚ) / 2

end

end A145342.P11180459690303212781

noncomputable section

/-- A145342: a(n) = (A145341(n) + 1)/2.

Offset 1, canonical program `A145342.P11180459690303212781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145342.P11180459690303212781.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155587.P7484894017318581983

`∑[A120588(n)]`
-/

namespace A155587.P7484894017318581983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P7484894017318581983

noncomputable section

/-- A155587: Expansion of (1 + x*c(x))/(1 - x), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A155587.P7484894017318581983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A155587 (n : ℕ) : ℤ :=
  A155587.P7484894017318581983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A155587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162177.P8365891136831643592

`A014689(abs(1-n)+1)-1`
-/

namespace A162177.P8365891136831643592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A162177.P8365891136831643592

noncomputable section

/-- A162177: a(n) is the number of composite numbers that are smaller than A008578(n).

Offset 1, canonical program `A162177.P8365891136831643592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162177 (n : ℕ) : ℤ :=
  A162177.P8365891136831643592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165817.P16725315346370292687

`A005809(n)-A025174(n)`
-/

namespace A165817.P16725315346370292687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A025174 n

end

end A165817.P16725315346370292687

noncomputable section

/-- A165817: Number of compositions (= ordered integer partitions) of n into 2n parts.

Offset 0, canonical program `A165817.P16725315346370292687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A165817 (n : ℕ) : ℤ :=
  A165817.P16725315346370292687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A165817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166597.P14552351031517696526

`A054541(A095117(n)+1-n)`
-/

namespace A166597.P14552351031517696526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A095117 n + (1 - (n : ℤ))).toNat

end

end A166597.P14552351031517696526

noncomputable section

/-- A166597: Let p = largest prime <= n, with p(0)=p(1)=0, and let q = smallest prime > n; then a(n) = q-p.

Offset 0, canonical program `A166597.P14552351031517696526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166597 (n : ℕ) : ℤ :=
  A166597.P14552351031517696526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172060.P5248690933070459008

`A002457(n)-A000302(n)`
-/

namespace A172060.P5248690933070459008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A000302 n

end

end A172060.P5248690933070459008

noncomputable section

/-- A172060: The number of returns to the origin in all possible one-dimensional walks of length 2n.

Offset 0, canonical program `A172060.P5248690933070459008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172060 (n : ℕ) : ℤ :=
  A172060.P5248690933070459008.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174478.P5491345619256222170

`∑{d}[n+1, A034738(#)*A074400((n+1)/#)]`
-/

namespace A174478.P5491345619256222170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A074400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174478.P5491345619256222170

noncomputable section

/-- A174478: a(n) = Sum_{d|n} d*2^(n/d)*tau(d).

Offset 1, canonical program `A174478.P5491345619256222170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A174478 (n : ℕ) : ℤ :=
  A174478.P5491345619256222170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A174478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178225.P3234126825915487550

`C(2, A175919(n))`
-/

namespace A178225.P3234126825915487550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A175919 n).toNat

end

end A178225.P3234126825915487550

noncomputable section

/-- A178225: Characteristic function of A006995 (binary palindromes).

Offset 0, canonical program `A178225.P3234126825915487550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225 (n : ℕ) : ℤ :=
  (A178225.P3234126825915487550.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181133.P14438950261900882183

`∑[A023531(n)+1]`
-/

namespace A181133.P14438950261900882183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P14438950261900882183

noncomputable section

/-- A181133: a(n) = n + A003056(n).

Offset 1, canonical program `A181133.P14438950261900882183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181133 (n : ℕ) : ℤ :=
  A181133.P14438950261900882183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182200.P2957371844516527360

`A166010(n+1)+1`
-/

namespace A182200.P2957371844516527360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 1

end

end A182200.P2957371844516527360

noncomputable section

/-- A182200: a(n) = prime(n)^2-3.

Offset 1, canonical program `A182200.P2957371844516527360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182200 (n : ℕ) : ℤ :=
  A182200.P2957371844516527360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182986.P2625431067462217415

`A054541(n)+a(n-1)` with `a(0)=0`
-/

namespace A182986.P2625431067462217415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054541 n + a (n - 1)

end

end A182986.P2625431067462217415

noncomputable section

/-- A182986: Zero together with the prime numbers (A000040).

Offset 1, canonical program `A182986.P2625431067462217415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182986 (n : ℕ) : ℤ :=
  A182986.P2625431067462217415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189640.P14910625713861930897

`A080846(a(a(n-1))+n)` with `a(0)=0`
-/

namespace A189640.P14910625713861930897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080846 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A189640.P14910625713861930897

noncomputable section

/-- A189640: Fixed point of the morphism 0->001, 1->101.

Offset 1, canonical program `A189640.P14910625713861930897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640 (n : ℕ) : ℤ :=
  A189640.P14910625713861930897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206915.P6576328931929585577

`∑[A178225(n)]`
-/

namespace A206915.P6576328931929585577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P6576328931929585577

noncomputable section

/-- A206915: The index (in A006995) of the greatest binary palindrome <= n; also the 'lower inverse' of A006995.

Offset 0, canonical program `A206915.P6576328931929585577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206915 (n : ℕ) : ℤ :=
  A206915.P6576328931929585577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241524.P1056954697449867720

`A002697(n)+A002457(n)`
-/

namespace A241524.P1056954697449867720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A002457 n

end

end A241524.P1056954697449867720

noncomputable section

/-- A241524: a(n) = 4^n*(n/4 + binomial(n+1/2, 1/2)).

Offset 0, canonical program `A241524.P1056954697449867720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524 (n : ℕ) : ℤ :=
  A241524.P1056954697449867720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248170.P13308943850553376554

`sqrt(A246934(n+1))`
-/

namespace A248170.P13308943850553376554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246934 (n + 1) : ℝ)

end

end A248170.P13308943850553376554

noncomputable section

/-- A248170: Nonnegative integer whose square is the closest square to prime(n).

Offset 1, canonical program `A248170.P13308943850553376554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248170.P13308943850553376554.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254520.P17296200500547138719

`∑{d}[n+1, A048250(#)*A063445((n+1)/#)]`
-/

namespace A254520.P17296200500547138719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P17296200500547138719

noncomputable section

/-- A254520: Möbius transform of A034676.

Offset 1, canonical program `A254520.P17296200500547138719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254520 (n : ℕ) : ℤ :=
  A254520.P17296200500547138719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256452.P9976460767317744789

`1+2*A046080(n+1)`
-/

namespace A256452.P9976460767317744789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A046080 (n + 1)

end

end A256452.P9976460767317744789

noncomputable section

/-- A256452: Number of integer solutions to n^2 = x^2 + y^2 with x>0, y>=0.

Offset 1, canonical program `A256452.P9976460767317744789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256452 (n : ℕ) : ℤ :=
  A256452.P9976460767317744789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275206.P3060918531879445442

`Δ[(4-6/(n+1))*a(n-1)]%A007595(n+1)` with `a(0)=1`
-/

namespace A275206.P3060918531879445442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A007595 (n + 1))

end

end A275206.P3060918531879445442

noncomputable section

/-- A275206: Expansion of (A(x)^2 - A(x^2))/2 where A(x) = A000108(x) - 1.

Offset 0, canonical program `A275206.P3060918531879445442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206 (n : ℕ) : ℤ :=
  A275206.P3060918531879445442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275238.P2529277380881640300

`xor(1, n*(A178914(n)+1+n))`
-/

namespace A275238.P2529277380881640300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A178914 n + 1 + (n : ℤ)))

end

end A275238.P2529277380881640300

noncomputable section

/-- A275238: a(n) = n*(10^floor(log_10(n)+1) + 1) + (-1)^n.

Offset 0, canonical program `A275238.P2529277380881640300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238 (n : ℕ) : ℤ :=
  A275238.P2529277380881640300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280076.P4901522912243900716

`(A162177(n+1)+1+n)²`
-/

namespace A280076.P4901522912243900716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162177 (n + 1) + 1 + (n : ℤ)) ^ 2

end

end A280076.P4901522912243900716

noncomputable section

/-- A280076: Numbers n such that Sum_{d|n} tau(d) = Product_{d|n} tau(d).

Offset 1, canonical program `A280076.P4901522912243900716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280076 (n : ℕ) : ℤ :=
  A280076.P4901522912243900716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280891.P1764150059183000184

`A000245(n)+∑[A026012(n)]`
-/

namespace A280891.P1764150059183000184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280891.P1764150059183000184

noncomputable section

/-- A280891: Number of certain noncrossing set partitions.

Offset 1, canonical program `A280891.P1764150059183000184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891 (n : ℕ) : ℤ :=
  A280891.P1764150059183000184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296021.P11845768645576456076

`∑[A101264(2*n)]`
-/

namespace A296021.P11845768645576456076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P11845768645576456076

noncomputable section

/-- A296021: Number of primes of the form 4*k+1 <= 4*n+1.

Offset 0, canonical program `A296021.P11845768645576456076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296021 (n : ℕ) : ℤ :=
  A296021.P11845768645576456076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296302.P8637239320253714587

`∑{d}[n+1, A034771(#)*A247343((n+1)/#)]`
-/

namespace A296302.P8637239320253714587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034771 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P8637239320253714587

noncomputable section

/-- A296302: Number of aperiodic compositions of n with relatively prime parts. Number of compositions of n with relatively prime parts and relatively prime run-lengths.

Offset 1, canonical program `A296302.P8637239320253714587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A296302 (n : ℕ) : ℤ :=
  A296302.P8637239320253714587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A296302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296770.P4976538490288116259

`A002457(n)-A008549(n)`
-/

namespace A296770.P4976538490288116259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A008549 n

end

end A296770.P4976538490288116259

noncomputable section

/-- A296770: Row sums of A050158.

Offset 0, canonical program `A296770.P4976538490288116259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296770 (n : ℕ) : ℤ :=
  A296770.P4976538490288116259.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307989.P2573378976177465253

`A095117(n)-∑[A101264(n)]`
-/

namespace A307989.P2573378976177465253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307989.P2573378976177465253

noncomputable section

/-- A307989: a(n) = n - pi(2*n) + pi(n-1), where pi is the prime counting function.

Offset 1, canonical program `A307989.P2573378976177465253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307989 (n : ℕ) : ℤ :=
  A307989.P2573378976177465253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326401.P8847676069389999364

`A326399(n+1)-A326400(n+1)`
-/

namespace A326401.P8847676069389999364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (n + 1) - A326400 (n + 1)

end

end A326401.P8847676069389999364

noncomputable section

/-- A326401: Expansion of Sum_{k>=1} k * x^k / (1 + x^k + x^(2*k)).

Offset 1, canonical program `A326401.P8847676069389999364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326399, A326400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326401 (n : ℕ) : ℤ :=
  A326401.P8847676069389999364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326399, A326400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349538.P2045233339296840913

`a(n-1)+4+8*A046080(n)` with `a(0)=1`
-/

namespace A349538.P2045233339296840913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (4 + 8 * A046080 n)

end

end A349538.P2045233339296840913

noncomputable section

/-- A349538: The number of pseudo-Pythagorean triples (which allow negative or 0 sides) on a 2D lattice that are on or inside a circle of radius n.

Offset 0, canonical program `A349538.P2045233339296840913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349538 (n : ℕ) : ℤ :=
  A349538.P2045233339296840913.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359647.P17524220049966486840

`A000108(n)*A001448(n)`
-/

namespace A359647.P17524220049966486840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001448 n

end

end A359647.P17524220049966486840

noncomputable section

/-- A359647: a(n) = [x^n] hypergeom([1/4, 3/4], [2], 64*x). The central terms of the Motzkin triangle A359364 without zeros.

Offset 0, canonical program `A359647.P17524220049966486840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359647 (n : ℕ) : ℤ :=
  A359647.P17524220049966486840.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362194.P824322354515658544

`A008859(n)-n`
-/

namespace A362194.P824322354515658544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - (n : ℤ)

end

end A362194.P824322354515658544

noncomputable section

/-- A362194: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 7 with exactly one descent.

Offset 0, canonical program `A362194.P824322354515658544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362194 (n : ℕ) : ℤ :=
  A362194.P824322354515658544.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369736.P2745609336317517813

`A130194(n+1)%2`
-/

namespace A369736.P2745609336317517813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130194 (n + 1)) 2

end

end A369736.P2745609336317517813

noncomputable section

/-- A369736: Triangle read by rows. T(n, k) = 0 if n - k is odd otherwise if 4 divides n - k then 1 otherwise -1.

Offset 0, canonical program `A369736.P2745609336317517813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369736 (n : ℕ) : ℤ :=
  A369736.P2745609336317517813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378248.P16323363356914607129

`A029041(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A378248.P16323363356914607129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029041 n + a (n - 3)

end

end A378248.P16323363356914607129

noncomputable section

/-- A378248: Number of sets of chess pieces whose collective material value adds to n.

Offset 0, canonical program `A378248.P16323363356914607129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378248 (n : ℕ) : ℤ :=
  A378248.P16323363356914607129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379833.P7514059028076193467

`(n+1)²*Δ[A321879(n)]`
-/

namespace A379833.P7514059028076193467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A379833.P7514059028076193467

noncomputable section

/-- A379833: The second Jordan totient function applied to the squares.

Offset 1, canonical program `A379833.P7514059028076193467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379833 (n : ℕ) : ℤ :=
  A379833.P7514059028076193467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390965.P17095960951919550593

`A070857(n)-A070031(n)`
-/

namespace A390965.P17095960951919550593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n - A070031 n

end

end A390965.P17095960951919550593

noncomputable section

/-- A390965: a(n) = (1/(n+1)) * Sum_{k=0..n} k^2 * (k+1) * binomial(2*n-k,n-k).

Offset 0, canonical program `A390965.P17095960951919550593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965 (n : ℕ) : ℤ :=
  A390965.P17095960951919550593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000056.P3672351641528750621

`(n+1)*Δ[A321879(n)]`
-/

namespace A000056.P3672351641528750621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A000056.P3672351641528750621

noncomputable section

/-- A000056: Order of the group SL(2,Z_n).

Offset 1, canonical program `A000056.P3672351641528750621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000056 (n : ℕ) : ℤ :=
  A000056.P3672351641528750621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000095.P6344633483168979693

`(n%2+1)*A000089(n+1)`
-/

namespace A000095.P6344633483168979693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000089 (n + 1)

end

end A000095.P6344633483168979693

noncomputable section

/-- A000095: Number of fixed points of Gamma_0 (n) of type i.

Offset 1, canonical program `A000095.P6344633483168979693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000095 (n : ℕ) : ℤ :=
  A000095.P6344633483168979693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000575.P241324822496640098

`∑[A064058(n+1)]-A062988(n)`
-/

namespace A000575.P241324822496640098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062988 n

end

end A000575.P241324822496640098

noncomputable section

/-- A000575: Tenth column of quintinomial coefficients.

Offset 0, canonical program `A000575.P241324822496640098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000575 (n : ℕ) : ℤ :=
  A000575.P241324822496640098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000740.P272434397806269356

`∑{d}[n+1, A296302(#)]`
-/

namespace A000740.P272434397806269356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296302 d

end

end A000740.P272434397806269356

noncomputable section

/-- A000740: Number of 2n-bead balanced binary necklaces of fundamental period 2n, equivalent to reversed complement; also Dirichlet convolution of b_n=2^(n-1) with mu(n); also number of components of Mandelbrot set corresponding to Julia sets with an attractive n-cycle.

Offset 1, canonical program `A000740.P272434397806269356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A000740 (n : ℕ) : ℤ :=
  A000740.P272434397806269356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A000740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000897.P14910180461201994835

`A000984(n)*A001448(n)`
-/

namespace A000897.P14910180461201994835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001448 n

end

end A000897.P14910180461201994835

noncomputable section

/-- A000897: a(n) = (4*n)! / ((2*n)!*n!^2).

Offset 0, canonical program `A000897.P14910180461201994835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000897 (n : ℕ) : ℤ :=
  A000897.P14910180461201994835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001227.P15314215467539815540

`A099777(n+1)-A000005(n+1)`
-/

namespace A001227.P15314215467539815540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A000005 (n + 1)

end

end A001227.P15314215467539815540

noncomputable section

/-- A001227: Number of odd divisors of n.

Offset 1, canonical program `A001227.P15314215467539815540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001227 (n : ℕ) : ℤ :=
  A001227.P15314215467539815540.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001307.P15031898288533116587

`∑[A358206(n)]`
-/

namespace A001307.P15031898288533116587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P15031898288533116587

noncomputable section

/-- A001307: Expansion of 1/(1-x)^2/(1-x^2)/(1-x^4)/(1-x^10)/(1-x^20).

Offset 0, canonical program `A001307.P15031898288533116587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. -/
def A001307 (n : ℕ) : ℤ :=
  A001307.P15031898288533116587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. -/
def A001307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001343.P6388193166079406196

`A001300(A004526(n))*A079998(n)`
-/

namespace A001343.P6388193166079406196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A004526 n).toNat * A079998 n

end

end A001343.P6388193166079406196

noncomputable section

/-- A001343: Number of (unordered) ways of making change for n cents using coins of 5, 10, 20, 50, 100 cents.

Offset 0, canonical program `A001343.P6388193166079406196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4545 terms. -/
def A001343 (n : ℕ) : ℤ :=
  A001343.P6388193166079406196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4545 terms. -/
def A001343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001453.P13217606277513459641

`∑[∑[A026012(n)]]`
-/

namespace A001453.P13217606277513459641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P13217606277513459641

noncomputable section

/-- A001453: Catalan numbers - 1.

Offset 2, canonical program `A001453.P13217606277513459641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001453 (n : ℕ) : ℤ :=
  A001453.P13217606277513459641.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001790.P1262090449372590155

`A000984(n)/A001316(n)`
-/

namespace A001790.P1262090449372590155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A001316 n : ℚ)

end

end A001790.P1262090449372590155

noncomputable section

/-- A001790: Numerators in expansion of 1/sqrt(1-x).

Offset 0, canonical program `A001790.P1262090449372590155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001790 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001790.P1262090449372590155.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003714.P565032106299634425

`a(A193564(n+1))*2^(A003849(n)+1)+A003849(n)` with `a(0)=0`
-/

namespace A003714.P565032106299634425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (A193564 (n + 1)).toNat * (2 : ℚ) ^ (A003849 n + 1 : ℤ) + (A003849 n : ℚ)

end

end A003714.P565032106299634425

noncomputable section

/-- A003714: Fibbinary numbers: if n = F(i1) + F(i2) + ... + F(ik) is the Zeckendorf representation of n (i.e., write n in Fibonacci number system) then a(n) = 2^(i1 - 2) + 2^(i2 - 2) + ... + 2^(ik - 2). Also numbers whose binary representation contains no two adjacent 1's.

Offset 0, canonical program `A003714.P565032106299634425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003714.P565032106299634425.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003986.P12926496113833734776

`or(A002262(n), A025581(n))`
-/

namespace A003986.P12926496113833734776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A025581 n)

end

end A003986.P12926496113833734776

noncomputable section

/-- A003986: Table T(n,k) = n OR k read by antidiagonals.

Offset 0, canonical program `A003986.P12926496113833734776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003986 (n : ℕ) : ℤ :=
  A003986.P12926496113833734776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004233.P12987865471568449723

`A000195(n+1)-A057428(n)`
-/

namespace A004233.P12987865471568449723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) - A057428 n

end

end A004233.P12987865471568449723

noncomputable section

/-- A004233: a(n) = ceiling(log(n)).

Offset 1, canonical program `A004233.P12987865471568449723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004233 (n : ℕ) : ℤ :=
  A004233.P12987865471568449723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004247.P14233945955703425283

`A002262(n)*A025581(n)`
-/

namespace A004247.P14233945955703425283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A025581 n

end

end A004247.P14233945955703425283

noncomputable section

/-- A004247: Multiplication table read by antidiagonals: T(i,j) = i*j (i>=0, j>=0). Alternatively, multiplication triangle read by rows: P(i,j) = j*(i-j) (i>=0, 0<=j<=i).

Offset 0, canonical program `A004247.P14233945955703425283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004247 (n : ℕ) : ℤ :=
  A004247.P14233945955703425283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004741.P8751127324978194226

`A053615(n)+A004739(n+1)`
-/

namespace A004741.P8751127324978194226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + A004739 (n + 1)

end

end A004741.P8751127324978194226

noncomputable section

/-- A004741: Concatenation of sequences (1,3,..,2n-1,2n,2n-2,..,2) for n >= 1.

Offset 1, canonical program `A004741.P8751127324978194226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004741 (n : ℕ) : ℤ :=
  A004741.P8751127324978194226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005080.P18153420546656100569

`A005067(n+1)-A005084(n+1)`
-/

namespace A005080.P18153420546656100569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) - A005084 (n + 1)

end

end A005080.P18153420546656100569

noncomputable section

/-- A005080: Sum of cubes of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005080.P18153420546656100569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005080 (n : ℕ) : ℤ :=
  A005080.P18153420546656100569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005081.P3775346567522156883

`A005068(n+1)-A005085(n+1)`
-/

namespace A005081.P3775346567522156883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (n + 1) - A005085 (n + 1)

end

end A005081.P3775346567522156883

noncomputable section

/-- A005081: Sum of 4th powers of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005081.P3775346567522156883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005081 (n : ℕ) : ℤ :=
  A005081.P3775346567522156883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005182.P15554511706419880685

`A057428(xor(1, n))+A005181(n)`
-/

namespace A005182.P15554511706419880685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.xor 1 n) + A005181 n

end

end A005182.P15554511706419880685

noncomputable section

/-- A005182: a(n) = floor(e^((n-1)/2)).

Offset 0, canonical program `A005182.P15554511706419880685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005182 (n : ℕ) : ℤ :=
  A005182.P15554511706419880685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005598.P13593438204838445571

`A092249(n)+a(n-1)` with `a(0)=1`
-/

namespace A005598.P13593438204838445571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092249 n + a (n - 1)

end

end A005598.P13593438204838445571

noncomputable section

/-- A005598: a(n) = 1 + Sum_{i=1..n} (n-i+1)*phi(i).

Offset 0, canonical program `A005598.P13593438204838445571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005598 (n : ℕ) : ℤ :=
  A005598.P13593438204838445571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006013.P4079729848362006556

`A024485(n+1)/3`
-/

namespace A006013.P4079729848362006556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024485 (n + 1) : ℚ) / 3

end

end A006013.P4079729848362006556

noncomputable section

/-- A006013: a(n) = binomial(3*n+1,n)/(n+1).

Offset 0, canonical program `A006013.P4079729848362006556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006013.P4079729848362006556.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006876.P13042802876446333329

`∑{d}[n+1, A024000(#-1)*A296302((n+1)/#)]`
-/

namespace A006876.P13042802876446333329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024000 (d - 1) * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006876.P13042802876446333329

noncomputable section

/-- A006876: Mu-molecules in Mandelbrot set whose seeds have period n.

Offset 1, canonical program `A006876.P13042802876446333329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876 (n : ℕ) : ℤ :=
  A006876.P13042802876446333329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A006876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007432.P16663120023730915232

`∑{d}[n+1, #*A007428((n+1)/#)]`
-/

namespace A007432.P16663120023730915232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P16663120023730915232

noncomputable section

/-- A007432: Moebius transform applied thrice to natural numbers.

Offset 1, canonical program `A007432.P16663120023730915232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007432 (n : ℕ) : ℤ :=
  A007432.P16663120023730915232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007504.P16529107901788736493

`∑[A182986(n+1)]`
-/

namespace A007504.P16529107901788736493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007504.P16529107901788736493

noncomputable section

/-- A007504: Sum of the first n primes.

Offset 0, canonical program `A007504.P16529107901788736493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007504 (n : ℕ) : ℤ :=
  A007504.P16529107901788736493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008279.P7177801246737440238

`A002262(n)!*C(A003056(n), A002262(n))`
-/

namespace A008279.P7177801246737440238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 n).toNat * Nat.choose (A003056 n).toNat (A002262 n).toNat

end

end A008279.P7177801246737440238

noncomputable section

/-- A008279: Triangle T(n,k) = n!/(n-k)! (0 <= k <= n) read by rows, giving number of permutations of n things k at a time.

Offset 0, canonical program `A008279.P7177801246737440238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A008279 (n : ℕ) : ℤ :=
  (A008279.P7177801246737440238.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. -/
def A008279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011785.P17990344848790254440

`A000056(n+1)*A115224(n+1)`
-/

namespace A011785.P17990344848790254440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000056 (n + 1) * A115224 (n + 1)

end

end A011785.P17990344848790254440

noncomputable section

/-- A011785: Number of 3 X 3 matrices whose determinant is 1 mod n.

Offset 1, canonical program `A011785.P17990344848790254440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011785 (n : ℕ) : ℤ :=
  A011785.P17990344848790254440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014132.P16100975300423531158

`a(n-1)+A035214(n)` with `a(0)=2`
-/

namespace A014132.P16100975300423531158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A035214 n

end

end A014132.P16100975300423531158

noncomputable section

/-- A014132: Complement of triangular numbers (A000217); also array T(n,k) = ((n+k)^2 + n-k)/2, n, k > 0, read by antidiagonals.

Offset 1, canonical program `A014132.P16100975300423531158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014132 (n : ℕ) : ℤ :=
  A014132.P16100975300423531158.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018900.P2868698677378612256

`2^A002024(n+1)+2^A002262(n)`
-/

namespace A018900.P2868698677378612256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002024 (n + 1) : ℤ) + (2 : ℚ) ^ (A002262 n : ℤ)

end

end A018900.P2868698677378612256

noncomputable section

/-- A018900: Sums of two distinct powers of 2.

Offset 1, canonical program `A018900.P2868698677378612256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018900.P2868698677378612256.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023201.P15581086770608415372

`p?[A015914(n+1)]`
-/

namespace A023201.P15581086770608415372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023201.P15581086770608415372

noncomputable section

/-- A023201: Primes p such that p + 6 is also prime. (Lesser of a pair of sexy primes.)

Offset 1, canonical program `A023201.P15581086770608415372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A023201 (n : ℕ) : ℤ :=
  A023201.P15581086770608415372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A023201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023207.P14272775065074491551

`p?[A067076(n+1)-3]`
-/

namespace A023207.P14272775065074491551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P14272775065074491551

noncomputable section

/-- A023207: Numbers m such that m and 2*m + 9 both prime.

Offset 1, canonical program `A023207.P14272775065074491551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A023207 (n : ℕ) : ℤ :=
  A023207.P14272775065074491551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A023207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023745.P14630683886862311875

`A003462(A002262(n))+A003462(A003056(n))`
-/

namespace A023745.P14630683886862311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A002262 n).toNat + A003462 (A003056 n).toNat

end

end A023745.P14630683886862311875

noncomputable section

/-- A023745: Plaindromes: numbers whose digits in base 3 are in nondecreasing order.

Offset 1, canonical program `A023745.P14630683886862311875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023745 (n : ℕ) : ℤ :=
  A023745.P14630683886862311875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024918.P7300264531747899281

`∑[record[A008475(n+1)]]+1`
-/

namespace A024918.P7300264531747899281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024918.P7300264531747899281

noncomputable section

/-- A024918: Partial sums of the sequence of prime powers (A000961).

Offset 1, canonical program `A024918.P7300264531747899281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A024918 (n : ℕ) : ℤ :=
  A024918.P7300264531747899281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A024918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025473.P15705116709201822488

`∏{p}[record[A008475(n+1)], #]`
-/

namespace A025473.P15705116709201822488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A025473.P15705116709201822488

noncomputable section

/-- A025473: a(1) = 1; for n > 1, a(n) = prime root of n-th prime power (A000961).

Offset 1, canonical program `A025473.P15705116709201822488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A025473 (n : ℕ) : ℤ :=
  (A025473.P15705116709201822488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A025473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025480.P15873863116418380882

`((n+1)/A006519(n+1)-1)/2`
-/

namespace A025480.P15873863116418380882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ) - 1) / 2

end

end A025480.P15873863116418380882

noncomputable section

/-- A025480: a(2n) = n, a(2n+1) = a(n).

Offset 0, canonical program `A025480.P15873863116418380882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025480.P15873863116418380882.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025543.P5462002278886021902

`lcm(a(n-1), A002808(n))` with `a(0)=1`
-/

namespace A025543.P5462002278886021902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A002808 n)

end

end A025543.P5462002278886021902

noncomputable section

/-- A025543: Least common multiple of the first n composite numbers.

Offset 0, canonical program `A025543.P5462002278886021902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A025543 (n : ℕ) : ℤ :=
  (A025543.P5462002278886021902.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A025543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025785.P12688131732497984269

`A025821(abs(1-n))+A025816(n)`
-/

namespace A025785.P12688131732497984269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 |1 - (n : ℤ)|.toNat + A025816 n

end

end A025785.P12688131732497984269

noncomputable section

/-- A025785: Expansion of 1/((1-x)(1-x^7)(1-x^9)).

Offset 0, canonical program `A025785.P12688131732497984269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025785 (n : ℕ) : ℤ :=
  A025785.P12688131732497984269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025817.P16828165375691116228

`A025785(n)-a(n-1)` with `a(0)=1`
-/

namespace A025817.P16828165375691116228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025785 n - a (n - 1)

end

end A025817.P16828165375691116228

noncomputable section

/-- A025817: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A025817.P16828165375691116228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025817 (n : ℕ) : ℤ :=
  A025817.P16828165375691116228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025824.P2015568668118323390

`A029166(n)+A029222(n)-A029154(n)`
-/

namespace A025824.P2015568668118323390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 n + (A029222 n - A029154 n)

end

end A025824.P2015568668118323390

noncomputable section

/-- A025824: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025824.P2015568668118323390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025824 (n : ℕ) : ℤ :=
  A025824.P2015568668118323390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025846.P2733198107911465055

`A025785(n)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A025846.P2733198107911465055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025785 n - a (n - 2) - a (n - 1)

end

end A025846.P2733198107911465055

noncomputable section

/-- A025846: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A025846.P2733198107911465055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025846 (n : ℕ) : ℤ :=
  A025846.P2733198107911465055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025868.P632508948921518616

`A025817(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025868.P632508948921518616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025817 n - a (n - 2)

end

end A025868.P632508948921518616

noncomputable section

/-- A025868: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A025868.P632508948921518616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025868 (n : ℕ) : ℤ :=
  A025868.P632508948921518616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025881.P18383509037900537522

`A025857(abs(xor(1, 1-n)))`
-/

namespace A025881.P18383509037900537522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 |Int.xor 1 (1 - (n : ℤ))|.toNat

end

end A025881.P18383509037900537522

noncomputable section

/-- A025881: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A025881.P18383509037900537522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025881 (n : ℕ) : ℤ :=
  A025881.P18383509037900537522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025883.P15157821750037263586

`A025846(n)+A025859(n)-A025831(n)`
-/

namespace A025883.P15157821750037263586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025846 n + (A025859 n - A025831 n)

end

end A025883.P15157821750037263586

noncomputable section

/-- A025883: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A025883.P15157821750037263586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025883 (n : ℕ) : ℤ :=
  A025883.P15157821750037263586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025907.P12793639154697755668

`A025783(n)+A025881(n)-A025781(n)`
-/

namespace A025907.P12793639154697755668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025783 n + (A025881 n - A025781 n)

end

end A025907.P12793639154697755668

noncomputable section

/-- A025907: Expansion of 1/((1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025907.P12793639154697755668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025907 (n : ℕ) : ℤ :=
  A025907.P12793639154697755668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025912.P8134843104660562179

`A025883(n)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A025912.P8134843104660562179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A025883 n - a (n - 5)

end

end A025912.P8134843104660562179

noncomputable section

/-- A025912: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025912.P8134843104660562179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025912 (n : ℕ) : ℤ :=
  A025912.P8134843104660562179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025914.P2858219896592706963

`A025874(n)+A025883(n)-A025864(n)`
-/

namespace A025914.P2858219896592706963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A025883 n - A025864 n)

end

end A025914.P2858219896592706963

noncomputable section

/-- A025914: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A025914.P2858219896592706963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025914 (n : ℕ) : ℤ :=
  A025914.P2858219896592706963.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026021.P624873047912347274

`A026016(A065033(n))+Δ[A208355(n)]`
-/

namespace A026021.P624873047912347274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (A065033 n).toNat + (f1 (n + 1) - f1 n)

end

end A026021.P624873047912347274

noncomputable section

/-- A026021: a(n) = T(n, [n/2]), where T is the array defined in A026009.

Offset 0, canonical program `A026021.P624873047912347274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A026021 (n : ℕ) : ℤ :=
  A026021.P624873047912347274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A026021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026729.P18212919796410262121

`C(A002262(n), A025581(n))`
-/

namespace A026729.P18212919796410262121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A025581 n).toNat

end

end A026729.P18212919796410262121

noncomputable section

/-- A026729: Square array of binomial coefficients T(n,k) = binomial(n,k), n >= 0, k >= 0, read by downward antidiagonals.

Offset 0, canonical program `A026729.P18212919796410262121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026729 (n : ℕ) : ℤ :=
  (A026729.P18212919796410262121.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027375.P1624201345270917595

`2*∑{d}[n, A296302(#)]`
-/

namespace A027375.P1624201345270917595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A296302 d)

end

end A027375.P1624201345270917595

noncomputable section

/-- A027375: Number of aperiodic binary strings of length n; also number of binary sequences with primitive period n.

Offset 0, canonical program `A027375.P1624201345270917595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A027375 (n : ℕ) : ℤ :=
  A027375.P1624201345270917595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A027375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028815.P810525423351225743

`A008578(n+1)+1`
-/

namespace A028815.P810525423351225743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 1

end

end A028815.P810525423351225743

noncomputable section

/-- A028815: a(n) = prime(n) + 1 (starting with 1).

Offset 0, canonical program `A028815.P810525423351225743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028815 (n : ℕ) : ℤ :=
  A028815.P810525423351225743.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029028.P12826529296820235701

`∑[A025824(n)]`
-/

namespace A029028.P12826529296820235701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029028.P12826529296820235701

noncomputable section

/-- A029028: Expansion of 1/((1-x)(1-x^2)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029028.P12826529296820235701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029028 (n : ℕ) : ℤ :=
  A029028.P12826529296820235701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029057.P8055949690666840573

`∑[A025853(n)]`
-/

namespace A029057.P8055949690666840573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029057.P8055949690666840573

noncomputable section

/-- A029057: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029057.P8055949690666840573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029057 (n : ℕ) : ℤ :=
  A029057.P8055949690666840573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029061.P4801605726621384143

`∑[A025857(n)]`
-/

namespace A029061.P4801605726621384143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029061.P4801605726621384143

noncomputable section

/-- A029061: Expansion of 1/((1-x)*(1-x^3)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029061.P4801605726621384143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029061 (n : ℕ) : ℤ :=
  A029061.P4801605726621384143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029062.P6705985955326828099

`∑[A025907(abs(3-n))+A025907(n)]`
-/

namespace A029062.P6705985955326828099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 |3 - (n : ℤ)|.toNat + A025907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029062.P6705985955326828099

noncomputable section

/-- A029062: Expansion of 1/((1-x)*(1-x^3)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029062.P6705985955326828099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029062 (n : ℕ) : ℤ :=
  A029062.P6705985955326828099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029074.P740633488516579496

`∑[A025868(n)]`
-/

namespace A029074.P740633488516579496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029074.P740633488516579496

noncomputable section

/-- A029074: Expansion of 1/((1-x)(1-x^4)(1-x^7)(1-x^9)).

Offset 0, canonical program `A029074.P740633488516579496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029074 (n : ℕ) : ℤ :=
  A029074.P740633488516579496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029081.P254092326386085694

`A029028(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029081.P254092326386085694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029028 n - a (n - 2)

end

end A029081.P254092326386085694

noncomputable section

/-- A029081: Expansion of g.f. 1/((1-x)*(1-x^4)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029081.P254092326386085694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029081 (n : ℕ) : ℤ :=
  A029081.P254092326386085694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029090.P9337067161748659206

`∑[A025881(n)]`
-/

namespace A029090.P9337067161748659206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029090.P9337067161748659206

noncomputable section

/-- A029090: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A029090.P9337067161748659206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029090 (n : ℕ) : ℤ :=
  A029090.P9337067161748659206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029092.P6860833474771201962

`∑[A025883(n)]`
-/

namespace A029092.P6860833474771201962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029092.P6860833474771201962

noncomputable section

/-- A029092: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029092.P6860833474771201962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029092 (n : ℕ) : ℤ :=
  A029092.P6860833474771201962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029101.P11302684764065804664

`A029209(abs(1-n))+A029209(n)`
-/

namespace A029101.P11302684764065804664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029209 |1 - (n : ℤ)|.toNat + A029209 n

end

end A029101.P11302684764065804664

noncomputable section

/-- A029101: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029101.P11302684764065804664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029101 (n : ℕ) : ℤ :=
  A029101.P11302684764065804664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029102.P15887035511913371875

`∑[A025893(n)]`
-/

namespace A029102.P15887035511913371875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029102.P15887035511913371875

noncomputable section

/-- A029102: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029102.P15887035511913371875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029102 (n : ℕ) : ℤ :=
  A029102.P15887035511913371875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029108.P7657049067647274667

`A029051(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029108.P7657049067647274667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029051 n - a (n - 3)

end

end A029108.P7657049067647274667

noncomputable section

/-- A029108: Expansion of g.f. 1/((1-x)*(1-x^6)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029108.P7657049067647274667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029108 (n : ℕ) : ℤ :=
  A029108.P7657049067647274667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029116.P2286183440171770193

`∑[A025907(n)]`
-/

namespace A029116.P2286183440171770193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029116.P2286183440171770193

noncomputable section

/-- A029116: Expansion of 1/((1-x)(1-x^6)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029116.P2286183440171770193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029116 (n : ℕ) : ℤ :=
  A029116.P2286183440171770193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029121.P9286238857012295137

`∑[A025912(n)]`
-/

namespace A029121.P9286238857012295137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029121.P9286238857012295137

noncomputable section

/-- A029121: Expansion of 1/((1-x)(1-x^7)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029121.P9286238857012295137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029121 (n : ℕ) : ℤ :=
  A029121.P9286238857012295137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029123.P5153650302212498034

`∑[A025914(n)]`
-/

namespace A029123.P5153650302212498034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029123.P5153650302212498034

noncomputable section

/-- A029123: Expansion of 1/((1-x)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029123.P5153650302212498034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029123 (n : ℕ) : ℤ :=
  A029123.P5153650302212498034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029128.P7892556659566413608

`A029081(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A029128.P7892556659566413608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A029081 n - a (n - 4)

end

end A029128.P7892556659566413608

noncomputable section

/-- A029128: Expansion of 1/((1-x)(1-x^8)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029128.P7892556659566413608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029128 (n : ℕ) : ℤ :=
  A029128.P7892556659566413608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029164.P776658935013959894

`A029057(n)-a(n-1)` with `a(0)=1`
-/

namespace A029164.P776658935013959894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029057 n - a (n - 1)

end

end A029164.P776658935013959894

noncomputable section

/-- A029164: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029164.P776658935013959894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029164 (n : ℕ) : ℤ :=
  A029164.P776658935013959894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029169.P3240028449716027117

`A029061(n)-a(n-1)` with `a(0)=1`
-/

namespace A029169.P3240028449716027117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029061 n - a (n - 1)

end

end A029169.P3240028449716027117

noncomputable section

/-- A029169: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029169.P3240028449716027117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029169 (n : ℕ) : ℤ :=
  A029169.P3240028449716027117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029170.P17474200054274196928

`A029062(n)-a(n-1)` with `a(0)=1`
-/

namespace A029170.P17474200054274196928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029062 n - a (n - 1)

end

end A029170.P17474200054274196928

noncomputable section

/-- A029170: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029170.P17474200054274196928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029170 (n : ℕ) : ℤ :=
  A029170.P17474200054274196928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029182.P11771640333311739023

`A029074(n)-a(n-1)` with `a(0)=1`
-/

namespace A029182.P11771640333311739023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029074 n - a (n - 1)

end

end A029182.P11771640333311739023

noncomputable section

/-- A029182: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^9)).

Offset 0, canonical program `A029182.P11771640333311739023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029182 (n : ℕ) : ℤ :=
  A029182.P11771640333311739023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029198.P17340044344010173099

`A029090(n)-a(n-1)` with `a(0)=1`
-/

namespace A029198.P17340044344010173099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029090 n - a (n - 1)

end

end A029198.P17340044344010173099

noncomputable section

/-- A029198: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A029198.P17340044344010173099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029198 (n : ℕ) : ℤ :=
  A029198.P17340044344010173099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029216.P8520377954329641106

`A029108(n)-a(n-1)` with `a(0)=1`
-/

namespace A029216.P8520377954329641106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029108 n - a (n - 1)

end

end A029216.P8520377954329641106

noncomputable section

/-- A029216: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029216.P8520377954329641106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029216 (n : ℕ) : ℤ :=
  A029216.P8520377954329641106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029225.P16486130044195142611

`A029116(n)-a(n-1)` with `a(0)=1`
-/

namespace A029225.P16486130044195142611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029116 n - a (n - 1)

end

end A029225.P16486130044195142611

noncomputable section

/-- A029225: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029225.P16486130044195142611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225 (n : ℕ) : ℤ :=
  A029225.P16486130044195142611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029230.P447352754514735135

`A029121(n)-a(n-1)` with `a(0)=1`
-/

namespace A029230.P447352754514735135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029121 n - a (n - 1)

end

end A029230.P447352754514735135

noncomputable section

/-- A029230: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029230.P447352754514735135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029230 (n : ℕ) : ℤ :=
  A029230.P447352754514735135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029231.P839251406571888672

`A029182(n)+A029209(n)-A029176(n)`
-/

namespace A029231.P839251406571888672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029182 n + (A029209 n - A029176 n)

end

end A029231.P839251406571888672

noncomputable section

/-- A029231: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029231.P839251406571888672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029231 (n : ℕ) : ℤ :=
  A029231.P839251406571888672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029232.P16177588645430596473

`A029123(n)-a(n-1)` with `a(0)=1`
-/

namespace A029232.P16177588645430596473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029123 n - a (n - 1)

end

end A029232.P16177588645430596473

noncomputable section

/-- A029232: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029232.P16177588645430596473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029232 (n : ℕ) : ℤ :=
  A029232.P16177588645430596473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029237.P12458243396982577582

`A029128(n)-a(n-1)` with `a(0)=1`
-/

namespace A029237.P12458243396982577582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029128 n - a (n - 1)

end

end A029237.P12458243396982577582

noncomputable section

/-- A029237: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029237.P12458243396982577582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029237 (n : ℕ) : ℤ :=
  A029237.P12458243396982577582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029271.P4727093851708620107

`A029170(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029271.P4727093851708620107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029170 n - a (n - 2)

end

end A029271.P4727093851708620107

noncomputable section

/-- A029271: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029271.P4727093851708620107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029271 (n : ℕ) : ℤ :=
  A029271.P4727093851708620107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029285.P15493432003765234757

`A025890(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029285.P15493432003765234757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025890 n + a (n - 3)

end

end A029285.P15493432003765234757

noncomputable section

/-- A029285: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029285.P15493432003765234757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029285 (n : ℕ) : ℤ :=
  A029285.P15493432003765234757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029288.P10411134377989181800

`A025893(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029288.P10411134377989181800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025893 n + a (n - 3)

end

end A029288.P10411134377989181800

noncomputable section

/-- A029288: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029288.P10411134377989181800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029288 (n : ℕ) : ℤ :=
  A029288.P10411134377989181800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029316.P6118394211418629132

`∑[A025850(n)-A025877(A004442(n))]`
-/

namespace A029316.P6118394211418629132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 n - A025877 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029316.P6118394211418629132

noncomputable section

/-- A029316: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029316.P6118394211418629132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029316 (n : ℕ) : ℤ :=
  A029316.P6118394211418629132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029331.P5624072464246158089

`A029198(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029331.P5624072464246158089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029198 n - a (n - 2)

end

end A029331.P5624072464246158089

noncomputable section

/-- A029331: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A029331.P5624072464246158089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029331 (n : ℕ) : ℤ :=
  A029331.P5624072464246158089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029349.P3958036498362969889

`A029216(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029349.P3958036498362969889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029216 n - a (n - 2)

end

end A029349.P3958036498362969889

noncomputable section

/-- A029349: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029349.P3958036498362969889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029349 (n : ℕ) : ℤ :=
  A029349.P3958036498362969889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029358.P6065047460035336274

`A029072(n)-∑[A025796(A057979(n))]`
-/

namespace A029358.P6065047460035336274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029358.P6065047460035336274

noncomputable section

/-- A029358: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029358.P6065047460035336274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029358 (n : ℕ) : ℤ :=
  A029358.P6065047460035336274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029363.P5892090971847677782

`A029230(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029363.P5892090971847677782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029230 n - a (n - 2)

end

end A029363.P5892090971847677782

noncomputable section

/-- A029363: Expansion of 1/((1 - x^4)*(1 - x^7)*(1 - x^9)*(1 - x^10)).

Offset 0, canonical program `A029363.P5892090971847677782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029363 (n : ℕ) : ℤ :=
  A029363.P5892090971847677782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029365.P2100240297090772745

`A029232(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029365.P2100240297090772745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029232 n - a (n - 2)

end

end A029365.P2100240297090772745

noncomputable section

/-- A029365: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029365.P2100240297090772745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029365 (n : ℕ) : ℤ :=
  A029365.P2100240297090772745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029389.P6952618262700460227

`A029288(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029389.P6952618262700460227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029288 n - a (n - 3)

end

end A029389.P6952618262700460227

noncomputable section

/-- A029389: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029389.P6952618262700460227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029389 (n : ℕ) : ℤ :=
  A029389.P6952618262700460227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029393.P17295125386475700853

`A025883(n)+A029091(n)-A029092(n)`
-/

namespace A029393.P17295125386475700853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n + (A029091 n - A029092 n)

end

end A029393.P17295125386475700853

noncomputable section

/-- A029393: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029393.P17295125386475700853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029393 (n : ℕ) : ℤ :=
  A029393.P17295125386475700853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029423.P3269653636500518624

`A029316(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029423.P3269653636500518624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029316 n - a (n - 3)

end

end A029423.P3269653636500518624

noncomputable section

/-- A029423: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029423.P3269653636500518624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029423 (n : ℕ) : ℤ :=
  A029423.P3269653636500518624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029430.P1090642862795637503

`A029114(n)+A029389(n)-A029102(n)`
-/

namespace A029430.P1090642862795637503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029389 n - A029102 n)

end

end A029430.P1090642862795637503

noncomputable section

/-- A029430: Expansion of 1/((1-x^6)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029430.P1090642862795637503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430 (n : ℕ) : ℤ :=
  A029430.P1090642862795637503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029760.P12701853743882014842

`A002457(n+1)-A000346(n+1)`
-/

namespace A029760.P12701853743882014842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A000346 (n + 1)

end

end A029760.P12701853743882014842

noncomputable section

/-- A029760: A sum with next-to-central binomial coefficients of even order, Catalan related.

Offset 0, canonical program `A029760.P12701853743882014842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A029760 (n : ℕ) : ℤ :=
  A029760.P12701853743882014842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A029760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031215.P5770198321376253516

`A105720(n+1)-A161463(n+1)`
-/

namespace A031215.P5770198321376253516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - A161463 (n + 1)

end

end A031215.P5770198321376253516

noncomputable section

/-- A031215: Even-indexed primes: a(n) = prime(2n).

Offset 1, canonical program `A031215.P5770198321376253516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105720, A161463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A031215 (n : ℕ) : ℤ :=
  A031215.P5770198321376253516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105720, A161463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A031215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031337.P4949667839663439052

`A031215(2*(n+1))`
-/

namespace A031337.P4949667839663439052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (2 * (n + 1))

end

end A031337.P4949667839663439052

noncomputable section

/-- A031337: a(n) = prime(4*n).

Offset 1, canonical program `A031337.P4949667839663439052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031337 (n : ℕ) : ℤ :=
  A031337.P4949667839663439052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032952.P14319785002090626155

`A026013(n+1)-A099376(n)`
-/

namespace A032952.P14319785002090626155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) - A099376 n

end

end A032952.P14319785002090626155

noncomputable section

/-- A032952: Expansion of (1+x*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A032952.P14319785002090626155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A032952 (n : ℕ) : ℤ :=
  A032952.P14319785002090626155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A032952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034754.P850414589168933379

`∑{d}[n+1, A007427(#)*A034753((n+1)/#)]`
-/

namespace A034754.P850414589168933379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034754.P850414589168933379

noncomputable section

/-- A034754: Dirichlet convolution of 3^(n-1) with phi(n).

Offset 1, canonical program `A034754.P850414589168933379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034754 (n : ℕ) : ℤ :=
  A034754.P850414589168933379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035250.P17429527738898511012

`1-A307989(n+1)+n`
-/

namespace A035250.P17429527738898511012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A307989 (n + 1) + (n : ℤ)

end

end A035250.P17429527738898511012

noncomputable section

/-- A035250: Number of primes between n and 2n (inclusive).

Offset 1, canonical program `A035250.P17429527738898511012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035250 (n : ℕ) : ℤ :=
  A035250.P17429527738898511012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037445.P13224315450337883063

`∏{e}[n+1, A001316(#)]`
-/

namespace A037445.P13224315450337883063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001316 (Nat.factorization (f1 n) p)

end

end A037445.P13224315450337883063

noncomputable section

/-- A037445: Number of infinitary divisors (or i-divisors) of n.

Offset 1, canonical program `A037445.P13224315450337883063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037445 (n : ℕ) : ℤ :=
  A037445.P13224315450337883063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037957.P523599438952609535

`A001405(n)-A026021(n)`
-/

namespace A037957.P523599438952609535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A026021 n

end

end A037957.P523599438952609535

noncomputable section

/-- A037957: a(n) = binomial(n, floor((n-6)/2)).

Offset 0, canonical program `A037957.P523599438952609535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957 (n : ℕ) : ℤ :=
  A037957.P523599438952609535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038502.P9052466148922718173

`gcd(n+1, A327625(n+1))`
-/

namespace A038502.P9052466148922718173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327625 (n + 1))

end

end A038502.P9052466148922718173

noncomputable section

/-- A038502: Remove 3's from n.

Offset 1, canonical program `A038502.P9052466148922718173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038502 (n : ℕ) : ℤ :=
  (A038502.P9052466148922718173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038836.P9381982746898673660

`A029760(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A038836.P9381982746898673660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029760 n + 4 * a (n - 1)

end

end A038836.P9381982746898673660

noncomputable section

/-- A038836: Convolution of Catalan numbers {1,2,5,14,...} with A002802 (5-fold convoluted central binomial coefficients).

Offset 0, canonical program `A038836.P9381982746898673660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A038836 (n : ℕ) : ℤ :=
  A038836.P9381982746898673660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A038836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042988.P9376538551254334237

`∪[A023207(n+1), A044042(n+1)]`
-/

namespace A042988.P9376538551254334237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P9376538551254334237

noncomputable section

/-- A042988: Primes not congruent to -1 (mod 7).

Offset 0, canonical program `A042988.P9376538551254334237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042988 (n : ℕ) : ℤ :=
  (A042988.P9376538551254334237.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045664.P10163269847227854319

`A000007(n)+n*A027375(n)`
-/

namespace A045664.P10163269847227854319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027375 n

end

end A045664.P10163269847227854319

noncomputable section

/-- A045664: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement.

Offset 0, canonical program `A045664.P10163269847227854319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664 (n : ℕ) : ℤ :=
  A045664.P10163269847227854319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046643.P2213597876425122819

`∏{e}[n+1, A001790(#)]`
-/

namespace A046643.P2213597876425122819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001790 (Nat.factorization (f1 n) p)

end

end A046643.P2213597876425122819

noncomputable section

/-- A046643: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives numerator of b_n.

Offset 1, canonical program `A046643.P2213597876425122819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046643 (n : ℕ) : ℤ :=
  A046643.P2213597876425122819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046692.P2122140602833396605

`∑{d}[n+1, #*A327960((n+1)/#)]`
-/

namespace A046692.P2122140602833396605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P2122140602833396605

noncomputable section

/-- A046692: Dirichlet inverse of sigma function (A000203).

Offset 1, canonical program `A046692.P2122140602833396605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046692 (n : ℕ) : ℤ :=
  A046692.P2122140602833396605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048896.P6461019053085857547

`2^A048881(n)`
-/

namespace A048896.P6461019053085857547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048881 n : ℤ)

end

end A048896.P6461019053085857547

noncomputable section

/-- A048896: a(n) = 2^(A000120(n+1) - 1), n >= 0.

Offset 0, canonical program `A048896.P6461019053085857547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048896.P6461019053085857547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049084.P10934933317972537770

`A000720(n+1)*A010051(n+1)`
-/

namespace A049084.P10934933317972537770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A010051 (n + 1)

end

end A049084.P10934933317972537770

noncomputable section

/-- A049084: a(n) = pi(n) if n is prime, otherwise 0.

Offset 1, canonical program `A049084.P10934933317972537770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049084 (n : ℕ) : ℤ :=
  A049084.P10934933317972537770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049710.P6790608665925512686

`3-A006928(n+1)`
-/

namespace A049710.P6790608665925512686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A006928 (n + 1)

end

end A049710.P6790608665925512686

noncomputable section

/-- A049710: a(n)=3-k(n), where k=A006928; also, a and k have the same runlength sequence, with n-th term k(n-1) for n >= 2.

Offset 1, canonical program `A049710.P6790608665925512686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049710 (n : ℕ) : ℤ :=
  A049710.P6790608665925512686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050168.P2561838391192846284

`A026010(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A050168.P2561838391192846284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026010 (n - 2) + a (n - 1)

end

end A050168.P2561838391192846284

noncomputable section

/-- A050168: a(0) = 1; for n > 0, a(n) = binomial(n, floor(n/2)) + binomial(n-1, floor(n/2)).

Offset 0, canonical program `A050168.P2561838391192846284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A050168 (n : ℕ) : ℤ :=
  A050168.P2561838391192846284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A050168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050182.P14663664458586946178

`A275206(n+2)/2`
-/

namespace A050182.P14663664458586946178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275206 (n + 2) : ℚ) / 2

end

end A050182.P14663664458586946178

noncomputable section

/-- A050182: a(n) = T(2*n+4, n), array T as in A051168 (a count of Lyndon words).

Offset 0, canonical program `A050182.P14663664458586946178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A050182 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050182.P14663664458586946178.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A050182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051162.P14261216125704105833

`A003056(n)+A002262(n)`
-/

namespace A051162.P14261216125704105833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A002262 n

end

end A051162.P14261216125704105833

noncomputable section

/-- A051162: Triangle T(n,k) = n+k, n >= 0, 0 <= k <= n.

Offset 0, canonical program `A051162.P14261216125704105833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051162 (n : ℕ) : ℤ :=
  A051162.P14261216125704105833.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053603.P8228624408487937013

`A008441(n)-A046698(A198954(n))`
-/

namespace A053603.P8228624408487937013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n - A046698 (A198954 n).toNat

end

end A053603.P8228624408487937013

noncomputable section

/-- A053603: Number of ways to write n as an ordered sum of two nonzero triangular numbers.

Offset 0, canonical program `A053603.P8228624408487937013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603 (n : ℕ) : ℤ :=
  A053603.P8228624408487937013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054429.P15830505809377255820

`A063946(A117120(n+1))`
-/

namespace A054429.P15830505809377255820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A117120 (n + 1)).toNat

end

end A054429.P15830505809377255820

noncomputable section

/-- A054429: Simple self-inverse permutation of natural numbers: list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

Offset 1, canonical program `A054429.P15830505809377255820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, A117120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054429 (n : ℕ) : ℤ :=
  A054429.P15830505809377255820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, A117120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054546.P12235855701833693749

`A065310(A000038(n)²+n)`
-/

namespace A054546.P12235855701833693749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (A000038 n ^ 2 + (n : ℤ)).toNat

end

end A054546.P12235855701833693749

noncomputable section

/-- A054546: First differences of nonprimes (including 0 and 1, A002808).

Offset 1, canonical program `A054546.P12235855701833693749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054546 (n : ℕ) : ℤ :=
  A054546.P12235855701833693749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054785.P15699579488212647133

`2*A002131(n+1)`
-/

namespace A054785.P15699579488212647133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002131 (n + 1)

end

end A054785.P15699579488212647133

noncomputable section

/-- A054785: a(n) = sigma(2n) - sigma(n), where sigma is the sum of divisors of n, A000203.

Offset 1, canonical program `A054785.P15699579488212647133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054785 (n : ℕ) : ℤ :=
  A054785.P15699579488212647133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055029.P8500131277876422925

`char[A002144(n+1)]+char[A055025(n+1)]`
-/

namespace A055029.P8500131277876422925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A055029.P8500131277876422925

noncomputable section

/-- A055029: Number of inequivalent Gaussian primes of norm n.

Offset 0, canonical program `A055029.P8500131277876422925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055029 (n : ℕ) : ℤ :=
  (A055029.P8500131277876422925.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055034.P626743345724303552

`A065033(n)-A219839(n+1)`
-/

namespace A055034.P626743345724303552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A219839 (n + 1)

end

end A055034.P626743345724303552

noncomputable section

/-- A055034: a(1) = 1, a(n) = phi(2*n)/2 for n > 1.

Offset 1, canonical program `A055034.P626743345724303552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055034 (n : ℕ) : ℤ :=
  A055034.P626743345724303552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055235.P6827008974222862054

`2*(A023745(n+1)+1)`
-/

namespace A055235.P6827008974222862054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023745 (n + 1) + 1)

end

end A055235.P6827008974222862054

noncomputable section

/-- A055235: Sums of two powers of 3.

Offset 0, canonical program `A055235.P6827008974222862054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055235 (n : ℕ) : ℤ :=
  A055235.P6827008974222862054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055400.P8178279629635040158

`n-A048762(n)`
-/

namespace A055400.P8178279629635040158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048762 n

end

end A055400.P8178279629635040158

noncomputable section

/-- A055400: Cube excess: difference between n and largest cube <= n.

Offset 0, canonical program `A055400.P8178279629635040158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055400 (n : ℕ) : ℤ :=
  A055400.P8178279629635040158.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055401.P8525785156040280502

`a(A055400(n))+1` with `a(0)=0`
-/

namespace A055401.P8525785156040280502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A055400 n).toNat + 1

end

end A055401.P8525785156040280502

noncomputable section

/-- A055401: Number of positive cubes needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A055401.P8525785156040280502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055400, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055401 (n : ℕ) : ℤ :=
  (A055401.P8525785156040280502.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055400, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056142.P638140004868031470

`A059995(A275238(n))`
-/

namespace A056142.P638140004868031470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A275238 n).toNat

end

end A056142.P638140004868031470

noncomputable section

/-- A056142: Concatenate n, floor[n/10], floor[n/100] ... (but do not continue if floor[.]=0).

Offset 0, canonical program `A056142.P638140004868031470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142 (n : ℕ) : ℤ :=
  A056142.P638140004868031470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056278.P6109967652677741343

`A000740(n+1)%(2^n)`
-/

namespace A056278.P6109967652677741343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000740 (n + 1)) (2 ^ n : ℤ)

end

end A056278.P6109967652677741343

noncomputable section

/-- A056278: Number of primitive (aperiodic) word structures of length n which contain exactly two different symbols.

Offset 1, canonical program `A056278.P6109967652677741343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056278 (n : ℕ) : ℤ :=
  A056278.P6109967652677741343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057001.P8794725094572777734

`Δ[A055684(n+3)]`
-/

namespace A057001.P8794725094572777734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P8794725094572777734

noncomputable section

/-- A057001: (phi(n+1)-phi(n))/2.

Offset 3, canonical program `A057001.P8794725094572777734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057001 (n : ℕ) : ℤ :=
  A057001.P8794725094572777734.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057467.P16767717287509129443

`gcd(A001223(n+1), A031131(n+1))`
-/

namespace A057467.P16767717287509129443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A031131 (n + 1))

end

end A057467.P16767717287509129443

noncomputable section

/-- A057467: GCD of n-th and (n+1)-st term in the sequence of first differences between primes, A001223.

Offset 1, canonical program `A057467.P16767717287509129443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057467 (n : ℕ) : ℤ :=
  (A057467.P16767717287509129443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059268.P15217573790077737885

`A018900(n+1)-A140513(n)`
-/

namespace A059268.P15217573790077737885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A140513 n

end

end A059268.P15217573790077737885

noncomputable section

/-- A059268: Concatenate subsequences [2^0, 2^1, ..., 2^n] for n = 0, 1, 2, ...

Offset 0, canonical program `A059268.P15217573790077737885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268 (n : ℕ) : ℤ :=
  A059268.P15217573790077737885.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060191.P13050475962778099044

`∪[A031337(n+1), A031385(n+1)]`
-/

namespace A060191.P13050475962778099044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060191.P13050475962778099044

noncomputable section

/-- A060191: Union_i p(4i), p(4i+1), where p(k) = k-th prime.

Offset 0, canonical program `A060191.P13050475962778099044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060191 (n : ℕ) : ℤ :=
  (A060191.P13050475962778099044.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060192.P8871710138267274484

`A100479(n+1)-A060191(n)`
-/

namespace A060192.P8871710138267274484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A060191 n

end

end A060192.P8871710138267274484

noncomputable section

/-- A060192: Union_i p(4i+2), p(4i+3), where p(k) = k-th prime.

Offset 0, canonical program `A060192.P8871710138267274484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192 (n : ℕ) : ℤ :=
  A060192.P8871710138267274484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060615.P17765093848988512196

`Δ[A024918(n+1)]²-1`
-/

namespace A060615.P17765093848988512196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A060615.P17765093848988512196

noncomputable section

/-- A060615: Number of conjugacy classes in the group GL_2(K) when K is a finite field with q = p^m for a prime p and m >= 1.

Offset 0, canonical program `A060615.P17765093848988512196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060615 (n : ℕ) : ℤ :=
  A060615.P17765093848988512196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061557.P6533906729672181008

`A000782(n+2)`
-/

namespace A061557.P6533906729672181008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 2)

end

end A061557.P6533906729672181008

noncomputable section

/-- A061557: a(n) = (7*n+2)*C(n)/(n+2), where C(n) is the n-th Catalan number.

Offset 1, canonical program `A061557.P6533906729672181008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A061557 (n : ℕ) : ℤ :=
  A061557.P6533906729672181008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A061557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062011.P17525320077853469406

`2*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062011.P17525320077853469406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

end

end A062011.P17525320077853469406

noncomputable section

/-- A062011: a(n) = 2*tau(n) = 2*A000005(n).

Offset 1, canonical program `A062011.P17525320077853469406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062011 (n : ℕ) : ℤ :=
  A062011.P17525320077853469406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062379.P16391056778960294724

`A062378(A003557(n+1))`
-/

namespace A062379.P16391056778960294724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A003557 (n + 1)).toNat

end

end A062379.P16391056778960294724

noncomputable section

/-- A062379: n divided by largest 4th-power-free factor of n.

Offset 1, canonical program `A062379.P16391056778960294724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062379 (n : ℕ) : ℤ :=
  A062379.P16391056778960294724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063264.P15008203233816380364

`A034263(n)+∑[A064058(n)]`
-/

namespace A063264.P15008203233816380364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063264.P15008203233816380364

noncomputable section

/-- A063264: Tenth column (k=9) of sextinomial array A063260.

Offset 0, canonical program `A063264.P15008203233816380364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063264 (n : ℕ) : ℤ :=
  A063264.P15008203233816380364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063872.P6653765123513031223

`A025473(n+2)-1`
-/

namespace A063872.P6653765123513031223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2) - 1

end

end A063872.P6653765123513031223

noncomputable section

/-- A063872: Let m be the n-th positive integer such that phi(m) is divisible by m - phi(m). Then a(n) = phi(m)/(m - phi(m)).

Offset 1, canonical program `A063872.P6653765123513031223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063872 (n : ℕ) : ℤ :=
  A063872.P6653765123513031223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063962.P11030534656895760199

`∑{e}[A382486(n+1), #]`
-/

namespace A063962.P11030534656895760199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A063962.P11030534656895760199

noncomputable section

/-- A063962: Number of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A063962.P11030534656895760199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063962 (n : ℕ) : ℤ :=
  (A063962.P11030534656895760199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064531.P14938962011606256932

`A064693(n)-A316865(n)`
-/

namespace A064531.P14938962011606256932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 n - A316865 n

end

end A064531.P14938962011606256932

noncomputable section

/-- A064531: Number of connected components remaining when decimal expansion of the number n is cut from a piece of paper.

Offset 0, canonical program `A064531.P14938962011606256932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064531 (n : ℕ) : ℤ :=
  A064531.P14938962011606256932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064532.P10940684509799697832

`A064531(n)-1`
-/

namespace A064532.P10940684509799697832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064531 n - 1

end

end A064532.P10940684509799697832

noncomputable section

/-- A064532: Total number of holes in decimal expansion of the number n, assuming 4 has no hole.

Offset 0, canonical program `A064532.P10940684509799697832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064532 (n : ℕ) : ℤ :=
  A064532.P10940684509799697832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064547.P11832440237822956980

`log2(A037445(n+1))`
-/

namespace A064547.P11832440237822956980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A037445 (n + 1) : ℝ)

end

end A064547.P11832440237822956980

noncomputable section

/-- A064547: Sum of binary digits (or count of 1-bits) in the exponents of the prime factorization of n.

Offset 1, canonical program `A064547.P11832440237822956980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064547.P11832440237822956980.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065330.P5168762924759292098

`A038502(or(1, (n+1)/(or(n, n+1)-n)))`
-/

namespace A065330.P5168762924759292098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)))).toNat

end

end A065330.P5168762924759292098

noncomputable section

/-- A065330: Largest divisor of n coprime to 6. I.e., a(n) = max { k | gcd(n,k)=k and gcd(k,6)=1 }.

Offset 1, canonical program `A065330.P5168762924759292098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065330 (n : ℕ) : ℤ :=
  A065330.P5168762924759292098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065331.P8774004989157438008

`A006519(n+1)*A038500(n+1)`
-/

namespace A065331.P8774004989157438008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1)

end

end A065331.P8774004989157438008

noncomputable section

/-- A065331: Largest 3-smooth divisor of n.

Offset 1, canonical program `A065331.P8774004989157438008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065331 (n : ℕ) : ℤ :=
  A065331.P8774004989157438008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065430.P4340305447279095873

`A000056(n+1)/A000034(n)`
-/

namespace A065430.P4340305447279095873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A065430.P4340305447279095873

noncomputable section

/-- A065430: Order of commutator subgroup of GL(2,Z_n) (invertible 2 X 2 matrices mod n: A000252).

Offset 1, canonical program `A065430.P4340305447279095873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065430.P4340305447279095873.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065982.P2143420065164690676

`A162551(n)+4*a(n-1)` with `a(0)=2`
-/

namespace A065982.P2143420065164690676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A162551 n + 4 * a (n - 1)

end

end A065982.P2143420065164690676

noncomputable section

/-- A065982: a(n) = (n+1)*binomial(2*n,n) - 2^(2*n-1).

Offset 1, canonical program `A065982.P2143420065164690676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A065982 (n : ℕ) : ℤ :=
  A065982.P2143420065164690676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A065982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069010.P14932719103722593844

`ceil(A005811(n)/2)`
-/

namespace A069010.P14932719103722593844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005811 n : ℚ) / 2⌉

end

end A069010.P14932719103722593844

noncomputable section

/-- A069010: Number of runs of 1's in the binary representation of n.

Offset 0, canonical program `A069010.P14932719103722593844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069010 (n : ℕ) : ℤ :=
  A069010.P14932719103722593844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069011.P9337676359071489470

`A002262(n)²+A003056(n)²`
-/

namespace A069011.P9337676359071489470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + A003056 n ^ 2

end

end A069011.P9337676359071489470

noncomputable section

/-- A069011: Triangle with T(n,k) = n^2 + k^2.

Offset 0, canonical program `A069011.P9337676359071489470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069011 (n : ℕ) : ℤ :=
  A069011.P9337676359071489470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069906.P3213861137805963780

`A026811(n)-∑[A026810(A142150(n))]`
-/

namespace A069906.P3213861137805963780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069906.P3213861137805963780

noncomputable section

/-- A069906: Number of pentagons that can be formed with perimeter n. In other words, number of partitions of n into five parts such that the sum of any four is more than the fifth.

Offset 0, canonical program `A069906.P3213861137805963780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069906 (n : ℕ) : ℤ :=
  A069906.P3213861137805963780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070320.P6872280522638046061

`A007917(or(1, n)+1)-1`
-/

namespace A070320.P6872280522638046061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Nat.lor 1 n + 1) - 1

end

end A070320.P6872280522638046061

noncomputable section

/-- A070320: a(n) = Max( phi(k) : k=1..n ).

Offset 1, canonical program `A070320.P6872280522638046061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320 (n : ℕ) : ℤ :=
  A070320.P6872280522638046061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071538.P6551224478824605829

`∑[A010051(n+1)*A010051(n+3)]`
-/

namespace A071538.P6551224478824605829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A010051 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P6551224478824605829

noncomputable section

/-- A071538: Number of twin prime pairs (p, p+2) with p <= n.

Offset 1, canonical program `A071538.P6551224478824605829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071538 (n : ℕ) : ℤ :=
  A071538.P6551224478824605829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071719.P16601501130629148270

`A067324(n)-A000782(n+1)`
-/

namespace A071719.P16601501130629148270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A000782 (n + 1)

end

end A071719.P16601501130629148270

noncomputable section

/-- A071719: Expansion of (1+x^2*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071719.P16601501130629148270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071719 (n : ℕ) : ℤ :=
  A071719.P16601501130629148270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071722.P10689110326163623616

`A099376(n)+A026012(n)`
-/

namespace A071722.P10689110326163623616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026012 n

end

end A071722.P10689110326163623616

noncomputable section

/-- A071722: Expansion of (1+x^2*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071722.P10689110326163623616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071722 (n : ℕ) : ℤ :=
  A071722.P10689110326163623616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071723.P7421491437555663530

`A071719(n)+A000588(n)`
-/

namespace A071723.P7421491437555663530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071719 n + A000588 n

end

end A071723.P7421491437555663530

noncomputable section

/-- A071723: Expansion of (1+x^2*C^2)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071723.P7421491437555663530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071723 (n : ℕ) : ℤ :=
  A071723.P7421491437555663530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071724.P13075293376280166576

`Δ[A141351(n)]`
-/

namespace A071724.P13075293376280166576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P13075293376280166576

noncomputable section

/-- A071724: a(n) = 3*binomial(2n, n-1)/(n+2), n > 0, with a(0)=1.

Offset 0, canonical program `A071724.P13075293376280166576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071724 (n : ℕ) : ℤ :=
  A071724.P13075293376280166576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071732.P16807153438452664902

`A071718(n)-Δ[A120588(n)]`
-/

namespace A071732.P16807153438452664902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - (f1 (n + 1) - f1 n)

end

end A071732.P16807153438452664902

noncomputable section

/-- A071732: Expansion of (1+x^3*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071732.P16807153438452664902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071732 (n : ℕ) : ℤ :=
  A071732.P16807153438452664902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071735.P2830187826988805830

`A071738(n)+A000245(n)`
-/

namespace A071735.P2830187826988805830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n + A000245 n

end

end A071735.P2830187826988805830

noncomputable section

/-- A071735: Expansion of (1+x^3*C^3)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071735.P2830187826988805830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071735 (n : ℕ) : ℤ :=
  A071735.P2830187826988805830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071736.P17590571516365406048

`A071725(n)+Δ[A071724(n)]`
-/

namespace A071736.P17590571516365406048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n + (f1 (n + 1) - f1 n)

end

end A071736.P17590571516365406048

noncomputable section

/-- A071736: Expansion of (1+x^3*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071736.P17590571516365406048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071736 (n : ℕ) : ℤ :=
  A071736.P17590571516365406048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071739.P1815555829644906627

`A071736(n)-A099376(n)`
-/

namespace A071739.P1815555829644906627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - A099376 n

end

end A071739.P1815555829644906627

noncomputable section

/-- A071739: Expansion of (1+x^3*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071739.P1815555829644906627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071739 (n : ℕ) : ℤ :=
  A071739.P1815555829644906627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071756.P14006536037210745974

`A071739(n)+Δ[A071738(n)]`
-/

namespace A071756.P14006536037210745974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 n + (f1 (n + 1) - f1 n)

end

end A071756.P14006536037210745974

noncomputable section

/-- A071756: Expansion of (1+x^4*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071756.P14006536037210745974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756 (n : ℕ) : ℤ :=
  A071756.P14006536037210745974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072437.P9080563627844174689

`lt[A140211(n+1), 2]+1`
-/

namespace A072437.P9080563627844174689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140211 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P9080563627844174689

noncomputable section

/-- A072437: Numbers with no prime factors of form 4*k+3.

Offset 1, canonical program `A072437.P9080563627844174689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A072437 (n : ℕ) : ℤ :=
  (A072437.P9080563627844174689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A072437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073423.P1898494070578703706

`A055235(n)%3`
-/

namespace A073423.P1898494070578703706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055235 n) 3

end

end A073423.P1898494070578703706

noncomputable section

/-- A073423: Sums of two powers of zero: triangle read by rows: T(m,n) = 0^n + 0^m, n >= 0, m = 0..n.

Offset 0, canonical program `A073423.P1898494070578703706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073423 (n : ℕ) : ℤ :=
  A073423.P1898494070578703706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073841.P7314902352590072057

`A025543(A065896(n+1))`
-/

namespace A073841.P7314902352590072057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A065896 (n + 1)).toNat

end

end A073841.P7314902352590072057

noncomputable section

/-- A073841: LCM of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073841.P7314902352590072057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841 (n : ℕ) : ℤ :=
  A073841.P7314902352590072057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074286.P18124953624771760881

`∑[2-A049705(n+1)]`
-/

namespace A074286.P18124953624771760881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P18124953624771760881

noncomputable section

/-- A074286: Partial sum of the Kolakoski sequence (A000002) minus n.

Offset 1, canonical program `A074286.P18124953624771760881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074286 (n : ℕ) : ℤ :=
  A074286.P18124953624771760881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074290.P6161570627795072217

`gcd(2, n)-A049705(n+1)`
-/

namespace A074290.P6161570627795072217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - A049705 (n + 1)

end

end A074290.P6161570627795072217

noncomputable section

/-- A074290: Difference between Kolakoski(n)=A000002(n) and 1 (n odd) or 2 (n even).

Offset 1, canonical program `A074290.P6161570627795072217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074290 (n : ℕ) : ℤ :=
  A074290.P6161570627795072217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074909.P6707642907239843837

`C(∑[A010054(n)], A002262(n))`
-/

namespace A074909.P6707642907239843837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A002262 n).toNat

end

end A074909.P6707642907239843837

noncomputable section

/-- A074909: Running sum of Pascal's triangle (A007318), or beheaded Pascal's triangle read by beheaded rows.

Offset 0, canonical program `A074909.P6707642907239843837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074909 (n : ℕ) : ℤ :=
  (A074909.P6707642907239843837.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075643.P5171669184174618456

`gcd(A033322(n+1), A182986(n+1))`
-/

namespace A075643.P5171669184174618456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A182986 (n + 1))

end

end A075643.P5171669184174618456

noncomputable section

/-- A075643: Group the natural numbers so that the n-th group contains n numbers one each of a multiple of numbers from 1 to n so that the group sum is a multiple of (n+1): (2), (1, 8), (3, 4, 9), (5, 6, 12, 32), (7, 10, 15, 16, 30), (11, 14, 18, 20, 25, 24), ... Sequence gives initial terms of groups.

Offset 1, canonical program `A075643.P5171669184174618456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4055 terms. -/
def A075643 (n : ℕ) : ℤ :=
  (A075643.P5171669184174618456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4055 terms. -/
def A075643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076752.P13429521633124521481

`∑{d}[n+1, A206369(#)]`
-/

namespace A076752.P13429521633124521481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d

end

end A076752.P13429521633124521481

noncomputable section

/-- A076752: a(n) = Sum_{d is a square divisor of n} n/d.

Offset 1, canonical program `A076752.P13429521633124521481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076752 (n : ℕ) : ℤ :=
  A076752.P13429521633124521481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078510.P9276633091591292466

`a(n-1)+a(n-A265359(n))` with `a(0)=0, a(1)=1`
-/

namespace A078510.P9276633091591292466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a ((n : ℤ) - A265359 n).toNat

end

end A078510.P9276633091591292466

noncomputable section

/-- A078510: Spiro-Fibonacci numbers, a(n) = sum of two previous terms that are nearest when terms arranged in a spiral.

Offset 0, canonical program `A078510.P9276633091591292466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078510 (n : ℕ) : ℤ :=
  (A078510.P9276633091591292466.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081204.P12343401143930803537

`∪[A005809(n), A165817(n)]`
-/

namespace A081204.P12343401143930803537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081204.P12343401143930803537

noncomputable section

/-- A081204: Staircase on Pascal's triangle.

Offset 0, canonical program `A081204.P12343401143930803537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A081204 (n : ℕ) : ℤ :=
  (A081204.P12343401143930803537.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A081204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082852.P5408554968582082285

`A155587(A072643(n))-1`
-/

namespace A082852.P5408554968582082285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A072643 n).toNat - 1

end

end A082852.P5408554968582082285

noncomputable section

/-- A082852: a(0)=0, a(n) = A014137(A072643(n)-1).

Offset 0, canonical program `A082852.P5408554968582082285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852 (n : ℕ) : ℤ :=
  A082852.P5408554968582082285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082853.P1640668448501088657

`n-A082852(n)`
-/

namespace A082853.P1640668448501088657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082852 n

end

end A082853.P1640668448501088657

noncomputable section

/-- A082853: Integers 0 to Catalan(n)-1 followed by integers 0 to Catalan(n+1)-1 etc.

Offset 0, canonical program `A082853.P1640668448501088657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853 (n : ℕ) : ℤ :=
  A082853.P1640668448501088657.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082854.P12286261217204783518

`A082853(n)+1`
-/

namespace A082854.P12286261217204783518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 n + 1

end

end A082854.P12286261217204783518

noncomputable section

/-- A082854: Integers 1 to Catalan(n) followed by integers 1 to Catalan(n+1) etc.

Offset 0, canonical program `A082854.P12286261217204783518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082854 (n : ℕ) : ℤ :=
  A082854.P12286261217204783518.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085373.P10803437188431577307

`A119578(n+1)/2`
-/

namespace A085373.P10803437188431577307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119578 (n + 1) : ℚ) / 2

end

end A085373.P10803437188431577307

noncomputable section

/-- A085373: a(n) = binomial(2n+1, n+1)*binomial(n+2, 2).

Offset 0, canonical program `A085373.P10803437188431577307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085373 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085373.P10803437188431577307.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091773.P6565989770376659951

`A069906(2*n)+A002621(n)`
-/

namespace A091773.P6565989770376659951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069906 (2 * n) + A002621 n

end

end A091773.P6565989770376659951

noncomputable section

/-- A091773: G.f.: Product((1+x^i)/(1-x^i),i=1..n-1)/(1-x^n), with n = 5.

Offset 0, canonical program `A091773.P6565989770376659951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A091773 (n : ℕ) : ℤ :=
  A091773.P6565989770376659951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A091773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094587.P14878234686992178424

`A008279(A061579(n))`
-/

namespace A094587.P14878234686992178424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat

end

end A094587.P14878234686992178424

noncomputable section

/-- A094587: Triangle of permutation coefficients arranged with 1's on the diagonal. Also, triangle of permutations on n letters with exactly k+1 cycles and with the first k+1 letters in separate cycles.

Offset 0, canonical program `A094587.P14878234686992178424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A094587 (n : ℕ) : ℤ :=
  A094587.P14878234686992178424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A094587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097807.P14328121779268374373

`A009531(A099375(n))`
-/

namespace A097807.P14328121779268374373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat

end

end A097807.P14328121779268374373

noncomputable section

/-- A097807: Riordan array (1/(1+x),1) read by rows.

Offset 0, canonical program `A097807.P14328121779268374373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097807 (n : ℕ) : ℤ :=
  A097807.P14328121779268374373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098354.P12141781683194391342

`2*A140513(n)`
-/

namespace A098354.P12141781683194391342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n

end

end A098354.P12141781683194391342

noncomputable section

/-- A098354: Multiplication table of the powers of 2 read by antidiagonals.

Offset 1, canonical program `A098354.P12141781683194391342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098354 (n : ℕ) : ℤ :=
  A098354.P12141781683194391342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098361.P7044536785034610126

`A000142(A002262(n))*A000142(A025581(n))`
-/

namespace A098361.P7044536785034610126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002262 n).toNat * A000142 (A025581 n).toNat

end

end A098361.P7044536785034610126

noncomputable section

/-- A098361: Multiplication table of the factorial numbers read by antidiagonals.

Offset 0, canonical program `A098361.P7044536785034610126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A098361 (n : ℕ) : ℤ :=
  A098361.P7044536785034610126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A098361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100066.P11903303257243455061

`∑[∑[n%2]*A097331(n)]`
-/

namespace A100066.P11903303257243455061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P11903303257243455061

noncomputable section

/-- A100066: Expansion of x/((1-x)*sqrt(1-4*x^2)).

Offset 0, canonical program `A100066.P11903303257243455061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A100066 (n : ℕ) : ℤ :=
  A100066.P11903303257243455061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A100066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100429.P11083441272266622495

`A022303(comp[2*n+5]+2)`
-/

namespace A100429.P11083441272266622495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A100429.P11083441272266622495

noncomputable section

/-- A100429: Bisection of Kolakoski sequence A000002.

Offset 1, canonical program `A100429.P11083441272266622495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100429 (n : ℕ) : ℤ :=
  A100429.P11083441272266622495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101279.P13195292340329059168

`A025480(n)+A036987(n)`
-/

namespace A101279.P13195292340329059168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A036987 n

end

end A101279.P13195292340329059168

noncomputable section

/-- A101279: a(1) = 1; a(2k) = a(k), a(2k+1) = k.

Offset 1, canonical program `A101279.P13195292340329059168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101279 (n : ℕ) : ℤ :=
  A101279.P13195292340329059168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102548.P7683038375054225144

`∑[A057427(A035184(n+1))]`
-/

namespace A102548.P7683038375054225144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P7683038375054225144

noncomputable section

/-- A102548: Number of positive integers <= n that are expressible in the form u^2+v^2, with u and v integers.

Offset 1, canonical program `A102548.P7683038375054225144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548 (n : ℕ) : ℤ :=
  A102548.P7683038375054225144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103116.P13446593034198861880

`A005598(n)-1`
-/

namespace A103116.P13446593034198861880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n - 1

end

end A103116.P13446593034198861880

noncomputable section

/-- A103116: a(n) = Sum_{i=1..n} (n-i+1)*phi(i).

Offset 0, canonical program `A103116.P13446593034198861880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103116 (n : ℕ) : ℤ :=
  A103116.P13446593034198861880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104722.P17182887965710500432

`A059348(n+2)-A000007(n)`
-/

namespace A104722.P17182887965710500432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (n + 2) - A000007 n

end

end A104722.P17182887965710500432

noncomputable section

/-- A104722: Self-convolution of repeated Catalan numbers.

Offset 0, canonical program `A104722.P17182887965710500432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A104722 (n : ℕ) : ℤ :=
  A104722.P17182887965710500432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A104722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105523.P5299360234432620638

`A087960(n)*A097331(n)`
-/

namespace A105523.P5299360234432620638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A097331 n

end

end A105523.P5299360234432620638

noncomputable section

/-- A105523: Expansion of 1-x*c(-x^2) where c(x) is the g.f. of A000108.

Offset 0, canonical program `A105523.P5299360234432620638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A105523 (n : ℕ) : ℤ :=
  A105523.P5299360234432620638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A105523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105695.P7871953186196150134

`Δ[A086246(n)]`
-/

namespace A105695.P7871953186196150134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P7871953186196150134

noncomputable section

/-- A105695: Expansion of (1-x)*c(x/(1+x)), where c(x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A105695.P7871953186196150134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A105695 (n : ℕ) : ℤ :=
  A105695.P7871953186196150134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A105695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106400.P11201390576172776043

`1-2*A010060(n)`
-/

namespace A106400.P11201390576172776043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A010060 n

end

end A106400.P11201390576172776043

noncomputable section

/-- A106400: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and -1's.

Offset 0, canonical program `A106400.P11201390576172776043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106400 (n : ℕ) : ℤ :=
  A106400.P11201390576172776043.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110005.P16508309867021572198

`A110004(A263449(n))`
-/

namespace A110005.P16508309867021572198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A263449 n).toNat

end

end A110005.P16508309867021572198

noncomputable section

/-- A110005: n followed by n^2 followed by n^4 followed by n^3.

Offset 1, canonical program `A110005.P16508309867021572198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110005 (n : ℕ) : ℤ :=
  A110005.P16508309867021572198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110009.P234597410290863382

`A110005(A116966(n))`
-/

namespace A110009.P234597410290863382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A116966 n).toNat

end

end A110009.P234597410290863382

noncomputable section

/-- A110009: n followed by n^4 followed by n^2 followed by n^3.

Offset 1, canonical program `A110009.P234597410290863382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110009 (n : ℕ) : ℤ :=
  A110009.P234597410290863382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110653.P15905790512607003949

`A110009(xor(2, n)+1)`
-/

namespace A110653.P15905790512607003949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (Nat.xor 2 n + 1)

end

end A110653.P15905790512607003949

noncomputable section

/-- A110653: n^2 followed by n^3 followed by n followed by n^4.

Offset 1, canonical program `A110653.P15905790512607003949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653 (n : ℕ) : ℤ :=
  A110653.P15905790512607003949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110963.P3344771894533151408

`A025480(floor(n/(xor(n, n+1)+1)))+1`
-/

namespace A110963.P3344771894533151408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + 1

end

end A110963.P3344771894533151408

noncomputable section

/-- A110963: Fractalization of Kimberling's paraphrase of the binary number system beginning with 1.

Offset 1, canonical program `A110963.P3344771894533151408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110963 (n : ℕ) : ℤ :=
  A110963.P3344771894533151408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112498.P5478417839947930055

`A055357(n+4)+A000460(n+3)`
-/

namespace A112498.P5478417839947930055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055357 (n + 4) + A000460 (n + 3)

end

end A112498.P5478417839947930055

noncomputable section

/-- A112498: Third column of second-order Eulerian triangle A008517 divided by 2.

Offset 3, canonical program `A112498.P5478417839947930055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A112498 (n : ℕ) : ℤ :=
  A112498.P5478417839947930055.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A112498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117869.P18256498155837451709

`∑[A001671(n)]-n`
-/

namespace A117869.P18256498155837451709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117869.P18256498155837451709

noncomputable section

/-- A117869: Partial sums of A000149.

Offset 0, canonical program `A117869.P18256498155837451709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869 (n : ℕ) : ℤ :=
  A117869.P18256498155837451709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118011.P7528253608817175567

`A014132(n+1)+1+n`
-/

namespace A118011.P7528253608817175567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + 1 + (n : ℤ)

end

end A118011.P7528253608817175567

noncomputable section

/-- A118011: Complement of the Connell sequence (A001614); a(n) = 4*n - A001614(n).

Offset 1, canonical program `A118011.P7528253608817175567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118011 (n : ℕ) : ℤ :=
  A118011.P7528253608817175567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118447.P6254053121219792045

`(n+2)*A172060(n+1)`
-/

namespace A118447.P6254053121219792045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A172060 (n + 1)

end

end A118447.P6254053121219792045

noncomputable section

/-- A118447: Number of rooted n-edge one-vertex maps on the Klein bottle (dually: one-face maps).

Offset 2, canonical program `A118447.P6254053121219792045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447 (n : ℕ) : ℤ :=
  A118447.P6254053121219792045.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120778.P3390227642440229667

`A046161(n+1)-A001790(n+1)`
-/

namespace A120778.P3390227642440229667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A001790 (n + 1)

end

end A120778.P3390227642440229667

noncomputable section

/-- A120778: Numerators of partial sums of Catalan numbers scaled by powers of 1/4.

Offset 0, canonical program `A120778.P3390227642440229667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778 (n : ℕ) : ℤ :=
  A120778.P3390227642440229667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121314.P5912152767662340236

`C(A051162(A056943(n)), 2*A025581(n))`
-/

namespace A121314.P5912152767662340236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 (A056943 n).toNat).toNat (2 * A025581 n).toNat

end

end A121314.P5912152767662340236

noncomputable section

/-- A121314: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A121314.P5912152767662340236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121314 (n : ℕ) : ℤ :=
  (A121314.P5912152767662340236.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121543.P10944832784654695596

`eq[2, 3-a(A049084(n))]` with `a(0)=1`
-/

namespace A121543.P10944832784654695596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (A049084 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121543.P10944832784654695596

noncomputable section

/-- A121543: "If k appears then the k-th prime doesn't", with a(1)=1.

Offset 1, canonical program `A121543.P10944832784654695596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A121543 (n : ℕ) : ℤ :=
  (A121543.P10944832784654695596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A121543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125061.P9643455173418565878

`A163746(A028310(n))`
-/

namespace A125061.P9643455173418565878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A028310 n).toNat

end

end A125061.P9643455173418565878

noncomputable section

/-- A125061: Expansion of psi(q) * psi(q^2) * chi(q^3) * chi(-q^6) in powers of q where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A125061.P9643455173418565878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125061 (n : ℕ) : ℤ :=
  A125061.P9643455173418565878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126120.P11676298334808492124

`A097331(n+1)`
-/

namespace A126120.P11676298334808492124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

end

end A126120.P11676298334808492124

noncomputable section

/-- A126120: Catalan numbers (A000108) interpolated with 0's.

Offset 0, canonical program `A126120.P11676298334808492124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120 (n : ℕ) : ℤ :=
  A126120.P11676298334808492124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126324.P3611906249858251984

`gcd(3*A097331(n), A097331(n+1))`
-/

namespace A126324.P3611906249858251984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A097331 n) (A097331 (n + 1))

end

end A126324.P3611906249858251984

noncomputable section

/-- A126324: a(2n) = Cat(n), a(2n+1) = 3*Cat(n), where Cat(n) = binomial(2n,n)/(n+1) are the Catalan numbers (A000108).

Offset 0, canonical program `A126324.P3611906249858251984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324 (n : ℕ) : ℤ :=
  (A126324.P3611906249858251984.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126869.P13432652929287595300

`Δ[A100066(n)]`
-/

namespace A126869.P13432652929287595300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126869.P13432652929287595300

noncomputable section

/-- A126869: a(n) = Sum_{k = 0..n} binomial(n,floor(k/2))*(-1)^(n-k).

Offset 0, canonical program `A126869.P13432652929287595300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A126869 (n : ℕ) : ℤ :=
  A126869.P13432652929287595300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A126869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131413.P831149329462037329

`A099375(n)+A051162(n)`
-/

namespace A131413.P831149329462037329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A051162 n

end

end A131413.P831149329462037329

noncomputable section

/-- A131413: Triangle read by rows: A002024 + A128076 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A131413.P831149329462037329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131413 (n : ℕ) : ℤ :=
  A131413.P831149329462037329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131816.P3689264983321174764

`A059268(n)+A130321(n)-1`
-/

namespace A131816.P3689264983321174764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A130321 n - 1)

end

end A131816.P3689264983321174764

noncomputable section

/-- A131816: Triangle read by rows: A130321 + A059268 - A000012 as infinite lower triangular matrices, where A130321 = (1; 2,1; 4,2,1; ...), A059268 = (1; 1,2; 1,2,4; ...) and A000012 = (1; 1,1; 1,1,1; ...).

Offset 0, canonical program `A131816.P3689264983321174764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131816 (n : ℕ) : ℤ :=
  A131816.P3689264983321174764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131821.P13312494062197045656

`val(A131816(n), 2)+1`
-/

namespace A131821.P13312494062197045656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2 + 1

end

end A131821.P13312494062197045656

noncomputable section

/-- A131821: Triangle read by rows: row n consists of n followed by (n-2) ones then n.

Offset 1, canonical program `A131821.P13312494062197045656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821 (n : ℕ) : ℤ :=
  (A131821.P13312494062197045656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131843.P9084898771744653632

`2*A131821(n+1)-1`
-/

namespace A131843.P9084898771744653632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131821 (n + 1) - 1

end

end A131843.P9084898771744653632

noncomputable section

/-- A131843: Triangle read by rows: 2*A131821 - A000012.

Offset 0, canonical program `A131843.P9084898771744653632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131843 (n : ℕ) : ℤ :=
  A131843.P9084898771744653632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132062.P6944061714416031410

`A001147(A025581(n))*A121314(n)`
-/

namespace A132062.P6944061714416031410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A025581 n).toNat * A121314 n

end

end A132062.P6944061714416031410

noncomputable section

/-- A132062: Sheffer triangle (1,1-sqrt(1-2*x)). Extended Bessel triangle A001497.

Offset 0, canonical program `A132062.P6944061714416031410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A132062 (n : ℕ) : ℤ :=
  A132062.P6944061714416031410.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A132062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133466.P7898642945469282061

`4*A005117(n+1)`
-/

namespace A133466.P7898642945469282061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005117 (n + 1)

end

end A133466.P7898642945469282061

noncomputable section

/-- A133466: Positive integers k for which there is exactly one integer i in {1,2,3,...,k-1} such that i*k is a square.

Offset 1, canonical program `A133466.P7898642945469282061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133466 (n : ℕ) : ℤ :=
  A133466.P7898642945469282061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134403.P11268712443066889151

`A010054(n)+A051162(n)-1`
-/

namespace A134403.P11268712443066889151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A051162 n - 1)

end

end A134403.P11268712443066889151

noncomputable section

/-- A134403: Triangle read by rows: row n consists of (n, n, (n+1), (n+2), (n+3), ...).

Offset 0, canonical program `A134403.P11268712443066889151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403 (n : ℕ) : ℤ :=
  A134403.P11268712443066889151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135223.P14742202444666781604

`A008805(A198954(n))+A002262(n)`
-/

namespace A135223.P14742202444666781604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A198954 n).toNat + A002262 n

end

end A135223.P14742202444666781604

noncomputable section

/-- A135223: Triangle A000012 * A127648 * A103451, read by rows.

Offset 1, canonical program `A135223.P14742202444666781604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223 (n : ℕ) : ℤ :=
  A135223.P14742202444666781604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136548.P17831031601123252591

`A008578(A230980(n)+1)`
-/

namespace A136548.P17831031601123252591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230980 n + 1).toNat

end

end A136548.P17831031601123252591

noncomputable section

/-- A136548: a(n) = max {k >= 1 | sigma(k) <= n}.

Offset 1, canonical program `A136548.P17831031601123252591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A136548 (n : ℕ) : ℤ :=
  A136548.P17831031601123252591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A136548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137948.P13154399146745911954

`A002262(n)!*A004736(n+1)`
-/

namespace A137948.P13154399146745911954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A004736 (n + 1)

end

end A137948.P13154399146745911954

noncomputable section

/-- A137948: Triangle read by rows, A000012 * A136579.

Offset 0, canonical program `A137948.P13154399146745911954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A137948 (n : ℕ) : ℤ :=
  A137948.P13154399146745911954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A137948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138364.P9887947875911683220

`n*A097331(n)`
-/

namespace A138364.P9887947875911683220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097331 n

end

end A138364.P9887947875911683220

noncomputable section

/-- A138364: The number of Motzkin n-paths with exactly one flat step.

Offset 0, canonical program `A138364.P9887947875911683220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A138364 (n : ℕ) : ℤ :=
  A138364.P9887947875911683220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A138364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139329.P7958588769808554264

`A000142(A023416(n))`
-/

namespace A139329.P7958588769808554264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A023416 n).toNat

end

end A139329.P7958588769808554264

noncomputable section

/-- A139329: a(n) = (factorial of the number of 0's in the binary expansion of n).

Offset 0, canonical program `A139329.P7958588769808554264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139329 (n : ℕ) : ℤ :=
  A139329.P7958588769808554264.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140978.P8755029839294562500

`∑[A073423(n)]^2`
-/

namespace A140978.P8755029839294562500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A140978.P8755029839294562500

noncomputable section

/-- A140978: Repeat (n+1)^2 n times.

Offset 1, canonical program `A140978.P8755029839294562500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140978 (n : ℕ) : ℤ :=
  A140978.P8755029839294562500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141169.P645474415276948061

`A000045(A002262(n))`
-/

namespace A141169.P645474415276948061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n).toNat

end

end A141169.P645474415276948061

noncomputable section

/-- A141169: Triangle of Fibonacci numbers, read by rows: T(n,k) = A000045(k), 0<=k<=n.

Offset 0, canonical program `A141169.P645474415276948061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141169 (n : ℕ) : ℤ :=
  A141169.P645474415276948061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141468.P11281748312058034280

`A018252(n+1)-A054546(n+1)`
-/

namespace A141468.P11281748312058034280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - A054546 (n + 1)

end

end A141468.P11281748312058034280

noncomputable section

/-- A141468: Zero together with the nonprime numbers A018252.

Offset 1, canonical program `A141468.P11281748312058034280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A054546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141468 (n : ℕ) : ℤ :=
  A141468.P11281748312058034280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A054546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143956.P16519828096933120938

`A131413(n)-A134403(n)`
-/

namespace A143956.P16519828096933120938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - A134403 n

end

end A143956.P16519828096933120938

noncomputable section

/-- A143956: Triangle read by rows, A000012 * A136521 * A000012; 1<=k<=n.

Offset 1, canonical program `A143956.P16519828096933120938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143956 (n : ℕ) : ℤ :=
  A143956.P16519828096933120938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144257.P7095601649401816149

`A128076(n+1)-A123578(n)`
-/

namespace A144257.P7095601649401816149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) - A123578 n

end

end A144257.P7095601649401816149

noncomputable section

/-- A144257: Weight array of A086270.

Offset 1, canonical program `A144257.P7095601649401816149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144257 (n : ℕ) : ℤ :=
  A144257.P7095601649401816149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151669.P3956910495585048482

`A001316(n)*A151666(n)`
-/

namespace A151669.P3956910495585048482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A151666 n

end

end A151669.P3956910495585048482

noncomputable section

/-- A151669: G.f.: Product_{k>=0} (1 + 2*x^(4^k)).

Offset 0, canonical program `A151669.P3956910495585048482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151669 (n : ℕ) : ℤ :=
  A151669.P3956910495585048482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151800.P4570031678714564115

`A007918(n+1)`
-/

namespace A151800.P4570031678714564115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1)

end

end A151800.P4570031678714564115

noncomputable section

/-- A151800: Least prime > n (version 2 of the "next prime" function).

Offset 0, canonical program `A151800.P4570031678714564115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151800 (n : ℕ) : ℤ :=
  A151800.P4570031678714564115.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155051.P17278447736844472372

`∑[A097331(or(1, n))]`
-/

namespace A155051.P17278447736844472372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P17278447736844472372

noncomputable section

/-- A155051: Expansion of c(x^2)*(1+x)/(1-x), c(x) the g.f. of A000108.

Offset 0, canonical program `A155051.P17278447736844472372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A155051 (n : ℕ) : ℤ :=
  A155051.P17278447736844472372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A155051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156077.P4037350870121945842

`∑[A078650(n+1)]`
-/

namespace A156077.P4037350870121945842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P4037350870121945842

noncomputable section

/-- A156077: a(n) = #{1<=k<=n : A000002(k)=1}.

Offset 1, canonical program `A156077.P4037350870121945842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156077 (n : ℕ) : ℤ :=
  A156077.P4037350870121945842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160713.P13545516001355508578

`A001316(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160713.P13545516001355508578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * 3

end

end A160713.P13545516001355508578

noncomputable section

/-- A160713: 3 times numbers of Gould's sequence: a(n) = A001316(n)*3.

Offset 0, canonical program `A160713.P13545516001355508578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160713 (n : ℕ) : ℤ :=
  A160713.P13545516001355508578.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161511.P16266007976091900386

`a(n-A048896(n-1))+1` with `a(0)=0`
-/

namespace A161511.P16266007976091900386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A048896 (n - 1)).toNat + 1

end

end A161511.P16266007976091900386

noncomputable section

/-- A161511: Number of 1...0 pairs in the binary representation of 2n.

Offset 0, canonical program `A161511.P16266007976091900386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161511 (n : ℕ) : ℤ :=
  (A161511.P16266007976091900386.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163109.P8558914357586201345

`A055034(lcm(2, ∏{e}[n+1, #+1]))`
-/

namespace A163109.P8558914357586201345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A163109.P8558914357586201345

noncomputable section

/-- A163109: a(n) = phi(tau(n)).

Offset 1, canonical program `A163109.P8558914357586201345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163109 (n : ℕ) : ℤ :=
  A163109.P8558914357586201345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166140.P17649384582351937107

`lcm(∏{p}[n+1, #], A166142(n+1))`
-/

namespace A166140.P17649384582351937107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A166142 (n + 1))

end

end A166140.P17649384582351937107

noncomputable section

/-- A166140: Product of the nonzero elements of the n-th row of A166139.

Offset 1, canonical program `A166140.P17649384582351937107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166140 (n : ℕ) : ℤ :=
  (A166140.P17649384582351937107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166684.P17288971262866478246

`∪[A000430(n+1), A008578(n+1)]`
-/

namespace A166684.P17288971262866478246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P17288971262866478246

noncomputable section

/-- A166684: Numbers n such that d(n)

Offset 1, canonical program `A166684.P17288971262866478246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166684 (n : ℕ) : ℤ :=
  (A166684.P17288971262866478246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167422.P17624924762505515996

`A104722(A004275(n))`
-/

namespace A167422.P17624924762505515996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004275 n).toNat

end

end A167422.P17624924762505515996

noncomputable section

/-- A167422: Expansion of (1+x)*c(x), c(x) the g.f. of A000108.

Offset 0, canonical program `A167422.P17624924762505515996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A167422 (n : ℕ) : ℤ :=
  A167422.P17624924762505515996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A167422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169683.P18438697268812114690

`A007089(eq[A081603(n), A189640(n+1)])`
-/

namespace A169683.P18438697268812114690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A169683.P18438697268812114690

noncomputable section

/-- A169683: The canonical skew-binary numbers.

Offset 0, canonical program `A169683.P18438697268812114690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. -/
def A169683 (n : ℕ) : ℤ :=
  A169683.P18438697268812114690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. -/
def A169683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173384.P18329896187983106844

`A001803(n)-A046161(n)`
-/

namespace A173384.P18329896187983106844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A046161 n

end

end A173384.P18329896187983106844

noncomputable section

/-- A173384: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((x-1)^(-1) + (1-x)^(-3/2)).

Offset 0, canonical program `A173384.P18329896187983106844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173384 (n : ℕ) : ℤ :=
  A173384.P18329896187983106844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176176.P17500551997501977256

`eq[A062173(n+1), A062175(n+1)]+1`
-/

namespace A176176.P17500551997501977256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176176.P17500551997501977256

noncomputable section

/-- A176176: Numbers k such that 2^(k-1) == 4^(k-1) (mod k).

Offset 1, canonical program `A176176.P17500551997501977256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A176176 (n : ℕ) : ℤ :=
  (A176176.P17500551997501977256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A176176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182492.P8158037386142892390

`-A105523(A123108(A022998(n)))`
-/

namespace A182492.P8158037386142892390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105523 (A123108 (A022998 n).toNat).toNat

end

end A182492.P8158037386142892390

noncomputable section

/-- A182492: Expansion of 1 - x - (1 - sqrt(1 + 4*x^4)) / (2*x) in powers of x.

Offset 0, canonical program `A182492.P8158037386142892390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A182492 (n : ℕ) : ℤ :=
  A182492.P8158037386142892390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A182492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183063.P14549643650991336837

`A062011(n+1)-A099777(n+1)`
-/

namespace A183063.P14549643650991336837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A099777 (n + 1)

end

end A183063.P14549643650991336837

noncomputable section

/-- A183063: Number of even divisors of n.

Offset 1, canonical program `A183063.P14549643650991336837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062011, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183063 (n : ℕ) : ℤ :=
  A183063.P14549643650991336837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062011, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183063.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183093.P17608197149960352927

`A000005(n+1)-A005361(n+1)`
-/

namespace A183093.P17608197149960352927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A005361 (n + 1)

end

end A183093.P17608197149960352927

noncomputable section

/-- A183093: a(n) = number of divisors d of n such that d > 1 and if d = Product_(i) (p_i^e_i) then e_i = 1 for at least one i.

Offset 1, canonical program `A183093.P17608197149960352927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183093 (n : ℕ) : ℤ :=
  A183093.P17608197149960352927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183299.P11168409399824116378

`A000037(n+1)-1`
-/

namespace A183299.P11168409399824116378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) - 1

end

end A183299.P11168409399824116378

noncomputable section

/-- A183299: Complement of A005563.

Offset 1, canonical program `A183299.P11168409399824116378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183299 (n : ℕ) : ℤ :=
  A183299.P11168409399824116378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185113.P5883797355228036697

`(n/2+1)*A069271(n)`
-/

namespace A185113.P5883797355228036697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A069271 n : ℚ)

end

end A185113.P5883797355228036697

noncomputable section

/-- A185113: Number of dissections of a convex (3n+3)-sided polygon into n pentagons and one triangle (up to equivalence).

Offset 0, canonical program `A185113.P5883797355228036697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A185113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185113.P5883797355228036697.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A185113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185782.P9206641103907000175

`A144257(n+1)+A025581(n)`
-/

namespace A185782.P9206641103907000175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) + A025581 n

end

end A185782.P9206641103907000175

noncomputable section

/-- A185782: Weight array of A185780, by antidiagonals.

Offset 1, canonical program `A185782.P9206641103907000175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782 (n : ℕ) : ℤ :=
  A185782.P9206641103907000175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185871.P8543721373781251179

`∑[A198954(A066182(n+1))+2]`
-/

namespace A185871.P8543721373781251179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A066182 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185871.P8543721373781251179

noncomputable section

/-- A185871: (Even,even)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185871.P8543721373781251179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871 (n : ℕ) : ℤ :=
  A185871.P8543721373781251179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189151.P4362739467928619395

`A185871(n+1)-A061885(n)`
-/

namespace A189151.P4362739467928619395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185871 (n + 1) - A061885 n

end

end A189151.P4362739467928619395

noncomputable section

/-- A189151: Numbers k such that k < floor(sqrt(k)) * ceiling(sqrt(k)).

Offset 1, canonical program `A189151.P4362739467928619395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189151 (n : ℕ) : ℤ :=
  A189151.P4362739467928619395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189520.P1730264741793748391

`A189403(n+1)+2*(n+1)`
-/

namespace A189520.P1730264741793748391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189520.P1730264741793748391

noncomputable section

/-- A189520: n+[nr/t]+[ns/t]; r=1, s=1/e, t=1/(e+1).

Offset 1, canonical program `A189520.P1730264741793748391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520 (n : ℕ) : ℤ :=
  A189520.P1730264741793748391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189523.P484942665720503072

`A054385(2*(n+1))+A000572(n+1)`
-/

namespace A189523.P484942665720503072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1)) + A000572 (n + 1)

end

end A189523.P484942665720503072

noncomputable section

/-- A189523: n+[nr/t]+[ns/t]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189523.P484942665720503072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523 (n : ℕ) : ℤ :=
  A189523.P484942665720503072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190906.P11254801162106217556

`A048883(A332497(n)-A000035(n))`
-/

namespace A190906.P11254801162106217556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A332497 n - A000035 n).toNat

end

end A190906.P11254801162106217556

noncomputable section

/-- A190906: a(n) = gcd(n! / floor(n/2)!^2, 3^n).

Offset 0, canonical program `A190906.P11254801162106217556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190906 (n : ℕ) : ℤ :=
  A190906.P11254801162106217556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191309.P18243075712559101294

`A000034(n)*A139262(A004526(n))`
-/

namespace A191309.P18243075712559101294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A139262 (A004526 n).toNat

end

end A191309.P18243075712559101294

noncomputable section

/-- A191309: Number of peaks at height >= 2 in all dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191309.P18243075712559101294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191309 (n : ℕ) : ℤ :=
  A191309.P18243075712559101294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191389.P9489773032743378258

`A011782(n)-Δ[A050168(n)]`
-/

namespace A191389.P9489773032743378258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (f1 (n + 1) - f1 n)

end

end A191389.P9489773032743378258

noncomputable section

/-- A191389: Number of valleys at level 0 in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191389.P9489773032743378258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191389 (n : ℕ) : ℤ :=
  A191389.P9489773032743378258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191391.P4772639634849094179

`A001405(n+1)+A191389(n)-A001405(n)`
-/

namespace A191391.P4772639634849094179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A191389 n - A001405 n)

end

end A191391.P4772639634849094179

noncomputable section

/-- A191391: Number of horizontal segments in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights; a horizontal segment is a maximal sequence of consecutive (1,0)-steps).

Offset 0, canonical program `A191391.P4772639634849094179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191391 (n : ℕ) : ℤ :=
  A191391.P4772639634849094179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191524.P4442675164963678049

`A000079(n)+A191309(n)-A050168(n)`
-/

namespace A191524.P4442675164963678049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A191309 n - A050168 n)

end

end A191524.P4442675164963678049

noncomputable section

/-- A191524: Number of double rises in all left factors of Dyck paths of length n (a double rise consists of two consecutive (1,1)-steps).

Offset 0, canonical program `A191524.P4442675164963678049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191524 (n : ℕ) : ℤ :=
  A191524.P4442675164963678049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191527.P18257187905751201443

`A191524(n)+A191309(n)`
-/

namespace A191527.P18257187905751201443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n + A191309 n

end

end A191527.P18257187905751201443

noncomputable section

/-- A191527: Number of turns in all left factors of Dyck paths of length n.

Offset 0, canonical program `A191527.P18257187905751201443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191527 (n : ℕ) : ℤ :=
  A191527.P18257187905751201443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193432.P15803049534732017682

`A000005(A002522(n))`
-/

namespace A193432.P15803049534732017682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002522 n).toNat

end

end A193432.P15803049534732017682

noncomputable section

/-- A193432: Number of divisors of n^2 + 1.

Offset 0, canonical program `A193432.P15803049534732017682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193432 (n : ℕ) : ℤ :=
  A193432.P15803049534732017682.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193432.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193562.P320638825937170034

`A000005(A002523(n))`
-/

namespace A193562.P320638825937170034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002523 n).toNat

end

end A193562.P320638825937170034

noncomputable section

/-- A193562: Number of divisors of n^4+1.

Offset 0, canonical program `A193562.P320638825937170034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193562 (n : ℕ) : ℤ :=
  A193562.P320638825937170034.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193592.P7249153181096996018

`A002262(A056943(n))+1`
-/

namespace A193592.P7249153181096996018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A056943 n).toNat + 1

end

end A193592.P7249153181096996018

noncomputable section

/-- A193592: Triangle read by rows having n-th row 1, n, n-1, n-2,..., 2, 1 for n>=0.

Offset 0, canonical program `A193592.P7249153181096996018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193592 (n : ℕ) : ℤ :=
  A193592.P7249153181096996018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193739.P1597501357748841903

`A065033(A143956(n+1)-1)`
-/

namespace A193739.P1597501357748841903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A143956 (n + 1) - 1).toNat

end

end A193739.P1597501357748841903

noncomputable section

/-- A193739: Mirror of the triangle A193738.

Offset 0, canonical program `A193739.P1597501357748841903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739 (n : ℕ) : ℤ :=
  A193739.P1597501357748841903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202736.P17174659494218386331

`2^(n+1)-A126869(n+1)`
-/

namespace A202736.P17174659494218386331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A126869 (n + 1)

end

end A202736.P17174659494218386331

noncomputable section

/-- A202736: Number of n X 2 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

Offset 1, canonical program `A202736.P17174659494218386331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A202736 (n : ℕ) : ℤ :=
  A202736.P17174659494218386331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A202736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204164.P4258946437764065738

`val(A098354(n+1), 4)`
-/

namespace A204164.P4258946437764065738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A098354 (n + 1)).toNat 4

end

end A204164.P4258946437764065738

noncomputable section

/-- A204164: Symmetric matrix based on f(i,j) = floor((i+j)/2), by antidiagonals.

Offset 1, canonical program `A204164.P4258946437764065738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204164 (n : ℕ) : ℤ :=
  (A204164.P4258946437764065738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206703.P5177746352387235024

`A000262(A025581(n))*A008279(n)`
-/

namespace A206703.P5177746352387235024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A025581 n).toNat * A008279 n

end

end A206703.P5177746352387235024

noncomputable section

/-- A206703: Triangular array read by rows. T(n,k) is the number of partial permutations (injective partial functions) of {1,2,...,n} that have exactly k elements in a cycle. The k elements are not necessarily in the same cycle. A fixed point is considered to be in a cycle.

Offset 0, canonical program `A206703.P5177746352387235024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A206703 (n : ℕ) : ℤ :=
  A206703.P5177746352387235024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A206703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209635.P4190612729854027480

`A099990(A025480(n))`
-/

namespace A209635.P4190612729854027480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 (A025480 n).toNat

end

end A209635.P4190612729854027480

noncomputable section

/-- A209635: Möbius mu-function applied to the odd part of n: a(n) = A008683(A000265(n)).

Offset 1, canonical program `A209635.P4190612729854027480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209635 (n : ℕ) : ℤ :=
  A209635.P4190612729854027480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210628.P787028128316081024

`(-1)^n*A097331(n)`
-/

namespace A210628.P787028128316081024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A097331 n

end

end A210628.P787028128316081024

noncomputable section

/-- A210628: Expansion of (-1 + 2*x + sqrt( 1 - 4*x^2)) / (2*x) in powers of x.

Offset 0, canonical program `A210628.P787028128316081024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628 (n : ℕ) : ℤ :=
  A210628.P787028128316081024.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212793.P4153428830166235404

`abs(A053864(n+1))`
-/

namespace A212793.P4153428830166235404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053864 (n + 1)|

end

end A212793.P4153428830166235404

noncomputable section

/-- A212793: Characteristic function of cubefree numbers, A004709.

Offset 1, canonical program `A212793.P4153428830166235404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793 (n : ℕ) : ℤ :=
  A212793.P4153428830166235404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214681.P13397189043489326683

`A065330(n+1)*A234959(n+1)`
-/

namespace A214681.P13397189043489326683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1) * A234959 (n + 1)

end

end A214681.P13397189043489326683

noncomputable section

/-- A214681: a(n) is obtained from n by removing factors of 2 and 3 that do not contribute to a factor of 6.

Offset 1, canonical program `A214681.P13397189043489326683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681 (n : ℕ) : ℤ :=
  A214681.P13397189043489326683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218255.P890284629792750492

`A151800(10*n)`
-/

namespace A218255.P890284629792750492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * n)

end

end A218255.P890284629792750492

noncomputable section

/-- A218255: Next prime after 10*n.

Offset 0, canonical program `A218255.P890284629792750492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218255 (n : ℕ) : ℤ :=
  A218255.P890284629792750492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219092.P6146677779326094586

`A005182(2*(n+1))`
-/

namespace A219092.P6146677779326094586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 (2 * (n + 1))

end

end A219092.P6146677779326094586

noncomputable section

/-- A219092: a(n) = floor(e^(n + 1/2)).

Offset 0, canonical program `A219092.P6146677779326094586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A219092 (n : ℕ) : ℤ :=
  A219092.P6146677779326094586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A219092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229062.P3765704353507649483

`char[A069011(n)]`
-/

namespace A229062.P3765704353507649483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A229062.P3765704353507649483

noncomputable section

/-- A229062: 1 if n is representable as sum of two nonnegative squares, otherwise 0.

Offset 0, canonical program `A229062.P3765704353507649483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229062 (n : ℕ) : ℤ :=
  (A229062.P3765704353507649483.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230403.P10181876793047725075

`A055881(n+1)-1`
-/

namespace A230403.P10181876793047725075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1) - 1

end

end A230403.P10181876793047725075

noncomputable section

/-- A230403: a(n) = the largest k such that (k+1)! divides n; the number of trailing zeros in the factorial base representation of n (A007623(n)).

Offset 1, canonical program `A230403.P10181876793047725075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403 (n : ℕ) : ℤ :=
  A230403.P10181876793047725075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243499.P13821279400790425584

`(1+A023416(n))*a(A053645(n))` with `a(0)=1`
-/

namespace A243499.P13821279400790425584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A023416 n) * a (A053645 n).toNat

end

end A243499.P13821279400790425584

noncomputable section

/-- A243499: Product of parts of integer partitions as enumerated in the table A125106.

Offset 0, canonical program `A243499.P13821279400790425584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243499 (n : ℕ) : ℤ :=
  A243499.P13821279400790425584.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246432.P7367098291756528111

`A120588(n)*A260196(n)`
-/

namespace A246432.P7367098291756528111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A260196 n

end

end A246432.P7367098291756528111

noncomputable section

/-- A246432: Convolution inverse of A001700.

Offset 0, canonical program `A246432.P7367098291756528111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432 (n : ℕ) : ℤ :=
  A246432.P7367098291756528111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246655.P17244467699733575268

`ceil(sqrt(A060615(n)))`
-/

namespace A246655.P17244467699733575268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060615 n : ℝ)⌉

end

end A246655.P17244467699733575268

noncomputable section

/-- A246655: Prime powers: numbers of the form p^k where p is a prime and k >= 1.

Offset 1, canonical program `A246655.P17244467699733575268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246655 (n : ℕ) : ℤ :=
  A246655.P17244467699733575268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253563.P3695549317124564486

`a(A025480(n))*A000040(A000120(n))` with `a(0)=1`
-/

namespace A253563.P3695549317124564486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A000040 (A000120 n).toNat

end

end A253563.P3695549317124564486

noncomputable section

/-- A253563: Permutation of natural numbers: a(0) = 1, a(1) = 2; after which, a(2n) = A253560(a(n)), a(2n+1) = A253550(a(n)).

Offset 0, canonical program `A253563.P3695549317124564486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253563 (n : ℕ) : ℤ :=
  A253563.P3695549317124564486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253580.P15714201682578060032

`A004741(n+1)-1`
-/

namespace A253580.P15714201682578060032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) - 1

end

end A253580.P15714201682578060032

noncomputable section

/-- A253580: A fractal tree, read by rows: for n > 1: T(n,0) = T(n-1,0)+2, T(n,2*n) = T(n-1,0)+3, and for k=1..2*n-1: T(n,k) = T(n-1,k-1).

Offset 0, canonical program `A253580.P15714201682578060032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253580 (n : ℕ) : ℤ :=
  A253580.P15714201682578060032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253607.P6258215896697988721

`Δ[A253580(n)]`
-/

namespace A253607.P6258215896697988721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253607.P6258215896697988721

noncomputable section

/-- A253607: First differences of A253580, when the tree is seen as flattened list.

Offset 0, canonical program `A253607.P6258215896697988721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253607 (n : ℕ) : ℤ :=
  A253607.P6258215896697988721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254379.P11537696663455735807

`A059841(n)*A010060(n)`
-/

namespace A254379.P11537696663455735807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A010060 n

end

end A254379.P11537696663455735807

noncomputable section

/-- A254379: Characteristic function of the even odious numbers (A128309).

Offset 0, canonical program `A254379.P11537696663455735807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379 (n : ℕ) : ℤ :=
  A254379.P11537696663455735807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254651.P5982598180716446576

`1-A254379(n)`
-/

namespace A254651.P5982598180716446576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254379 n

end

end A254651.P5982598180716446576

noncomputable section

/-- A254651: Characteristic function of A254614, numbers that are either odd or evil (or both).

Offset 0, canonical program `A254651.P5982598180716446576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254651 (n : ℕ) : ℤ :=
  A254651.P5982598180716446576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256309.P8235850906625870393

`A091773(n)-A000601(n)`
-/

namespace A256309.P8235850906625870393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091773 n - A000601 n

end

end A256309.P8235850906625870393

noncomputable section

/-- A256309: Number of partitions of 2n into exactly 5 parts.

Offset 0, canonical program `A256309.P8235850906625870393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256309 (n : ℕ) : ℤ :=
  A256309.P8235850906625870393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259525.P15603515225238104540

`Δ[A074909(n-A003056(n))]`
-/

namespace A259525.P15603515225238104540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n : ℤ) - A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259525.P15603515225238104540

noncomputable section

/-- A259525: First differences of A007318, when Pascal's triangle is seen as flattened list.

Offset 0, canonical program `A259525.P15603515225238104540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259525 (n : ℕ) : ℤ :=
  A259525.P15603515225238104540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261225.P9013570553216359185

`n-A055401(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261225.P9013570553216359185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055401 n

end

end A261225.P9013570553216359185

noncomputable section

/-- A261225: n minus the number of positive cubes needed to sum to n using the greedy algorithm: a(n) = n - A055401(n).

Offset 0, canonical program `A261225.P9013570553216359185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261225 (n : ℕ) : ℤ :=
  A261225.P9013570553216359185.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261226.P5886764903879751177

`1+a(A261225(n))` with `a(0)=0, a(1)=1`
-/

namespace A261226.P5886764903879751177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A261225 n).toNat

end

end A261226.P5886764903879751177

noncomputable section

/-- A261226: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261226.P5886764903879751177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261226 (n : ℕ) : ℤ :=
  (A261226.P5886764903879751177.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261227.P15274673965007870817

`A261226(n^3)`
-/

namespace A261227.P15274673965007870817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (n ^ 3)

end

end A261227.P15274673965007870817

noncomputable section

/-- A261227: a(n) = number of steps to reach 0 when starting from k = n^3 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261227.P15274673965007870817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261227 (n : ℕ) : ℤ :=
  A261227.P15274673965007870817.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265370.P3607156033040373403

`ceil(log2(A078510(n)+1))`
-/

namespace A265370.P3607156033040373403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A078510 n + 1 : ℝ)⌉

end

end A265370.P3607156033040373403

noncomputable section

/-- A265370: a(0) = 0; for n >= 1, a(n) = A070939(A078510(n)).

Offset 0, canonical program `A265370.P3607156033040373403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265370 (n : ℕ) : ℤ :=
  A265370.P3607156033040373403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268128.P3789248238406704639

`(A000123(n)-A001316(n))/2`
-/

namespace A268128.P3789248238406704639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 n - A001316 n : ℚ) / 2

end

end A268128.P3789248238406704639

noncomputable section

/-- A268128: a(n) = (A000123(n) - A001316)/2.

Offset 0, canonical program `A268128.P3789248238406704639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268128.P3789248238406704639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268329.P14268697526507854789

`2*A000344(n+2)`
-/

namespace A268329.P14268697526507854789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000344 (n + 2)

end

end A268329.P14268697526507854789

noncomputable section

/-- A268329: Expansion of (1 - sqrt(1 - 4*x))^5/16.

Offset 5, canonical program `A268329.P14268697526507854789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268329 (n : ℕ) : ℤ :=
  A268329.P14268697526507854789.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274611.P10471680084800426065

`(n+1)/A053165(n+1)*A053165(2*(n+1))`
-/

namespace A274611.P10471680084800426065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053165 (n + 1) : ℚ) * (A053165 (2 * (n + 1)) : ℚ)

end

end A274611.P10471680084800426065

noncomputable section

/-- A274611: a(n) = n/8 if A007814(n) == 3 (mod 4), else a(n) = 2*n.

Offset 1, canonical program `A274611.P10471680084800426065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A274611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274611.P10471680084800426065.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A274611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274707.P10103696147558758885

`A237884(n)+A138364(n)`
-/

namespace A274707.P10103696147558758885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 n + A138364 n

end

end A274707.P10103696147558758885

noncomputable section

/-- A274707: a(n) = A(n) if n is even else a(n) = A(n)*(n-1)/(n+1) with A(n) = ((n-1)!/ floor((n-1)/2)!^2).

Offset 1, canonical program `A274707.P10103696147558758885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A274707 (n : ℕ) : ℤ :=
  A274707.P10103696147558758885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A274707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275161.P671622255458669779

`2*(dr(A253607(n))+1)`
-/

namespace A275161.P671622255458669779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.digitalRoot (A253607 n) + 1)

end

end A275161.P671622255458669779

noncomputable section

/-- A275161: Number of sides of a polygon formed by tiling n squares in a spiral.

Offset 1, canonical program `A275161.P671622255458669779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275161 (n : ℕ) : ℤ :=
  (A275161.P671622255458669779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275329.P1318522631389672065

`A057977(n)*A008619(n+2)`
-/

namespace A275329.P1318522631389672065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A008619 (n + 2)

end

end A275329.P1318522631389672065

noncomputable section

/-- A275329: a(n) = (2+[n/2])*n!/((1+[n/2])*[n/2]!^2).

Offset 0, canonical program `A275329.P1318522631389672065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275329 (n : ℕ) : ℤ :=
  A275329.P1318522631389672065.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276611.P18078078065825971557

`∑[char[A261227(n+1)]]`
-/

namespace A276611.P18078078065825971557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276611.P18078078065825971557

noncomputable section

/-- A276611: After a(0)=0, each n occurs A261229(n) times.

Offset 0, canonical program `A276611.P18078078065825971557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276611 (n : ℕ) : ℤ :=
  (A276611.P18078078065825971557.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277178.P15202113963426692843

`∑[record[A274707(n+1)]]`
-/

namespace A277178.P15202113963426692843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P15202113963426692843

noncomputable section

/-- A277178: a(n) = Sum_{k=0..n} k*binomial(2*k,k)/2.

Offset 0, canonical program `A277178.P15202113963426692843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A277178 (n : ℕ) : ℤ :=
  A277178.P15202113963426692843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A277178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284556.P13375523094989058147

`(A002487(n)-A102283(n))/2`
-/

namespace A284556.P13375523094989058147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n - A102283 n : ℚ) / 2

end

end A284556.P13375523094989058147

noncomputable section

/-- A284556: Sequence c of the mutual recurrence pair: b(0) = 0, b(1) = 1, b(2n) = c(n), b(2n+1) = b(n) + b(n+1), c(0) = c(1) = 0, c(2n) = b(n), c(2n+1) = c(n) + c(n+1).

Offset 0, canonical program `A284556.P13375523094989058147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284556.P13375523094989058147.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284566.P9813088326680274494

`A284556(2*n+1)`
-/

namespace A284566.P9813088326680274494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (2 * n + 1)

end

end A284566.P9813088326680274494

noncomputable section

/-- A284566: Odd bisection of A284556.

Offset 0, canonical program `A284566.P9813088326680274494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284566 (n : ℕ) : ℤ :=
  A284566.P9813088326680274494.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285437.P16402339741766038757

`A000034(n)*A288808(A052928(n))`
-/

namespace A285437.P16402339741766038757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A288808 (A052928 n).toNat

end

end A285437.P16402339741766038757

noncomputable section

/-- A285437: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285437.P16402339741766038757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A285437 (n : ℕ) : ℤ :=
  A285437.P16402339741766038757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A285437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289719.P1369595819095415179

`record[A274707(n+1)+1]`
-/

namespace A289719.P1369595819095415179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289719.P1369595819095415179

noncomputable section

/-- A289719: a(n) = (n/2)*binomial(2*n, n) + 1.

Offset 0, canonical program `A289719.P1369595819095415179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A289719 (n : ℕ) : ℤ :=
  A289719.P1369595819095415179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A289719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292664.P10332037259361248374

`A000027(A054385(n+1)+n+1)`
-/

namespace A292664.P10332037259361248374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A054385 (n + 1) + (n + 1 : ℤ)).toNat

end

end A292664.P10332037259361248374

noncomputable section

/-- A292664: Rank of n*e when all the numbers j*(e-1) and k*e, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292664.P10332037259361248374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292664 (n : ℕ) : ℤ :=
  A292664.P10332037259361248374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292666.P16137424853136077463

`A189523(n+1)-A000572(n+1)`
-/

namespace A292666.P16137424853136077463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189523 (n + 1) - A000572 (n + 1)

end

end A292666.P16137424853136077463

noncomputable section

/-- A292666: Rank of n*(e+1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292666.P16137424853136077463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666 (n : ℕ) : ℤ :=
  A292666.P16137424853136077463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292936.P4211464816823470507

`(a(ceil(n/2)-1)+1)*A010051(n+1)` with `a(0)=0`
-/

namespace A292936.P4211464816823470507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (⌈(n : ℚ) / 2⌉ - 1).toNat + 1) * A010051 (n + 1)

end

end A292936.P4211464816823470507

noncomputable section

/-- A292936: a(n) = the least k >= 0 such that floor(n/(2^k)) is a nonprime; a(n) is degree of the "safeness" of prime, 0 if n is not a prime, 1 for unsafe primes (A059456), and k >= 2 for primes that are (k-1)-safe but not k-safe.

Offset 1, canonical program `A292936.P4211464816823470507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292936 (n : ℕ) : ℤ :=
  A292936.P4211464816823470507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293162.P16567619776842325743

`A010060(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293162.P16567619776842325743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n)

end

end A293162.P16567619776842325743

noncomputable section

/-- A293162: Take every third term of the {0,1}-version of the Thue-Morse sequence: a(n) = A010060(3n).

Offset 0, canonical program `A293162.P16567619776842325743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293162 (n : ℕ) : ℤ :=
  A293162.P16567619776842325743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294317.P12504463466195048187

`A128076(n+1)-1`
-/

namespace A294317.P12504463466195048187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) - 1

end

end A294317.P12504463466195048187

noncomputable section

/-- A294317: Triangle read by rows: T(n, k) = 2*n-k, k <= n.

Offset 0, canonical program `A294317.P12504463466195048187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294317 (n : ℕ) : ℤ :=
  A294317.P12504463466195048187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299149.P13711120400628081044

`(2*A025480(n)+1)*A046643(n+1)`
-/

namespace A299149.P13711120400628081044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A025480 n + 1) * A046643 (n + 1)

end

end A299149.P13711120400628081044

noncomputable section

/-- A299149: Numerators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299149.P13711120400628081044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299149 (n : ℕ) : ℤ :=
  A299149.P13711120400628081044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300915.P2814181824402378078

`A000056(n+1)/A060594(n+1)`
-/

namespace A300915.P2814181824402378078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P2814181824402378078

noncomputable section

/-- A300915: Order of the group PSL(2,Z_n).

Offset 1, canonical program `A300915.P2814181824402378078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A300915.P2814181824402378078.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304651.P3576326114544624841

`a(n-1)+4*A000089(n)` with `a(0)=0`
-/

namespace A304651.P3576326114544624841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 * A000089 n

end

end A304651.P3576326114544624841

noncomputable section

/-- A304651: Number of coprime pairs (x,y) with x^2 + y^2 <= n.

Offset 0, canonical program `A304651.P3576326114544624841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304651 (n : ℕ) : ℤ :=
  A304651.P3576326114544624841.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305117.P17948678590562359132

`a(n-1)+A000089(n)` with `a(0)=0`
-/

namespace A305117.P17948678590562359132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000089 n

end

end A305117.P17948678590562359132

noncomputable section

/-- A305117: a(n) = A304651(n)/4.

Offset 0, canonical program `A305117.P17948678590562359132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305117 (n : ℕ) : ℤ :=
  A305117.P17948678590562359132.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309269.P11296063192359614049

`A246655(n+1)+A121315(n+1)/A246655(n+1)`
-/

namespace A309269.P11296063192359614049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℚ) + (A121315 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ)

end

end A309269.P11296063192359614049

noncomputable section

/-- A309269: Numbers that are the sum of two successive prime powers.

Offset 1, canonical program `A309269.P11296063192359614049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309269 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309269.P11296063192359614049.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317531.P16080676606467659442

`∑{d}[n+1, A095112(#)*A117212((n+1)/#)]`
-/

namespace A317531.P16080676606467659442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A095112 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317531.P16080676606467659442

noncomputable section

/-- A317531: Expansion of Sum_{p prime, k>=1} x^(p^k)/(1 + x^(p^k)).

Offset 1, canonical program `A317531.P16080676606467659442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317531 (n : ℕ) : ℤ :=
  A317531.P16080676606467659442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320527.P1973516301187565761

`A056328(n+1)-A304974(n+1)`
-/

namespace A320527.P1973516301187565761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056328 (n + 1) - A304974 (n + 1)

end

end A320527.P1973516301187565761

noncomputable section

/-- A320527: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 4 colors (subsets).

Offset 1, canonical program `A320527.P1973516301187565761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A320527 (n : ℕ) : ℤ :=
  A320527.P1973516301187565761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A320527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323547.P16660273346079992290

`char[A071354(n+1)-1]`
-/

namespace A323547.P16660273346079992290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323547.P16660273346079992290

noncomputable section

/-- A323547: n-th digit in the base-2 expansion of 1/n.

Offset 1, canonical program `A323547.P16660273346079992290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323547 (n : ℕ) : ℤ :=
  (A323547.P16660273346079992290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325334.P3560407124782299478

`A007862(abs(1-n)+1)-1`
-/

namespace A325334.P3560407124782299478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A325334.P3560407124782299478

noncomputable section

/-- A325334: Number of integer partitions of n with adjusted frequency depth 3 whose parts cover an initial interval of positive integers.

Offset 0, canonical program `A325334.P3560407124782299478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325334 (n : ℕ) : ℤ :=
  A325334.P3560407124782299478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326938.P12021867718184340090

`A000034(n)*A327278(n+1)`
-/

namespace A326938.P12021867718184340090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A327278 (n + 1)

end

end A326938.P12021867718184340090

noncomputable section

/-- A326938: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1) * (1 - 2^(-s))).

Offset 1, canonical program `A326938.P12021867718184340090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326938 (n : ℕ) : ℤ :=
  A326938.P12021867718184340090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327213.P10077086823454871899

`eq[A327211(n), 1]`
-/

namespace A327213.P10077086823454871899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A327213.P10077086823454871899

noncomputable section

/-- A327213: Positions of 1's in {A327211(n) : n > 0}.

Offset 1, canonical program `A327213.P10077086823454871899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327213 (n : ℕ) : ℤ :=
  (A327213.P10077086823454871899.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328254.P15532936558878328748

`∑{d}[n+1, A046692(#)*A334657((n+1)/#)]`
-/

namespace A328254.P15532936558878328748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328254.P15532936558878328748

noncomputable section

/-- A328254: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1) * zeta(s-2)).

Offset 1, canonical program `A328254.P15532936558878328748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328254 (n : ℕ) : ℤ :=
  A328254.P15532936558878328748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328639.P17852271608018374893

`∑{d}[n+1, A076752(#)*A328254((n+1)/#)]`
-/

namespace A328639.P17852271608018374893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P17852271608018374893

noncomputable section

/-- A328639: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(s-2)).

Offset 1, canonical program `A328639.P17852271608018374893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328639 (n : ℕ) : ℤ :=
  A328639.P17852271608018374893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329686.P15611330832861329198

`A126120(ceil(n/2))+A126120(A123108(n))`
-/

namespace A329686.P15611330832861329198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌈(n : ℚ) / 2⌉.toNat + A126120 (A123108 n).toNat

end

end A329686.P15611330832861329198

noncomputable section

/-- A329686: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UH, HU, HD and DH.

Offset 0, canonical program `A329686.P15611330832861329198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686 (n : ℕ) : ℤ :=
  A329686.P15611330832861329198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329687.P17295788275179189251

`A126120(floor(2*n/3))`
-/

namespace A329687.P17295788275179189251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A329687.P17295788275179189251

noncomputable section

/-- A329687: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, UD, HH and DH.

Offset 0, canonical program `A329687.P17295788275179189251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687 (n : ℕ) : ℤ :=
  A329687.P17295788275179189251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329688.P15403590587362411359

`A329686(A042965(n+1))`
-/

namespace A329688.P15403590587362411359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A042965 (n + 1)).toNat

end

end A329688.P15403590587362411359

noncomputable section

/-- A329688: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, HD and DU.

Offset 0, canonical program `A329688.P15403590587362411359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688 (n : ℕ) : ℤ :=
  A329688.P15403590587362411359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333167.P7830250556896041600

`A105397(n)*A193432(n)`
-/

namespace A333167.P7830250556896041600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n * A193432 n

end

end A333167.P7830250556896041600

noncomputable section

/-- A333167: a(n) = r_2(n^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333167.P7830250556896041600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167 (n : ℕ) : ℤ :=
  A333167.P7830250556896041600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333806.P3114427543706526191

`A063962(A048671(n+1))`
-/

namespace A333806.P3114427543706526191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A048671 (n + 1)).toNat

end

end A333806.P3114427543706526191

noncomputable section

/-- A333806: Number of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A333806.P3114427543706526191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806 (n : ℕ) : ℤ :=
  A333806.P3114427543706526191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346612.P17658702918821457984

`∑{d}[n+1, A046692(#)*A057670((n+1)/#)]`
-/

namespace A346612.P17658702918821457984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A057670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346612.P17658702918821457984

noncomputable section

/-- A346612: Moebius transform of A019554.

Offset 1, canonical program `A346612.P17658702918821457984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612 (n : ℕ) : ℤ :=
  A346612.P17658702918821457984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347092.P8123112013211787549

`∑{d}[n+1, A328639(#)*A340850((n+1)/#)]`
-/

namespace A347092.P8123112013211787549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328639 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347092.P8123112013211787549

noncomputable section

/-- A347092: Dirichlet inverse of A322577, which is the convolution of Dedekind psi with Euler phi.

Offset 1, canonical program `A347092.P8123112013211787549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347092 (n : ℕ) : ℤ :=
  A347092.P8123112013211787549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347093.P13905324333595350754

`A322577(n+1)+A347092(n+1)`
-/

namespace A347093.P13905324333595350754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322577 (n + 1) + A347092 (n + 1)

end

end A347093.P13905324333595350754

noncomputable section

/-- A347093: Sum of A322577 (convolution of Dedekind psi with Euler phi) and its Dirichlet inverse.

Offset 1, canonical program `A347093.P13905324333595350754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322577, A347092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347093 (n : ℕ) : ℤ :=
  A347093.P13905324333595350754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322577, A347092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353463.P14904150347216604516

`A010051(n+1)*A010051(n+3)`
-/

namespace A353463.P14904150347216604516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A010051 (n + 3)

end

end A353463.P14904150347216604516

noncomputable section

/-- A353463: Characteristic function of lesser twin primes: a(n) = 1 if both n and n+2 are primes, otherwise 0.

Offset 1, canonical program `A353463.P14904150347216604516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353463 (n : ℕ) : ℤ :=
  A353463.P14904150347216604516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353464.P7528674575556997429

`A353463(A065164(n+1))`
-/

namespace A353464.P7528674575556997429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A065164 (n + 1)).toNat

end

end A353464.P7528674575556997429

noncomputable section

/-- A353464: Characteristic function of greater twin primes: a(n) = 1 if both n and n-2 are primes, otherwise 0.

Offset 1, canonical program `A353464.P7528674575556997429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464 (n : ℕ) : ℤ :=
  A353464.P7528674575556997429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353627.P16518077331837195055

`abs(A209635(n+1))`
-/

namespace A353627.P16518077331837195055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209635 (n + 1)|

end

end A353627.P16518077331837195055

noncomputable section

/-- A353627: a(n) = 1 if the odd part of n is squarefree, otherwise 0.

Offset 1, canonical program `A353627.P16518077331837195055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353627 (n : ℕ) : ℤ :=
  A353627.P16518077331837195055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354037.P7194895652706141721

`A029430(and(3, ∑{d}[n+1, #]-(n+1)))`
-/

namespace A354037.P7194895652706141721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (Int.land 3 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))).toNat

end

end A354037.P7194895652706141721

noncomputable section

/-- A354037: a(n) = 1 if sigma(n)-n is a multiple of 4, otherwise 0.

Offset 1, canonical program `A354037.P7194895652706141721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037 (n : ℕ) : ℤ :=
  A354037.P7194895652706141721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354819.P1113722115681755102

`A008966(n+1)*(1-A010051(n+1))`
-/

namespace A354819.P1113722115681755102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * (1 - A010051 (n + 1))

end

end A354819.P1113722115681755102

noncomputable section

/-- A354819: a(n) = 1 if n is a nonprime squarefree number, otherwise 0.

Offset 1, canonical program `A354819.P1113722115681755102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354819 (n : ℕ) : ℤ :=
  A354819.P1113722115681755102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358272.P12217916716295113487

`∑{d}[n+1, A007427(#)*A035316((n+1)/#)]`
-/

namespace A358272.P12217916716295113487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P12217916716295113487

noncomputable section

/-- A358272: Multiplicative sequence with a(p^e) = (-1)^e * p^(2*floor(e/2)) for prime p and e >= 0.

Offset 1, canonical program `A358272.P12217916716295113487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358272 (n : ℕ) : ℤ :=
  A358272.P12217916716295113487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358678.P18239229635933163516

`A354037(A341522(n))`
-/

namespace A358678.P18239229635933163516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (A341522 n).toNat

end

end A358678.P18239229635933163516

noncomputable section

/-- A358678: a(n) = 1 if n is odd and sigma(n) == 2 mod 4, otherwise 0.

Offset 1, canonical program `A358678.P18239229635933163516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358678 (n : ℕ) : ℤ :=
  A358678.P18239229635933163516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359548.P7829680634435562541

`A328729(n+1)%2`
-/

namespace A359548.P7829680634435562541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328729 (n + 1)) 2

end

end A359548.P7829680634435562541

noncomputable section

/-- A359548: Dirichlet inverse of A053866, where A053866(n) gives the parity of sigma(n).

Offset 1, canonical program `A359548.P7829680634435562541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359548 (n : ℕ) : ℤ :=
  A359548.P7829680634435562541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359834.P8118747049772739298

`lcm(A209635(n+1), A332732(n+1))`
-/

namespace A359834.P8118747049772739298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A209635 (n + 1)) (A332732 (n + 1))

end

end A359834.P8118747049772739298

noncomputable section

/-- A359834: Parity of Dirichlet inverse of A359832, where A359832(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359834.P8118747049772739298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359834 (n : ℕ) : ℤ :=
  (A359834.P8118747049772739298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362685.P6275879267292374181

`(A059268(n)-1)*A056942(n)`
-/

namespace A362685.P6275879267292374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n - 1) * A056942 n

end

end A362685.P6275879267292374181

noncomputable section

/-- A362685: Triangle of numbers read by rows, T(n, k) = (n*(n-1))*Stirling2(k, 2), for n >= 1 and 1 <= k <= n.

Offset 1, canonical program `A362685.P6275879267292374181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685 (n : ℕ) : ℤ :=
  A362685.P6275879267292374181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363037.P17593486041959232839

`A188169(n+1)-A188171(n+1)`
-/

namespace A363037.P17593486041959232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - A188171 (n + 1)

end

end A363037.P17593486041959232839

noncomputable section

/-- A363037: Expansion of Sum_{k>0} x^k / (1 + x^(4*k)).

Offset 1, canonical program `A363037.P17593486041959232839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037 (n : ℕ) : ℤ :=
  A363037.P17593486041959232839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368884.P4906600944682773301

`A360539(A057521(n+1))`
-/

namespace A368884.P4906600944682773301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A057521 (n + 1)).toNat

end

end A368884.P4906600944682773301

noncomputable section

/-- A368884: The largest unitary divisor of n that is the square of a squarefree number (A062503).

Offset 1, canonical program `A368884.P4906600944682773301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884 (n : ℕ) : ℤ :=
  A368884.P4906600944682773301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372573.P2519904625794954656

`1-A234045(A065331(n+1))²`
-/

namespace A372573.P2519904625794954656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A234045 (A065331 (n + 1)).toNat ^ 2

end

end A372573.P2519904625794954656

noncomputable section

/-- A372573: a(n) = 1 if A276085(n) is a multiple of 3, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A372573.P2519904625794954656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573 (n : ℕ) : ℤ :=
  A372573.P2519904625794954656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373156.P12007324002122430818

`C(A214681(n+1), n+1)`
-/

namespace A373156.P12007324002122430818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214681 (n + 1)).toNat (n + 1)

end

end A373156.P12007324002122430818

noncomputable section

/-- A373156: a(n) = 1 if the 2-adic and the 3-adic valuations of n are equal, otherwise 0.

Offset 1, canonical program `A373156.P12007324002122430818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156 (n : ℕ) : ℤ :=
  (A373156.P12007324002122430818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375156.P5944505907265701600

`and(A003188(A374625(n)), A374625(n))`
-/

namespace A375156.P5944505907265701600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (A374625 n).toNat) (A374625 n)

end

end A375156.P5944505907265701600

noncomputable section

/-- A375156: In the binary expansion of n: expand bits 1 -> 01 and 0 -> x0 from most to least significant, where x is the complement of the previous bit from n.

Offset 0, canonical program `A375156.P5944505907265701600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A375156 (n : ℕ) : ℤ :=
  A375156.P5944505907265701600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A375156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379100.P14159065626236665285

`A000984(A002262(n))*A168256(n)`
-/

namespace A379100.P14159065626236665285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A002262 n).toNat * A168256 n

end

end A379100.P14159065626236665285

noncomputable section

/-- A379100: Triangle read by rows: T(n, k) = binomial(2*k, k) * binomial(2*n, n) / (n + 1).

Offset 0, canonical program `A379100.P14159065626236665285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A379100 (n : ℕ) : ℤ :=
  A379100.P14159065626236665285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A379100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000050.P5830236791147847898

`A102548(2^n)`
-/

namespace A000050.P5830236791147847898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (2 ^ n)

end

end A000050.P5830236791147847898

noncomputable section

/-- A000050: Number of positive integers <= 2^n of form x^2 + y^2.

Offset 0, canonical program `A000050.P5830236791147847898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050 (n : ℕ) : ℤ :=
  A000050.P5830236791147847898.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000086.P3359847833353072450

`A065959(n+1)%9`
-/

namespace A000086.P3359847833353072450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065959 (n + 1)) 9

end

end A000086.P3359847833353072450

noncomputable section

/-- A000086: Number of solutions to x^2 - x + 1 == 0 (mod n).

Offset 1, canonical program `A000086.P3359847833353072450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000086 (n : ℕ) : ℤ :=
  A000086.P3359847833353072450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000091.P2909649729475731760

`A034444(n+1)*A097325(A253629(n+1))`
-/

namespace A000091.P2909649729475731760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A097325 (A253629 (n + 1)).toNat

end

end A000091.P2909649729475731760

noncomputable section

/-- A000091: Multiplicative with a(2^e) = 2 for k >= 1; a(3) = 2, a(3^e) = 0 for k >= 2; a(p^e) = 0 if p > 3 and p == -1 (mod 3); a(p^e) = 2 if p > 3 and p == 1 (mod 3).

Offset 1, canonical program `A000091.P2909649729475731760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091 (n : ℕ) : ℤ :=
  A000091.P2909649729475731760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000150.P13871546353888305123

`floor(A000912(n)/2)`
-/

namespace A000150.P13871546353888305123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000912 n : ℚ) / 2⌋

end

end A000150.P13871546353888305123

noncomputable section

/-- A000150: Number of dissections of an n-gon, rooted at an exterior edge, asymmetric with respect to that edge.

Offset 0, canonical program `A000150.P13871546353888305123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000150 (n : ℕ) : ℤ :=
  A000150.P13871546353888305123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000252.P16726113642141526177

`A000056(n+1)²/A000082(n+1)`
-/

namespace A000252.P16726113642141526177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) ^ 2 : ℚ) / (A000082 (n + 1) : ℚ)

end

end A000252.P16726113642141526177

noncomputable section

/-- A000252: Number of invertible 2 X 2 matrices mod n.

Offset 1, canonical program `A000252.P16726113642141526177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000252 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000252.P16726113642141526177.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000260.P7752680408884611661

`gcd(A006632(n+1), A069271(n))`
-/

namespace A000260.P7752680408884611661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006632 (n + 1)) (A069271 n)

end

end A000260.P7752680408884611661

noncomputable section

/-- A000260: Number of rooted simplicial 3-polytopes with n+3 nodes; or rooted 3-connected triangulations with 2n+2 faces; or rooted 3-connected trivalent maps with 2n+2 vertices.

Offset 0, canonical program `A000260.P7752680408884611661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A000260 (n : ℕ) : ℤ :=
  (A000260.P7752680408884611661.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A000260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000360.P16123140622544761321

`A002487(1+n)-A284556(1+n)`
-/

namespace A000360.P16123140622544761321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + n) - A284556 (1 + n)

end

end A000360.P16123140622544761321

noncomputable section

/-- A000360: Distribution of nonempty triangles inside a fractal rep-4-tile.

Offset 0, canonical program `A000360.P16123140622544761321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000360 (n : ℕ) : ℤ :=
  A000360.P16123140622544761321.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000452.P15432004544007735088

`eq[2, A001316(A038148(n+1))]+1`
-/

namespace A000452.P15432004544007735088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A038148 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000452.P15432004544007735088

noncomputable section

/-- A000452: The greedy sequence of integers which avoids 3-term geometric progressions.

Offset 1, canonical program `A000452.P15432004544007735088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7206 terms. -/
def A000452 (n : ℕ) : ℤ :=
  (A000452.P15432004544007735088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7206 terms. -/
def A000452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000531.P10061954046547467365

`A048896(n)*A173384(n+1)`
-/

namespace A000531.P10061954046547467365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A173384 (n + 1)

end

end A000531.P10061954046547467365

noncomputable section

/-- A000531: From area of cyclic polygon of 2n + 1 sides.

Offset 1, canonical program `A000531.P10061954046547467365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A000531 (n : ℕ) : ℤ :=
  A000531.P10061954046547467365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A000531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000548.P7784828733208022638

`(lt[A005080(n+1), 1]+1)²`
-/

namespace A000548.P7784828733208022638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P7784828733208022638

noncomputable section

/-- A000548: Squares that are not the sum of 2 nonzero squares.

Offset 1, canonical program `A000548.P7784828733208022638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548 (n : ℕ) : ℤ :=
  (A000548.P7784828733208022638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000961.P11514301435404104700

`A309269(n+1)-A246655(n+1)`
-/

namespace A000961.P11514301435404104700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309269 (n + 1) - A246655 (n + 1)

end

end A000961.P11514301435404104700

noncomputable section

/-- A000961: Powers of primes. Alternatively, 1 and the prime powers (p^k, p prime, k >= 1).

Offset 1, canonical program `A000961.P11514301435404104700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000961 (n : ℕ) : ℤ :=
  A000961.P11514301435404104700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000989.P3200241698253008454

`A007949(n+1)+A067397(n)`
-/

namespace A000989.P3200241698253008454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A067397 n

end

end A000989.P3200241698253008454

noncomputable section

/-- A000989: 3-adic valuation of binomial(2*n, n): largest k such that 3^k divides binomial(2*n, n).

Offset 0, canonical program `A000989.P3200241698253008454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000989 (n : ℕ) : ℤ :=
  A000989.P3200241698253008454.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001037.P3072020637183991904

`A045664(n)/A253909(n)`
-/

namespace A001037.P3072020637183991904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045664 n : ℚ) / (A253909 n : ℚ)

end

end A001037.P3072020637183991904

noncomputable section

/-- A001037: Number of degree-n irreducible polynomials over GF(2); number of n-bead necklaces with beads of 2 colors when turning over is not allowed and with primitive period n; number of binary Lyndon words of length n.

Offset 0, canonical program `A001037.P3072020637183991904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001037.P3072020637183991904.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001285.P11616636227895161122

`1+A010060(n)`
-/

namespace A001285.P11616636227895161122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010060 n

end

end A001285.P11616636227895161122

noncomputable section

/-- A001285: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and 2's.

Offset 0, canonical program `A001285.P11616636227895161122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001285 (n : ℕ) : ℤ :=
  A001285.P11616636227895161122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001465.P11263082568877116543

`A000085(n)-A000704(n)`
-/

namespace A001465.P11263082568877116543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A000704 n

end

end A001465.P11263082568877116543

noncomputable section

/-- A001465: Number of degree-n odd permutations of order 2.

Offset 0, canonical program `A001465.P11263082568877116543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001465 (n : ℕ) : ℤ :=
  A001465.P11263082568877116543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001481.P14266788823695492218

`eq[1, A229062(n)]`
-/

namespace A001481.P14266788823695492218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001481.P14266788823695492218

noncomputable section

/-- A001481: Numbers that are the sum of 2 squares.

Offset 1, canonical program `A001481.P14266788823695492218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001481 (n : ℕ) : ℤ :=
  (A001481.P14266788823695492218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001497.P12548197760603764802

`A132062(comp[∑[n]])`
-/

namespace A001497.P12548197760603764802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132062 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A001497.P12548197760603764802

noncomputable section

/-- A001497: Triangle of coefficients of Bessel polynomials (exponents in decreasing order).

Offset 0, canonical program `A001497.P12548197760603764802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001497 (n : ℕ) : ℤ :=
  A001497.P12548197760603764802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001498.P13887111069766710405

`A001497(A061579(n))`
-/

namespace A001498.P13887111069766710405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (A061579 n).toNat

end

end A001498.P13887111069766710405

noncomputable section

/-- A001498: Triangle a(n,k) (n >= 0, 0 <= k <= n) of coefficients of Bessel polynomials y_n(x) (exponents in increasing order).

Offset 0, canonical program `A001498.P13887111069766710405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001498 (n : ℕ) : ℤ :=
  A001498.P13887111069766710405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A001498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001511.P17146462531039486101

`log2(A006519(n+1))+1`
-/

namespace A001511.P17146462531039486101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006519 (n + 1) : ℝ) + 1

end

end A001511.P17146462531039486101

noncomputable section

/-- A001511: The ruler function: exponent of the highest power of 2 dividing 2n. Equivalently, the 2-adic valuation of 2n.

Offset 1, canonical program `A001511.P17146462531039486101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001511.P17146462531039486101.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002129.P14132575705783117531

`A000593(n+1)-A146076(n+1)`
-/

namespace A002129.P14132575705783117531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A146076 (n + 1)

end

end A002129.P14132575705783117531

noncomputable section

/-- A002129: Generalized sum of divisors function: excess of sum of odd divisors of n over sum of even divisors of n.

Offset 1, canonical program `A002129.P14132575705783117531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002129 (n : ℕ) : ℤ :=
  A002129.P14132575705783117531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002260.P769748059679640451

`1+A002262(n)`
-/

namespace A002260.P769748059679640451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002262 n

end

end A002260.P769748059679640451

noncomputable section

/-- A002260: Triangle read by rows: T(n,k) = k for n >= 1, k = 1..n.

Offset 1, canonical program `A002260.P769748059679640451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002260 (n : ℕ) : ℤ :=
  A002260.P769748059679640451.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002740.P348049862178716560

`(A005408(n)-A133263(n))*A246432(n)`
-/

namespace A002740.P348049862178716560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A133263 n) * A246432 n

end

end A002740.P348049862178716560

noncomputable section

/-- A002740: Number of tree-rooted bridgeless planar maps with two vertices and n faces.

Offset 0, canonical program `A002740.P348049862178716560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002740 (n : ℕ) : ℤ :=
  A002740.P348049862178716560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003057.P1857820319080745606

`A002260(n+1)+A004736(n+1)`
-/

namespace A003057.P1857820319080745606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A004736 (n + 1)

end

end A003057.P1857820319080745606

noncomputable section

/-- A003057: n appears n - 1 times.

Offset 2, canonical program `A003057.P1857820319080745606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003057 (n : ℕ) : ℤ :=
  A003057.P1857820319080745606.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003506.P3661532846367947331

`A004736(n+1)*A074909(n)`
-/

namespace A003506.P3661532846367947331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A074909 n

end

end A003506.P3661532846367947331

noncomputable section

/-- A003506: Triangle of denominators in Leibniz's Harmonic Triangle a(n,k), n >= 1, 1 <= k <= n.

Offset 1, canonical program `A003506.P3661532846367947331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003506 (n : ℕ) : ℤ :=
  A003506.P3661532846367947331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003602.P7612175048291952394

`A110963(2*n+1)`
-/

namespace A003602.P7612175048291952394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * n + 1)

end

end A003602.P7612175048291952394

noncomputable section

/-- A003602: Kimberling's paraphrase of the binary number system: if n = (2k-1)*2^m then a(n) = k.

Offset 1, canonical program `A003602.P7612175048291952394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602 (n : ℕ) : ℤ :=
  A003602.P7612175048291952394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003991.P14084851459366035567

`A002260(n+1)*A004736(n+1)`
-/

namespace A003991.P14084851459366035567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1)

end

end A003991.P14084851459366035567

noncomputable section

/-- A003991: Multiplication table read by antidiagonals: T(i,j) = i*j, i>=1, j>=1.

Offset 1, canonical program `A003991.P14084851459366035567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003991 (n : ℕ) : ℤ :=
  A003991.P14084851459366035567.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004431.P13089136488273060828

`eq[1, A353814(n+1)]+1`
-/

namespace A004431.P13089136488273060828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004431.P13089136488273060828

noncomputable section

/-- A004431: Numbers that are the sum of 2 distinct nonzero squares.

Offset 1, canonical program `A004431.P13089136488273060828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431 (n : ℕ) : ℤ :=
  (A004431.P13089136488273060828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004730.P1125278465444381569

`gcd(A138364(n), A380909(n))`
-/

namespace A004730.P1125278465444381569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138364 n) (A380909 n)

end

end A004730.P1125278465444381569

noncomputable section

/-- A004730: Numerator of n!!/(n+1)!! (cf. A006882).

Offset 0, canonical program `A004730.P1125278465444381569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004730 (n : ℕ) : ℤ :=
  (A004730.P1125278465444381569.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005171.P15860856746370777121

`1-A010051(n+1)`
-/

namespace A005171.P15860856746370777121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

end

end A005171.P15860856746370777121

noncomputable section

/-- A005171: Characteristic function of nonprimes: 0 if n is prime, else 1.

Offset 1, canonical program `A005171.P15860856746370777121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005171 (n : ℕ) : ℤ :=
  A005171.P15860856746370777121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006068.P16534033749009019403

`2*A265263(n)-2*A377404(n)-A010060(n)`
-/

namespace A006068.P16534033749009019403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265263 n - 2 * A377404 n - A010060 n

end

end A006068.P16534033749009019403

noncomputable section

/-- A006068: a(n) is Gray-coded into n.

Offset 0, canonical program `A006068.P16534033749009019403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, A377404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006068 (n : ℕ) : ℤ :=
  A006068.P16534033749009019403.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, A377404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006078.P3851421618705836682

`A126120(n+2)+A050182(n)`
-/

namespace A006078.P3851421618705836682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2) + A050182 n

end

end A006078.P3851421618705836682

noncomputable section

/-- A006078: Number of triangulated (n+2)-gons rooted at an exterior edge.

Offset 2, canonical program `A006078.P3851421618705836682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078 (n : ℕ) : ℤ :=
  A006078.P3851421618705836682.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006788.P17628094807299860451

`A054650(n+1)-A323547(n+1)`
-/

namespace A006788.P17628094807299860451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 1) - A323547 (n + 1)

end

end A006788.P17628094807299860451

noncomputable section

/-- A006788: a(n) = floor(2^(n-1)/n).

Offset 1, canonical program `A006788.P17628094807299860451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A006788 (n : ℕ) : ℤ :=
  A006788.P17628094807299860451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A006788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006875.P14857395006895934659

`A000740(n+1)-A006876(n+1)`
-/

namespace A006875.P14857395006895934659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A006876 (n + 1)

end

end A006875.P14857395006895934659

noncomputable section

/-- A006875: Non-seed mu-atoms of period n in Mandelbrot set.

Offset 1, canonical program `A006875.P14857395006895934659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, A006876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006875 (n : ℕ) : ℤ :=
  A006875.P14857395006895934659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, A006876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A006875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007223.P11269491908758022439

`A000245(n+2)-A000150(n+3)`
-/

namespace A007223.P11269491908758022439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 2) - A000150 (n + 3)

end

end A007223.P11269491908758022439

noncomputable section

/-- A007223: Number of distinct perforation patterns for deriving (v,b) = (n+2,n) punctured convolutional codes from (2,1).

Offset 2, canonical program `A007223.P11269491908758022439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A007223 (n : ℕ) : ℤ :=
  A007223.P11269491908758022439.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A007223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007306.P17183682227013142410

`a(A003602(n-1))+a(A003602(n))` with `a(0)=1, a(1)=1`
-/

namespace A007306.P17183682227013142410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A003602 (n - 1)).toNat + a (A003602 n).toNat

end

end A007306.P17183682227013142410

noncomputable section

/-- A007306: Denominators of Farey tree fractions (i.e., the Stern-Brocot subtree in the range [0,1]).

Offset 0, canonical program `A007306.P17183682227013142410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007306 (n : ℕ) : ℤ :=
  (A007306.P17183682227013142410.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007318.P302227728145965961

`A259525(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A007318.P302227728145965961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259525 (n - 1) + a (n - 1)

end

end A007318.P302227728145965961

noncomputable section

/-- A007318: Pascal's triangle read by rows: C(n,k) = binomial(n,k) = n!/(k!*(n-k)!), 0 <= k <= n.

Offset 0, canonical program `A007318.P302227728145965961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007318 (n : ℕ) : ℤ :=
  A007318.P302227728145965961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007431.P16849793818733668455

`∑{d}[n, A007432(#)]`
-/

namespace A007431.P16849793818733668455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d

end

end A007431.P16849793818733668455

noncomputable section

/-- A007431: a(n) = Sum_{d|n} phi(d)*mu(n/d).

Offset 0, canonical program `A007431.P16849793818733668455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007431 (n : ℕ) : ℤ :=
  A007431.P16849793818733668455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007434.P3432859153295839493

`A000010(n+1)*A001615(n+1)`
-/

namespace A007434.P3432859153295839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001615 (n + 1)

end

end A007434.P3432859153295839493

noncomputable section

/-- A007434: Jordan function J_2(n) (a generalization of phi(n)).

Offset 1, canonical program `A007434.P3432859153295839493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007434 (n : ℕ) : ℤ :=
  A007434.P3432859153295839493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007438.P10356689231106603491

`(A007434(n+1)+A000010(n+1))/2`
-/

namespace A007438.P10356689231106603491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) + A000010 (n + 1) : ℚ) / 2

end

end A007438.P10356689231106603491

noncomputable section

/-- A007438: Moebius transform of triangular numbers.

Offset 1, canonical program `A007438.P10356689231106603491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007438 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007438.P10356689231106603491.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007491.P11939340284699720830

`A053000(n+1)+(n+1)²`
-/

namespace A007491.P11939340284699720830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A007491.P11939340284699720830

noncomputable section

/-- A007491: Smallest prime > n^2.

Offset 1, canonical program `A007491.P11939340284699720830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007491 (n : ℕ) : ℤ :=
  A007491.P11939340284699720830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007814.P13537437864234730737

`A001511(n+1)-1`
-/

namespace A007814.P13537437864234730737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - 1

end

end A007814.P13537437864234730737

noncomputable section

/-- A007814: Exponent of highest power of 2 dividing n, a.k.a. the binary carry sequence, the ruler sequence, or the 2-adic valuation of n.

Offset 1, canonical program `A007814.P13537437864234730737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007814 (n : ℕ) : ℤ :=
  A007814.P13537437864234730737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007875.P1743519679505570737

`A163109(∏{p}[n+1, #])`
-/

namespace A007875.P1743519679505570737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A007875.P1743519679505570737

noncomputable section

/-- A007875: Number of ways of writing n as p*q, with p <= q, gcd(p, q) = 1.

Offset 1, canonical program `A007875.P1743519679505570737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007875 (n : ℕ) : ℤ :=
  A007875.P1743519679505570737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008459.P3220700038138124146

`A007318(n)²`
-/

namespace A008459.P3220700038138124146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

end

end A008459.P3220700038138124146

noncomputable section

/-- A008459: Square the entries of Pascal's triangle.

Offset 0, canonical program `A008459.P3220700038138124146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008459 (n : ℕ) : ℤ :=
  A008459.P3220700038138124146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009262.P968093419327824865

`A000010(n+1)*A109395(n+1)`
-/

namespace A009262.P968093419327824865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A109395 (n + 1)

end

end A009262.P968093419327824865

noncomputable section

/-- A009262: a(n) = lcm(n, phi(n)).

Offset 1, canonical program `A009262.P968093419327824865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009262 (n : ℕ) : ℤ :=
  A009262.P968093419327824865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A109395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010027.P2698919876476170280

`A000255(A002262(n))*A007318(n)`
-/

namespace A010027.P2698919876476170280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (A002262 n).toNat * A007318 n

end

end A010027.P2698919876476170280

noncomputable section

/-- A010027: Triangle read by rows: T(n,k) is the number of permutations of [n] having k consecutive ascending pairs (0 <= k <= n-1).

Offset 1, canonical program `A010027.P2698919876476170280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A010027 (n : ℕ) : ℤ :=
  A010027.P2698919876476170280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. -/
def A010027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010059.P6338678923093357896

`1-A010060(n)`
-/

namespace A010059.P6338678923093357896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

end

end A010059.P6338678923093357896

noncomputable section

/-- A010059: Another version of the Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

Offset 0, canonical program `A010059.P6338678923093357896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010059 (n : ℕ) : ℤ :=
  A010059.P6338678923093357896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010815.P5219802530418017542

`Δ[A078616(abs(1-n))]`
-/

namespace A010815.P5219802530418017542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010815.P5219802530418017542

noncomputable section

/-- A010815: From Euler's Pentagonal Theorem: coefficient of q^n in Product_{m>=1} (1 - q^m).

Offset 0, canonical program `A010815.P5219802530418017542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010815 (n : ℕ) : ℤ :=
  A010815.P5219802530418017542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011262.P4477044997236671341

`A007913(n+1)²*A003557(n+1)`
-/

namespace A011262.P4477044997236671341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2 * A003557 (n + 1)

end

end A011262.P4477044997236671341

noncomputable section

/-- A011262: In the prime factorization of n, increment odd powers and decrement even powers (multiplicative and self-inverse).

Offset 1, canonical program `A011262.P4477044997236671341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011262 (n : ℕ) : ℤ :=
  A011262.P4477044997236671341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011946.P13849652241662667985

`∑{d}[n+1, A001511(#)*A296302((n+1)/#)]`
-/

namespace A011946.P13849652241662667985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P13849652241662667985

noncomputable section

/-- A011946: Number of Barlow packings with group P63/mmc(S) that repeat after 4n layers.

Offset 1, canonical program `A011946.P13849652241662667985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946 (n : ℕ) : ℤ :=
  A011946.P13849652241662667985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014081.P14878370479040452879

`A000120(n)-A069010(n)`
-/

namespace A014081.P14878370479040452879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A069010 n

end

end A014081.P14878370479040452879

noncomputable section

/-- A014081: a(n) is the number of occurrences of '11' in the binary expansion of n.

Offset 0, canonical program `A014081.P14878370479040452879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014081 (n : ℕ) : ℤ :=
  A014081.P14878370479040452879.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014082.P16446960074050354385

`A014081(and(n, 2*n))`
-/

namespace A014082.P16446960074050354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.land n (2 * n))

end

end A014082.P16446960074050354385

noncomputable section

/-- A014082: Number of occurrences of '111' in binary expansion of n.

Offset 0, canonical program `A014082.P16446960074050354385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082 (n : ℕ) : ℤ :=
  A014082.P16446960074050354385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014198.P2354480518814049901

`a(n-1)+2*A105673(n)` with `a(0)=0`
-/

namespace A014198.P2354480518814049901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A105673 n

end

end A014198.P2354480518814049901

noncomputable section

/-- A014198: Number of integer solutions to x^2 + y^2 <= n excluding (0,0).

Offset 0, canonical program `A014198.P2354480518814049901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198 (n : ℕ) : ℤ :=
  A014198.P2354480518814049901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014200.P16970295702573526038

`A014198(n)/4`
-/

namespace A014200.P16970295702573526038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 4

end

end A014200.P16970295702573526038

noncomputable section

/-- A014200: Number of solutions to x^2 + y^2 <= n, excluding (0,0), divided by 4.

Offset 0, canonical program `A014200.P16970295702573526038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014200.P16970295702573526038.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014413.P14567634354021645646

`A007318(eq[1, A340507(n)])`
-/

namespace A014413.P14567634354021645646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014413.P14567634354021645646

noncomputable section

/-- A014413: Triangular array formed from elements to right of middle of Pascal's triangle.

Offset 1, canonical program `A014413.P14567634354021645646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A014413 (n : ℕ) : ℤ :=
  A014413.P14567634354021645646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A014413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014473.P9301799580602651200

`A007318(n)-1`
-/

namespace A014473.P9301799580602651200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 1

end

end A014473.P9301799580602651200

noncomputable section

/-- A014473: Pascal's triangle - 1: Triangle read by rows: T(n, k) = A007318(n, k) - 1.

Offset 0, canonical program `A014473.P9301799580602651200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014473 (n : ℕ) : ℤ :=
  A014473.P9301799580602651200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014963.P5975177236000282614

`A166140(n+1)/A166142(n+1)`
-/

namespace A014963.P5975177236000282614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166140 (n + 1) : ℚ) / (A166142 (n + 1) : ℚ)

end

end A014963.P5975177236000282614

noncomputable section

/-- A014963: Exponential of Mangoldt function M(n): a(n) = 1 unless n is a prime or prime power, in which case a(n) = that prime.

Offset 1, canonical program `A014963.P5975177236000282614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166140, A166142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014963 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014963.P5975177236000282614.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166140, A166142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015614.P8689819848562106603

`Δ[A103116(n)]-1`
-/

namespace A015614.P8689819848562106603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A015614.P8689819848562106603

noncomputable section

/-- A015614: a(n) = -1 + Sum_{i=1..n} phi(i).

Offset 1, canonical program `A015614.P8689819848562106603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015614 (n : ℕ) : ℤ :=
  A015614.P8689819848562106603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015919.P3585954114832443963

`filter[A176176(n+1), A008966(#)]`
-/

namespace A015919.P3585954114832443963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A015919.P3585954114832443963

noncomputable section

/-- A015919: Positive integers k such that 2^k == 2 (mod k).

Offset 1, canonical program `A015919.P3585954114832443963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A015919 (n : ℕ) : ℤ :=
  A015919.P3585954114832443963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A015919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017666.P16572893466817104564

`A388283(n+1)-A390582(n+1)`
-/

namespace A017666.P16572893466817104564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (n + 1) - A390582 (n + 1)

end

end A017666.P16572893466817104564

noncomputable section

/-- A017666: Denominator of sum of reciprocals of divisors of n.

Offset 1, canonical program `A017666.P16572893466817104564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017666 (n : ℕ) : ℤ :=
  A017666.P16572893466817104564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018805.P12666295524682144614

`2*A015614(n+1)+1`
-/

namespace A018805.P12666295524682144614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015614 (n + 1) + 1

end

end A018805.P12666295524682144614

noncomputable section

/-- A018805: Number of elements in the set {(x,y): 1 <= x,y <= n, gcd(x,y)=1}.

Offset 1, canonical program `A018805.P12666295524682144614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018805 (n : ℕ) : ℤ :=
  A018805.P12666295524682144614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A018825.P17104001644328074366

`comp[A069011(comp[∑[n+1]])]`
-/

namespace A018825.P17104001644328074366
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A018825.P17104001644328074366

noncomputable section

/-- A018825: Numbers that are not the sum of 2 nonzero squares.

Offset 1, canonical program `A018825.P17104001644328074366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018825 (n : ℕ) : ℤ :=
  (A018825.P17104001644328074366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019554.P8390278603844822530

`∑{d}[n+1, A346612(#)]`
-/

namespace A019554.P8390278603844822530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346612 d

end

end A019554.P8390278603844822530

noncomputable section

/-- A019554: Smallest number whose square is divisible by n.

Offset 1, canonical program `A019554.P8390278603844822530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019554 (n : ℕ) : ℤ :=
  A019554.P8390278603844822530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019590.P10517823757212113743

`A000035(A000010(n+1))`
-/

namespace A019590.P10517823757212113743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 1)).toNat

end

end A019590.P10517823757212113743

noncomputable section

/-- A019590: Fermat's Last Theorem: a(n) = 1 if x^n + y^n = z^n has a nontrivial solution in integers, otherwise a(n) = 0.

Offset 1, canonical program `A019590.P10517823757212113743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019590 (n : ℕ) : ℤ :=
  A019590.P10517823757212113743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020985.P937884151096334327

`(-1)^A014081(n)`
-/

namespace A020985.P937884151096334327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014081 n : ℤ)

end

end A020985.P937884151096334327

noncomputable section

/-- A020985: The Rudin-Shapiro or Golay-Rudin-Shapiro sequence (coefficients of the Shapiro polynomials).

Offset 0, canonical program `A020985.P937884151096334327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020985.P937884151096334327.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022544.P380429781793413128

`comp[A069011(n)]`
-/

namespace A022544.P380429781793413128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022544.P380429781793413128

noncomputable section

/-- A022544: Numbers that are not the sum of 2 squares.

Offset 1, canonical program `A022544.P380429781793413128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544 (n : ℕ) : ℤ :=
  (A022544.P380429781793413128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022806.P955735887301753164

`A022843(n+1)+A054385(n+1)`
-/

namespace A022806.P955735887301753164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + A054385 (n + 1)

end

end A022806.P955735887301753164

noncomputable section

/-- A022806: a(n) = B(n) + c(n) where B(n) is Beatty sequence [ n*e ] and c is the complement of B.

Offset 1, canonical program `A022806.P955735887301753164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022806 (n : ℕ) : ℤ :=
  A022806.P955735887301753164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023022.P1398771566615799062

`A057001(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A023022.P1398771566615799062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A057001 (n + 1) + a (n - 1)

end

end A023022.P1398771566615799062

noncomputable section

/-- A023022: Number of partitions of n into two relatively prime parts. After initial term, this is the "half-totient" function phi(n)/2 (A000010(n)/2).

Offset 2, canonical program `A023022.P1398771566615799062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023022 (n : ℕ) : ℤ :=
  A023022.P1398771566615799062.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025474.P18098072962577053002

`∑{e}[A000961(n+1), #]`
-/

namespace A025474.P18098072962577053002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025474.P18098072962577053002

noncomputable section

/-- A025474: Exponent of the n-th prime power A000961(n).

Offset 1, canonical program `A025474.P18098072962577053002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025474 (n : ℕ) : ℤ :=
  (A025474.P18098072962577053002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025792.P9769894626943963731

`A025824(abs(1-n))+A025824(n)`
-/

namespace A025792.P9769894626943963731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025824 |1 - (n : ℤ)|.toNat + A025824 n

end

end A025792.P9769894626943963731

noncomputable section

/-- A025792: Expansion of 1/((1-x)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025792.P9769894626943963731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025792 (n : ℕ) : ℤ :=
  A025792.P9769894626943963731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025840.P13065083741714530508

`A025853(n)+A025882(n)-A025911(n)`
-/

namespace A025840.P13065083741714530508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A025882 n - A025911 n)

end

end A025840.P13065083741714530508

noncomputable section

/-- A025840: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A025840.P13065083741714530508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025840 (n : ℕ) : ℤ :=
  A025840.P13065083741714530508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025858.P921057180640317668

`A025907(abs(3-n))+A025907(n)`
-/

namespace A025858.P921057180640317668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 |3 - (n : ℤ)|.toNat + A025907 n

end

end A025858.P921057180640317668

noncomputable section

/-- A025858: Expansion of 1/((1-x^3)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025858.P921057180640317668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025858 (n : ℕ) : ℤ :=
  A025858.P921057180640317668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025892.P18108016657510251270

`A029101(n)+A029342(n)-A029081(n)`
-/

namespace A025892.P18108016657510251270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 n + (A029342 n - A029081 n)

end

end A025892.P18108016657510251270

noncomputable section

/-- A025892: Expansion of 1/((1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025892.P18108016657510251270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025892 (n : ℕ) : ℤ :=
  A025892.P18108016657510251270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025895.P11003937639297082078

`A025810(n)+A025840(n)-A025801(n)`
-/

namespace A025895.P11003937639297082078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 n + (A025840 n - A025801 n)

end

end A025895.P11003937639297082078

noncomputable section

/-- A025895: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A025895.P11003937639297082078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025895 (n : ℕ) : ℤ :=
  A025895.P11003937639297082078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025913.P13843869417188277868

`A025868(n)+A025892(n)-A025863(n)`
-/

namespace A025913.P13843869417188277868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n + (A025892 n - A025863 n)

end

end A025913.P13843869417188277868

noncomputable section

/-- A025913: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A025913.P13843869417188277868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025913 (n : ℕ) : ℤ :=
  A025913.P13843869417188277868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026005.P1831924511019717742

`(n+1)*A069271(n)`
-/

namespace A026005.P1831924511019717742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069271 n

end

end A026005.P1831924511019717742

noncomputable section

/-- A026005: a(n) = T(4*n,n), where T = Catalan triangle (A008315).

Offset 0, canonical program `A026005.P1831924511019717742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026005 (n : ℕ) : ℤ :=
  A026005.P1831924511019717742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026008.P1049361676505189419

`A208355(n+2)-A097331(n+2)`
-/

namespace A026008.P1049361676505189419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 2) - A097331 (n + 2)

end

end A026008.P1049361676505189419

noncomputable section

/-- A026008: a(n) = T(n, floor(n/2)), where T = Catalan triangle (A008315).

Offset 0, canonical program `A026008.P1049361676505189419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A026008 (n : ℕ) : ℤ :=
  A026008.P1049361676505189419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A026008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026269.P3901397121172539667

`record[Δ[A105695(A008612(n))]]`
-/

namespace A026269.P3901397121172539667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026269.P3901397121172539667

noncomputable section

/-- A026269: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0 = s(n), s(1) = 1, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also a(n) = T(n,n) and a(n) = Sum{T(k,k-1)}, k = 1,2,...,n, where T is array in A026268.

Offset 2, canonical program `A026269.P3901397121172539667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026269 (n : ℕ) : ℤ :=
  A026269.P3901397121172539667.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028330.P6625420377303343371

`2*A014413(n+1)`
-/

namespace A028330.P6625420377303343371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (n + 1)

end

end A028330.P6625420377303343371

noncomputable section

/-- A028330: Elements to the right of the central elements of the even-Pascal triangle A028326.

Offset 0, canonical program `A028330.P6625420377303343371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330 (n : ℕ) : ℤ :=
  A028330.P6625420377303343371.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029031.P834443779075650966

`A029062(n)+A029170(n)-A025858(n)`
-/

namespace A029031.P834443779075650966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029062 n + (A029170 n - A025858 n)

end

end A029031.P834443779075650966

noncomputable section

/-- A029031: Expansion of 1/((1-x)(1-x^2)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029031.P834443779075650966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029031 (n : ℕ) : ℤ :=
  A029031.P834443779075650966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029044.P17699817528028773973

`∑[A025840(n)]`
-/

namespace A029044.P17699817528028773973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029044.P17699817528028773973

noncomputable section

/-- A029044: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A029044.P17699817528028773973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029044 (n : ℕ) : ℤ :=
  A029044.P17699817528028773973.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029084.P1492728196900736452

`A029031(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029084.P1492728196900736452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029031 n - a (n - 2)

end

end A029084.P1492728196900736452

noncomputable section

/-- A029084: Expansion of 1/((1-x)(1-x^4)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029084.P1492728196900736452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029084 (n : ℕ) : ℤ :=
  A029084.P1492728196900736452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029104.P11171262085675889674

`∑[A025895(n)]`
-/

namespace A029104.P11171262085675889674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029104.P11171262085675889674

noncomputable section

/-- A029104: Expansion of 1/((1-x)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029104.P11171262085675889674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029104 (n : ℕ) : ℤ :=
  A029104.P11171262085675889674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029192.P625533738884100242

`A029084(n)-a(n-1)` with `a(0)=1`
-/

namespace A029192.P625533738884100242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029084 n - a (n - 1)

end

end A029192.P625533738884100242

noncomputable section

/-- A029192: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029192.P625533738884100242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029192 (n : ℕ) : ℤ :=
  A029192.P625533738884100242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029290.P16762149366517590486

`A025895(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029290.P16762149366517590486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025895 n + a (n - 3)

end

end A029290.P16762149366517590486

noncomputable section

/-- A029290: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029290.P16762149366517590486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029290 (n : ℕ) : ℤ :=
  A029290.P16762149366517590486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029291.P6732410073293999855

`A025840(n)+A029043(n)-A029044(n)`
-/

namespace A029291.P6732410073293999855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n + (A029043 n - A029044 n)

end

end A029291.P6732410073293999855

noncomputable section

/-- A029291: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029291.P6732410073293999855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029291 (n : ℕ) : ℤ :=
  A029291.P6732410073293999855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029383.P10874910556214980538

`A029195(n)+A029393(n)-A029199(n)`
-/

namespace A029383.P10874910556214980538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029195 n + (A029393 n - A029199 n)

end

end A029383.P10874910556214980538

noncomputable section

/-- A029383: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029383.P10874910556214980538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029383 (n : ℕ) : ℤ :=
  A029383.P10874910556214980538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029391.P12825542684118861897

`A029290(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029391.P12825542684118861897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029290 n - a (n - 3)

end

end A029391.P12825542684118861897

noncomputable section

/-- A029391: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029391.P12825542684118861897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029391 (n : ℕ) : ℤ :=
  A029391.P12825542684118861897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029887.P13365086827215929725

`4*a(n-1)+A000531(n+1)` with `a(0)=1`
-/

namespace A029887.P13365086827215929725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A000531 (n + 1)

end

end A029887.P13365086827215929725

noncomputable section

/-- A029887: A sum over scaled A000531 related to Catalan numbers C(n).

Offset 0, canonical program `A029887.P13365086827215929725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029887 (n : ℕ) : ℤ :=
  A029887.P13365086827215929725.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030528.P11879797609187642166

`C(A002260(n+1), A025581(n))`
-/

namespace A030528.P11879797609187642166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A025581 n).toNat

end

end A030528.P11879797609187642166

noncomputable section

/-- A030528: Triangle read by rows: T(n,k) = binomial(k,n-k).

Offset 1, canonical program `A030528.P11879797609187642166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030528 (n : ℕ) : ℤ :=
  (A030528.P11879797609187642166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031218.P11079871404618641815

`A000961(A065515(n+1))`
-/

namespace A031218.P11079871404618641815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A065515 (n + 1)).toNat

end

end A031218.P11079871404618641815

noncomputable section

/-- A031218: Largest prime power <= n.

Offset 1, canonical program `A031218.P11079871404618641815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031218 (n : ℕ) : ℤ :=
  A031218.P11079871404618641815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032094.P1520495427252306651

`4*A031164(n)`
-/

namespace A032094.P1520495427252306651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031164 n

end

end A032094.P1520495427252306651

noncomputable section

/-- A032094: Number of reversible strings with n-1 beads of 2 colors. 7 beads are black. String is not palindromic.

Offset 9, canonical program `A032094.P1520495427252306651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032094 (n : ℕ) : ℤ :=
  A032094.P1520495427252306651.a (n - 9)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034448.P17017727775393200719

`A064971(n+1)/(n+1)`
-/

namespace A034448.P17017727775393200719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A034448.P17017727775393200719

noncomputable section

/-- A034448: usigma(n) = sum of unitary divisors of n (divisors d such that gcd(d, n/d)=1); also called UnitarySigma(n).

Offset 1, canonical program `A034448.P17017727775393200719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034448.P17017727775393200719.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034460.P1958235575820581513

`A034448(n+1)-(n+1)`
-/

namespace A034460.P1958235575820581513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (n + 1 : ℤ)

end

end A034460.P1958235575820581513

noncomputable section

/-- A034460: a(n) = usigma(n) - n, where usigma(n) = sum of unitary divisors of n (A034448).

Offset 1, canonical program `A034460.P1958235575820581513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034460 (n : ℕ) : ℤ :=
  A034460.P1958235575820581513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034741.P4749384178526345619

`∑{d}[n+1, A034754(#)*A055615((n+1)/#)]`
-/

namespace A034741.P4749384178526345619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034754 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034741.P4749384178526345619

noncomputable section

/-- A034741: Dirichlet convolution of mu(n) with 3^(n-1).

Offset 1, canonical program `A034741.P4749384178526345619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034741 (n : ℕ) : ℤ :=
  A034741.P4749384178526345619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035178.P16959896462476049729

`abs(A261884(n+1))`
-/

namespace A035178.P16959896462476049729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261884 (n + 1)|

end

end A035178.P16959896462476049729

noncomputable section

/-- A035178: a(n) = Sum_{d|n} Kronecker(-12, d) (= A134667(d)).

Offset 1, canonical program `A035178.P16959896462476049729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035178 (n : ℕ) : ℤ :=
  A035178.P16959896462476049729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035185.P8037574016802671635

`A363037(n+1)-A364032(n+1)`
-/

namespace A035185.P8037574016802671635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A364032 (n + 1)

end

end A035185.P8037574016802671635

noncomputable section

/-- A035185: Number of divisors of n == 1 or 7 (mod 8) minus number of divisors of n == 3 or 5 (mod 8).

Offset 1, canonical program `A035185.P8037574016802671635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185 (n : ℕ) : ℤ :=
  A035185.P8037574016802671635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035263.P6825362395192920526

`A000035(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035263.P6825362395192920526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001511 (n + 1)).toNat

end

end A035263.P6825362395192920526

noncomputable section

/-- A035263: Trajectory of 1 under the morphism 0 -> 11, 1 -> 10; parity of 2-adic valuation of 2n: a(n) = A000035(A001511(n)).

Offset 1, canonical program `A035263.P6825362395192920526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035263 (n : ℕ) : ℤ :=
  A035263.P6825362395192920526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036069.P1575067081743271746

`gcd(2, n+1)*A004730(abs(A024000(n)))`
-/

namespace A036069.P1575067081743271746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A004730 |A024000 n|.toNat

end

end A036069.P1575067081743271746

noncomputable section

/-- A036069: Denominator of rational part of Haar measure on Grassmannian space G(n,1).

Offset 0, canonical program `A036069.P1575067081743271746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069 (n : ℕ) : ℤ :=
  A036069.P1575067081743271746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036561.P7490084913005378529

`2^(A004736(n+1)-1)*3^(A002260(n+1)-1)`
-/

namespace A036561.P7490084913005378529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (3 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A036561.P7490084913005378529

noncomputable section

/-- A036561: Nicomachus triangle read by rows, T(n, k) = 2^(n - k)*3^k, for 0 <= k <= n.

Offset 0, canonical program `A036561.P7490084913005378529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036561.P7490084913005378529.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036698.P3152835247264100802

`A014200(n²)`
-/

namespace A036698.P3152835247264100802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n ^ 2)

end

end A036698.P3152835247264100802

noncomputable section

/-- A036698: a(n) is the number of Gaussian integers z=a+bi satisfying |z|<=n, a>0, b>=0.

Offset 0, canonical program `A036698.P3152835247264100802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698 (n : ℕ) : ℤ :=
  A036698.P3152835247264100802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037126.P15983573472963072743

`A000040(A002260(n+1))`
-/

namespace A037126.P15983573472963072743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat

end

end A037126.P15983573472963072743

noncomputable section

/-- A037126: Triangle T(n,k) = prime(k) for k = 1..n.

Offset 1, canonical program `A037126.P15983573472963072743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037126 (n : ℕ) : ℤ :=
  A037126.P15983573472963072743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037227.P1481052513991100259

`2*A007814(n+1)+1`
-/

namespace A037227.P1481052513991100259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) + 1

end

end A037227.P1481052513991100259

noncomputable section

/-- A037227: If n = 2^m*k, k odd, then a(n) = 2*m+1.

Offset 1, canonical program `A037227.P1481052513991100259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227 (n : ℕ) : ℤ :=
  A037227.P1481052513991100259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037800.P4480434957642420409

`(A069010(n)+n)%(n+1)`
-/

namespace A037800.P4480434957642420409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n + (n : ℤ)) (n + 1 : ℤ)

end

end A037800.P4480434957642420409

noncomputable section

/-- A037800: Number of occurrences of 01 in the binary expansion of n.

Offset 0, canonical program `A037800.P4480434957642420409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037800 (n : ℕ) : ℤ :=
  A037800.P4480434957642420409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037911.P18019407288265882149

`A037913(A007094(n+1))`
-/

namespace A037911.P18019407288265882149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007094 (n + 1)).toNat

end

end A037911.P18019407288265882149

noncomputable section

/-- A037911: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*8^i is the base-8 representation of n.

Offset 1, canonical program `A037911.P18019407288265882149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A037911 (n : ℕ) : ℤ :=
  A037911.P18019407288265882149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A037911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037953.P4840713921781047894

`A037955(n)-A099376(floor(n/2))`
-/

namespace A037953.P4840713921781047894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n - A099376 ⌊(n : ℚ) / 2⌋.toNat

end

end A037953.P4840713921781047894

noncomputable section

/-- A037953: a(n) = binomial(n, floor((n-5)/2)).

Offset 0, canonical program `A037953.P4840713921781047894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037953 (n : ℕ) : ℤ :=
  A037953.P4840713921781047894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037954.P15656623579345578521

`A037957(n+1)-A037953(n)`
-/

namespace A037954.P15656623579345578521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (n + 1) - A037953 n

end

end A037954.P15656623579345578521

noncomputable section

/-- A037954: a(n) = binomial(n, floor((n-7)/2)).

Offset 0, canonical program `A037954.P15656623579345578521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037954 (n : ℕ) : ℤ :=
  A037954.P15656623579345578521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037958.P1538083685878928086

`A037954(n+1)-A037957(n)`
-/

namespace A037958.P1538083685878928086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (n + 1) - A037957 n

end

end A037958.P1538083685878928086

noncomputable section

/-- A037958: a(n) = binomial(n, floor((n-8)/2)).

Offset 0, canonical program `A037958.P1538083685878928086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958 (n : ℕ) : ℤ :=
  A037958.P1538083685878928086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038387.P4721270746372343696

`gcd(2*A007913(2*(n+1)), A000578(n+1))`
-/

namespace A038387.P4721270746372343696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A007913 (2 * (n + 1))) (A000578 (n + 1))

end

end A038387.P4721270746372343696

noncomputable section

/-- A038387: a(n) is the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and a(n) are both integers.

Offset 1, canonical program `A038387.P4721270746372343696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038387 (n : ℕ) : ℤ :=
  (A038387.P4721270746372343696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038388.P12225938423161256159

`sqrt((n+1)*A038387(n+1))`
-/

namespace A038388.P12225938423161256159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A038387 (n + 1) : ℝ)

end

end A038388.P12225938423161256159

noncomputable section

/-- A038388: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives G values.

Offset 1, canonical program `A038388.P12225938423161256159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038388.P12225938423161256159.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038806.P49319047568479767

`A002697(n+1)-A000531(n+1)`
-/

namespace A038806.P49319047568479767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A000531 (n + 1)

end

end A038806.P49319047568479767

noncomputable section

/-- A038806: Convolution of A008549 with A000302 (powers of 4).

Offset 0, canonical program `A038806.P49319047568479767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A038806 (n : ℕ) : ℤ :=
  A038806.P49319047568479767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A038806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039649.P16717312505280968063

`A000010(n+1)+1`
-/

namespace A039649.P16717312505280968063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

end

end A039649.P16717312505280968063

noncomputable section

/-- A039649: a(n) = phi(n)+1.

Offset 1, canonical program `A039649.P16717312505280968063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039649 (n : ℕ) : ℤ :=
  A039649.P16717312505280968063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046899.P13814988241420676234

`C(A051162(n), A002262(n))`
-/

namespace A046899.P13814988241420676234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A002262 n).toNat

end

end A046899.P13814988241420676234

noncomputable section

/-- A046899: Triangle in which n-th row is {binomial(n+k,k), k=0..n}, n >= 0.

Offset 0, canonical program `A046899.P13814988241420676234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9452 terms. -/
def A046899 (n : ℕ) : ℤ :=
  (A046899.P13814988241420676234.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9452 terms. -/
def A046899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048146.P9985884013456677192

`A000203(n+1)-A034448(n+1)`
-/

namespace A048146.P9985884013456677192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1)

end

end A048146.P9985884013456677192

noncomputable section

/-- A048146: Sum of non-unitary divisors of n.

Offset 1, canonical program `A048146.P9985884013456677192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048146 (n : ℕ) : ℤ :=
  A048146.P9985884013456677192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048675.P15792214674053257917

`∑{d}[n+1, A297108(#)]`
-/

namespace A048675.P15792214674053257917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297108 d

end

end A048675.P15792214674053257917

noncomputable section

/-- A048675: If n = p_i^e_i * ... * p_k^e_k, p_i < ... < p_k primes (with p_i = prime(i)), then a(n) = (1/2) * (e_i * 2^i + ... + e_k * 2^k).

Offset 1, canonical program `A048675.P15792214674053257917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A048675 (n : ℕ) : ℤ :=
  A048675.P15792214674053257917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A048675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048798.P11871248388947828360

`A011262(A050985(n+1))`
-/

namespace A048798.P11871248388947828360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A050985 (n + 1)).toNat

end

end A048798.P11871248388947828360

noncomputable section

/-- A048798: Smallest k > 0 such that n*k is a perfect cube.

Offset 1, canonical program `A048798.P11871248388947828360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798 (n : ℕ) : ℤ :=
  A048798.P11871248388947828360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050376.P5652592925068507923

`∪[A000040(n+1), A084400(n+2)]`
-/

namespace A050376.P5652592925068507923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050376.P5652592925068507923

noncomputable section

/-- A050376: "Fermi-Dirac primes": numbers of the form p^(2^k) where p is prime and k >= 0.

Offset 1, canonical program `A050376.P5652592925068507923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050376 (n : ℕ) : ℤ :=
  (A050376.P5652592925068507923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050452.P8848155708238405563

`A000593(n+1)-A050449(n+1)`
-/

namespace A050452.P8848155708238405563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A050449 (n + 1)

end

end A050452.P8848155708238405563

noncomputable section

/-- A050452: a(n) = Sum_{d|n, d == 3 (mod 4)} d.

Offset 1, canonical program `A050452.P8848155708238405563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050452 (n : ℕ) : ℤ :=
  A050452.P8848155708238405563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051533.P6966278410585714434

`lt[0, A053603(n)]`
-/

namespace A051533.P6966278410585714434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051533.P6966278410585714434

noncomputable section

/-- A051533: Numbers that are the sum of two positive triangular numbers.

Offset 1, canonical program `A051533.P6966278410585714434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533 (n : ℕ) : ℤ :=
  (A051533.P6966278410585714434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051612.P4135239823752248514

`A000203(n+1)-A000010(n+1)`
-/

namespace A051612.P4135239823752248514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1)

end

end A051612.P4135239823752248514

noncomputable section

/-- A051612: a(n) = sigma(n) - phi(n).

Offset 1, canonical program `A051612.P4135239823752248514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051612 (n : ℕ) : ℤ :=
  A051612.P4135239823752248514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051777.P15797319284762546370

`A123578(n)%A193592(n)`
-/

namespace A051777.P15797319284762546370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 n) (A193592 n)

end

end A051777.P15797319284762546370

noncomputable section

/-- A051777: Triangle read by rows, where row (n) = n mod n, n mod (n-1), n mod (n-2), ...n mod 1.

Offset 1, canonical program `A051777.P15797319284762546370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051777 (n : ℕ) : ℤ :=
  A051777.P15797319284762546370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051953.P18292137869900707183

`A051612(n+1)-A001065(n+1)`
-/

namespace A051953.P18292137869900707183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A001065 (n + 1)

end

end A051953.P18292137869900707183

noncomputable section

/-- A051953: Cototient(n) := n - phi(n).

Offset 1, canonical program `A051953.P18292137869900707183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A051612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051953 (n : ℕ) : ℤ :=
  A051953.P18292137869900707183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A051612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053143.P2973590149006615306

`A019554(n+1)²`
-/

namespace A053143.P2973590149006615306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2

end

end A053143.P2973590149006615306

noncomputable section

/-- A053143: Smallest square divisible by n.

Offset 1, canonical program `A053143.P2973590149006615306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053143 (n : ℕ) : ℤ :=
  A053143.P2973590149006615306.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053149.P4125189005957149122

`(n+1)*A048798(n+1)`
-/

namespace A053149.P4125189005957149122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048798 (n + 1)

end

end A053149.P4125189005957149122

noncomputable section

/-- A053149: Smallest cube divisible by n.

Offset 1, canonical program `A053149.P4125189005957149122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053149 (n : ℕ) : ℤ :=
  A053149.P4125189005957149122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053616.P15730649175569513944

`val(2*A036561(n), 6)`
-/

namespace A053616.P15730649175569513944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A036561 n).toNat 6

end

end A053616.P15730649175569513944

noncomputable section

/-- A053616: Pyramidal sequence: distance to nearest triangular number.

Offset 0, canonical program `A053616.P15730649175569513944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616 (n : ℕ) : ℤ :=
  (A053616.P15730649175569513944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053637.P7550852666118607811

`A043545(n)+A006788(n+1)`
-/

namespace A053637.P7550852666118607811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A006788 (n + 1)

end

end A053637.P7550852666118607811

noncomputable section

/-- A053637: a(n) = ceiling(2^(n-1)/n).

Offset 1, canonical program `A053637.P7550852666118607811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A053637 (n : ℕ) : ℤ :=
  A053637.P7550852666118607811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A053637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054353.P9950595291365401713

`A156077(n+1)+2*A074286(n+1)`
-/

namespace A054353.P9950595291365401713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1) + 2 * A074286 (n + 1)

end

end A054353.P9950595291365401713

noncomputable section

/-- A054353: Partial sums of Kolakoski sequence A000002.

Offset 1, canonical program `A054353.P9950595291365401713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074286, A156077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054353 (n : ℕ) : ℤ :=
  A054353.P9950595291365401713.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074286, A156077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056011.P1549659588632935802

`A092543(n+1)+A057944(n)`
-/

namespace A056011.P1549659588632935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) + A057944 n

end

end A056011.P1549659588632935802

noncomputable section

/-- A056011: Enumeration of natural numbers by the boustrophedonic diagonal method.

Offset 1, canonical program `A056011.P1549659588632935802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056011 (n : ℕ) : ℤ :=
  A056011.P1549659588632935802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056023.P18301880220554603864

`A038722(A056011(n+1))`
-/

namespace A056023.P18301880220554603864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A056011 (n + 1)).toNat

end

end A056023.P18301880220554603864

noncomputable section

/-- A056023: The positive integers written as a triangle, where row n is written from right to left if n is odd and otherwise from left to right.

Offset 1, canonical program `A056023.P18301880220554603864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056023 (n : ℕ) : ℤ :=
  A056023.P18301880220554603864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056274.P6989764788007675043

`ceil(A034741(n+1)/2)`
-/

namespace A056274.P6989764788007675043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034741 (n + 1) : ℚ) / 2⌉

end

end A056274.P6989764788007675043

noncomputable section

/-- A056274: Number of primitive (aperiodic) word structures of length n using a 3-ary alphabet.

Offset 1, canonical program `A056274.P6989764788007675043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056274 (n : ℕ) : ℤ :=
  A056274.P6989764788007675043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056279.P11750011524147072327

`A056274(n+1)-A000740(n+1)`
-/

namespace A056279.P11750011524147072327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056274 (n + 1) - A000740 (n + 1)

end

end A056279.P11750011524147072327

noncomputable section

/-- A056279: Number of primitive (aperiodic) word structures of length n which contain exactly three different symbols.

Offset 1, canonical program `A056279.P11750011524147072327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056279 (n : ℕ) : ℤ :=
  A056279.P11750011524147072327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056311.P8895079700223021216

`2*(A028244(n+1)+A028244(A008619(n)))`
-/

namespace A056311.P8895079700223021216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028244 (n + 1) + A028244 (A008619 n).toNat)

end

end A056311.P8895079700223021216

noncomputable section

/-- A056311: Number of reversible strings with n beads using exactly four different colors.

Offset 1, canonical program `A056311.P8895079700223021216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056311 (n : ℕ) : ℤ :=
  A056311.P8895079700223021216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056455.P4988112504372135428

`4*A028244(A008619(n))`
-/

namespace A056455.P4988112504372135428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A028244 (A008619 n).toNat

end

end A056455.P4988112504372135428

noncomputable section

/-- A056455: Palindromes using exactly four different symbols.

Offset 1, canonical program `A056455.P4988112504372135428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056455 (n : ℕ) : ℤ :=
  A056455.P4988112504372135428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056490.P4426162943331204535

`A056455(n+1)+Δ[A056455(n+1)/2]`
-/

namespace A056490.P4426162943331204535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056455 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056455 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A056490.P4426162943331204535

noncomputable section

/-- A056490: Number of periodic palindromes using exactly four different symbols.

Offset 1, canonical program `A056490.P4426162943331204535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A056490 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056490.P4426162943331204535.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A056490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056798.P6426982090887198732

`A000961(n+1)²`
-/

namespace A056798.P6426982090887198732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) ^ 2

end

end A056798.P6426982090887198732

noncomputable section

/-- A056798: Prime powers with even nonnegative exponents.

Offset 1, canonical program `A056798.P6426982090887198732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056798 (n : ℕ) : ℤ :=
  A056798.P6426982090887198732.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056832.P3449662837231089589

`2-A035263(n+1)`
-/

namespace A056832.P3449662837231089589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035263 (n + 1)

end

end A056832.P3449662837231089589

noncomputable section

/-- A056832: All a(n) = 1 or 2; a(1) = 1; get next 2^k terms by repeating first 2^k terms and changing last element so sum of first 2^(k+1) terms is odd.

Offset 1, canonical program `A056832.P3449662837231089589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832 (n : ℕ) : ℤ :=
  A056832.P3449662837231089589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056974.P14269005406388105579

`A014082(A035327(n+1))`
-/

namespace A056974.P14269005406388105579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A035327 (n + 1)).toNat

end

end A056974.P14269005406388105579

noncomputable section

/-- A056974: Number of blocks of {0, 0, 0} in the binary expansion of n.

Offset 1, canonical program `A056974.P14269005406388105579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056974 (n : ℕ) : ℤ :=
  A056974.P14269005406388105579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057655.P8142405424443184292

`A014198(n)+1`
-/

namespace A057655.P8142405424443184292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n + 1

end

end A057655.P8142405424443184292

noncomputable section

/-- A057655: The circle problem: number of points (x,y) in square lattice with x^2 + y^2 <= n.

Offset 0, canonical program `A057655.P8142405424443184292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655 (n : ℕ) : ℤ :=
  A057655.P8142405424443184292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057820.P915405789854175386

`A000961(n+2)-A000961(n+1)`
-/

namespace A057820.P915405789854175386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) - A000961 (n + 1)

end

end A057820.P915405789854175386

noncomputable section

/-- A057820: First differences of sequence of consecutive prime powers (A000961).

Offset 1, canonical program `A057820.P915405789854175386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057820 (n : ℕ) : ℤ :=
  A057820.P915405789854175386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058622.P7570831990351998700

`A027306(n)-A126869(n)`
-/

namespace A058622.P7570831990351998700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - A126869 n

end

end A058622.P7570831990351998700

noncomputable section

/-- A058622: a(n) = 2^(n-1) - ((1+(-1)^n)/4)*binomial(n, n/2).

Offset 0, canonical program `A058622.P7570831990351998700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058622 (n : ℕ) : ℤ :=
  A058622.P7570831990351998700.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059036.P10984433159116004346

`A003991(n+1)-1`
-/

namespace A059036.P10984433159116004346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - 1

end

end A059036.P10984433159116004346

noncomputable section

/-- A059036: In a triangle of numbers (such as that in A059032, A059033, A059034) how many entries lie above position (n,k)? Answer: T(n,k) = (n+1)*(k+1)-1 (n >= 0, k >= 0).

Offset 0, canonical program `A059036.P10984433159116004346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059036 (n : ℕ) : ℤ :=
  A059036.P10984433159116004346.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059344.P14070619251469344958

`A034868(n)*A344391(n)`
-/

namespace A059344.P14070619251469344958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A344391 n

end

end A059344.P14070619251469344958

noncomputable section

/-- A059344: Triangle read by rows: row n consists of the nonzero coefficients of the expansion of 2^n x^n in terms of Hermite polynomials with decreasing subscripts.

Offset 0, canonical program `A059344.P14070619251469344958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A059344 (n : ℕ) : ℤ :=
  A059344.P14070619251469344958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A059344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059966.P5188141675617584754

`A001037((n+1)%(2*n+1))`
-/

namespace A059966.P5188141675617584754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 ((n + 1) % (2 * n + 1))

end

end A059966.P5188141675617584754

noncomputable section

/-- A059966: a(n) = (1/n) * Sum_{ d divides n } mu(n/d) * (2^d - 1).

Offset 1, canonical program `A059966.P5188141675617584754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A059966 (n : ℕ) : ℤ :=
  A059966.P5188141675617584754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A059966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061537.P8200961740907353381

`(n+1)^A007875(n+1)`
-/

namespace A061537.P8200961740907353381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A007875 (n + 1) : ℤ)

end

end A061537.P8200961740907353381

noncomputable section

/-- A061537: Product of the unitary divisors of n: a(n) = Product_{d|n, gcd(d,n/d) = 1} d.

Offset 1, canonical program `A061537.P8200961740907353381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061537.P8200961740907353381.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062401.P14719521271091436929

`A000010(∑{d}[n+1, #])`
-/

namespace A062401.P14719521271091436929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A062401.P14719521271091436929

noncomputable section

/-- A062401: a(n) = phi(sigma(n)).

Offset 1, canonical program `A062401.P14719521271091436929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062401 (n : ℕ) : ℤ :=
  A062401.P14719521271091436929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062513.P5688483027392518661

`A061537(n+1)/A062509(n+1)`
-/

namespace A062513.P5688483027392518661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (A062509 (n + 1) : ℚ)

end

end A062513.P5688483027392518661

noncomputable section

/-- A062513: Product of unitary divisors of n is divided by n^(number of distinct prime factors).

Offset 1, canonical program `A062513.P5688483027392518661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062513.P5688483027392518661.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062570.P5760445635637791384

`A000034(n)*A000010(n+1)`
-/

namespace A062570.P5760445635637791384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000010 (n + 1)

end

end A062570.P5760445635637791384

noncomputable section

/-- A062570: a(n) = phi(2*n).

Offset 1, canonical program `A062570.P5760445635637791384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062570 (n : ℕ) : ℤ :=
  A062570.P5760445635637791384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062772.P2777884273118347424

`A151800(A001248(n+1))`
-/

namespace A062772.P2777884273118347424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001248 (n + 1)).toNat

end

end A062772.P2777884273118347424

noncomputable section

/-- A062772: Smallest prime larger than square of n-th prime.

Offset 1, canonical program `A062772.P2777884273118347424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062772 (n : ℕ) : ℤ :=
  A062772.P2777884273118347424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062773.P7772092493091161682

`A000720(A062772(n+1)+1)`
-/

namespace A062773.P7772092493091161682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062772 (n + 1) + 1).toNat

end

end A062773.P7772092493091161682

noncomputable section

/-- A062773: Index of the smallest prime which follows square of n-th prime.

Offset 1, canonical program `A062773.P7772092493091161682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062773 (n : ℕ) : ℤ :=
  A062773.P7772092493091161682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A062772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062952.P16809286703388466493

`∑{d}[n+1, A000203(#)*A000010(#)]`
-/

namespace A062952.P16809286703388466493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000010 d

end

end A062952.P16809286703388466493

noncomputable section

/-- A062952: Multiplicative with a(p^e) = (p^(2*e+2)-p^(e+1)-p^e+p)/(p^2-1).

Offset 1, canonical program `A062952.P16809286703388466493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062952 (n : ℕ) : ℤ :=
  A062952.P16809286703388466493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063919.P11181265949704613022

`A034460(n+1)+A000007(n)`
-/

namespace A063919.P11181265949704613022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + A000007 n

end

end A063919.P11181265949704613022

noncomputable section

/-- A063919: Sum of proper unitary divisors (or unitary aliquot parts) of n, including 1.

Offset 1, canonical program `A063919.P11181265949704613022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063919 (n : ℕ) : ℤ :=
  A063919.P11181265949704613022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064179.P15914318572528280562

`(-1)^A064547(n+1)`
-/

namespace A064179.P15914318572528280562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A064179.P15914318572528280562

noncomputable section

/-- A064179: Infinitary version of Moebius function: infinitary MoebiusMu of n, equal to mu(n) iff mu(n) differs from zero, else 1 or -1 depending on whether the sum of the binary digits of the exponents in the prime decomposition of n is even or odd.

Offset 1, canonical program `A064179.P15914318572528280562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064179.P15914318572528280562.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064355.P15803301992756024606

`2/(n+1)*A011946(n+1)`
-/

namespace A064355.P15803301992756024606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A011946 (n + 1) : ℚ)

end

end A064355.P15803301992756024606

noncomputable section

/-- A064355: Number of subsets of {1,2,..n} that sum to 1 mod n.

Offset 1, canonical program `A064355.P15803301992756024606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A064355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064355.P15803301992756024606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A064355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066136.P8726344444493965524

`floor(A073897(n+1)/2)`
-/

namespace A066136.P8726344444493965524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073897 (n + 1) : ℚ) / 2⌋

end

end A066136.P8726344444493965524

noncomputable section

/-- A066136: Primes are replaced by their local sequence number in A000040, while composites are replaced by their sequence number in A002808; (a kind of eigen- or home-indexing).

Offset 1, canonical program `A066136.P8726344444493965524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066136 (n : ℕ) : ℤ :=
  A066136.P8726344444493965524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066328.P5248297621291993913

`∑{p}[n+1, A066136(#)]`
-/

namespace A066328.P5248297621291993913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A066136 p

end

end A066328.P5248297621291993913

noncomputable section

/-- A066328: a(n) = sum of indices of distinct prime factors of n; here, index(i-th prime) = i.

Offset 1, canonical program `A066328.P5248297621291993913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066328 (n : ℕ) : ℤ :=
  A066328.P5248297621291993913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066883.P4404931870158678379

`A062773(n+1)-A014688(n+1)`
-/

namespace A066883.P4404931870158678379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - A014688 (n + 1)

end

end A066883.P4404931870158678379

noncomputable section

/-- A066883: Number of primes in the interval [p(n), p(n)^2] minus p(n), where p(n) is the n-th prime.

Offset 1, canonical program `A066883.P4404931870158678379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A066883 (n : ℕ) : ℤ :=
  A066883.P4404931870158678379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A066883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067541.P934572602238230955

`A000010(n+2)/and(2, n)!`
-/

namespace A067541.P934572602238230955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (Nat.factorial (Nat.land 2 n) : ℚ)

end

end A067541.P934572602238230955

noncomputable section

/-- A067541: a(n) = phi(n*(n+1)/2)/phi(n) where phi is the Euler totient function A000010(n).

Offset 1, canonical program `A067541.P934572602238230955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067541 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067541.P934572602238230955.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067994.P15225735328066793155

`A057077(n)*A126869(n)*A081123(n)`
-/

namespace A067994.P15225735328066793155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A126869 n * A081123 n

end

end A067994.P15225735328066793155

noncomputable section

/-- A067994: Hermite numbers.

Offset 0, canonical program `A067994.P15225735328066793155`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067994 (n : ℕ) : ℤ :=
  A067994.P15225735328066793155.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126869, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068424.P13772130629057733356

`A074909(n)*A137948(n)`
-/

namespace A068424.P13772130629057733356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A137948 n

end

end A068424.P13772130629057733356

noncomputable section

/-- A068424: Triangle of falling factorials, read by rows: T(n, k) = n*(n-1)*...*(n-k+1), n > 0, 1 <= k <= n.

Offset 1, canonical program `A068424.P13772130629057733356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A068424 (n : ℕ) : ℤ :=
  A068424.P13772130629057733356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A068424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068875.P941133582365312759

`A329688(3*n)`
-/

namespace A068875.P941133582365312759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329688 (3 * n)

end

end A068875.P941133582365312759

noncomputable section

/-- A068875: Expansion of (1 + x*C)*C, where C = (1 - (1 - 4*x)^(1/2))/(2*x) is the g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A068875.P941133582365312759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A068875 (n : ℕ) : ℤ :=
  A068875.P941133582365312759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A068875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070732.P12916774599128756623

`A001615(n+1)*A026741(n+1)`
-/

namespace A070732.P12916774599128756623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A026741 (n + 1)

end

end A070732.P12916774599128756623

noncomputable section

/-- A070732: Size of largest conjugacy class in the group GL(2,Z_n).

Offset 1, canonical program `A070732.P12916774599128756623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070732 (n : ℕ) : ℤ :=
  A070732.P12916774599128756623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071729.P4327875483729827891

`Δ[A071728(n)-∑[A071726(n)]]`
-/

namespace A071729.P4327875483729827891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071729.P4327875483729827891

noncomputable section

/-- A071729: Expansion of (1+x^3*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071729.P4327875483729827891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071729 (n : ℕ) : ℤ :=
  A071729.P4327875483729827891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073254.P2567531270234168708

`2*A057944(n)-A059036(n)`
-/

namespace A073254.P2567531270234168708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057944 n - A059036 n

end

end A073254.P2567531270234168708

noncomputable section

/-- A073254: Array read by antidiagonals, A(n,k) = n^2 + n*k + k^2.

Offset 0, canonical program `A073254.P2567531270234168708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073254 (n : ℕ) : ℤ :=
  A073254.P2567531270234168708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074313.P3730083430334687260

`A292936(p?[xor(1, n)])`
-/

namespace A074313.P3730083430334687260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A074313.P3730083430334687260

noncomputable section

/-- A074313: a(n) = the maximal length of a sequence of primes {s_1 = prime(n), s_2 = f(s1), s_3 = f(s_2), ....} formed by repeated application of f(m) = Floor(m/2) on prime(n).

Offset 1, canonical program `A074313.P3730083430334687260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A074313 (n : ℕ) : ℤ :=
  A074313.P3730083430334687260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A074313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074847.P10505165968805150031

`A000203(A053165(n+1))*A300909(n+1)`
-/

namespace A074847.P10505165968805150031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053165 (n + 1)).toNat * A300909 (n + 1)

end

end A074847.P10505165968805150031

noncomputable section

/-- A074847: Sum of 4-infinitary divisors of n: if n=Product p(i)^r(i) and d=Product p(i)^s(i), each s(i) has a digit a<=b in its 4-ary expansion everywhere that the corresponding r(i) has a digit b, then d is a 4-infinitary-divisor of n.

Offset 1, canonical program `A074847.P10505165968805150031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074847 (n : ℕ) : ℤ :=
  A074847.P10505165968805150031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076110.P10148523856418061428

`A069011(n)+1-A073254(n)`
-/

namespace A076110.P10148523856418061428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + (1 - A073254 n)

end

end A076110.P10148523856418061428

noncomputable section

/-- A076110: Triangle (read by rows) in which the n-th row contains first n terms of an arithmetic progression with first term 1 and common difference (n-1).

Offset 1, canonical program `A076110.P10148523856418061428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076110 (n : ℕ) : ℤ :=
  A076110.P10148523856418061428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077429.P5554938724611329357

`∑{digits}[(n+1)², A007318(A007318(#))]-1`
-/

namespace A077429.P5554938724611329357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum - 1

end

end A077429.P5554938724611329357

noncomputable section

/-- A077429: a(n) = floor(log_10(n^2)).

Offset 1, canonical program `A077429.P5554938724611329357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077429 (n : ℕ) : ℤ :=
  A077429.P5554938724611329357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078461.P6712482256259955631

`gcd(2, n+1)*A353627(n+1)`
-/

namespace A078461.P6712482256259955631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A353627 (n + 1)

end

end A078461.P6712482256259955631

noncomputable section

/-- A078461: a(n) = 0 if n is divisible by the square of odd prime, a(n) = 1 if n is an odd squarefree number, a(n) = 2 otherwise.

Offset 1, canonical program `A078461.P6712482256259955631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078461 (n : ℕ) : ℤ :=
  A078461.P6712482256259955631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078494.P14448011269337969638

`A218255(eq[1, A038800(n)])`
-/

namespace A078494.P14448011269337969638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078494.P14448011269337969638

noncomputable section

/-- A078494: Primes occurring only once in their decade.

Offset 1, canonical program `A078494.P14448011269337969638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494 (n : ℕ) : ℤ :=
  A078494.P14448011269337969638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079904.P1795222969403769225

`A076110(n+1)-1`
-/

namespace A079904.P1795222969403769225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - 1

end

end A079904.P1795222969403769225

noncomputable section

/-- A079904: Triangle read by rows: T(n, k) = n*k, 0 <= k <= n.

Offset 0, canonical program `A079904.P1795222969403769225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079904 (n : ℕ) : ℤ :=
  A079904.P1795222969403769225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080305.P4391190327060872613

`n*C(2, A347093(n+1))+1`
-/

namespace A080305.P4391190327060872613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (A347093 (n + 1)).toNat + 1

end

end A080305.P4391190327060872613

noncomputable section

/-- A080305: Denominator of n^mu(n), where mu is the Moebius function (A008683).

Offset 1, canonical program `A080305.P4391190327060872613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080305 (n : ℕ) : ℤ :=
  (A080305.P4391190327060872613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080791.P6131873509789506769

`a(n-1)+A007814(n)+A036987(n-1)-1` with `a(0)=0, a(1)=0`
-/

namespace A080791.P6131873509789506769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A007814 n + A036987 (n - 1) - 1

end

end A080791.P6131873509789506769

noncomputable section

/-- A080791: Number of nonleading 0's in binary expansion of n.

Offset 0, canonical program `A080791.P6131873509789506769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791 (n : ℕ) : ℤ :=
  A080791.P6131873509789506769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082156.P1891690113207071663

`A004736(n+1)+A002620(A128076(n+1))`
-/

namespace A082156.P1891690113207071663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002620 (A128076 (n + 1)).toNat

end

end A082156.P1891690113207071663

noncomputable section

/-- A082156: Dispersion of the complement of row 1 of A056536.

Offset 1, canonical program `A082156.P1891690113207071663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082156 (n : ℕ) : ℤ :=
  A082156.P1891690113207071663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082482.P8251319467592110979

`A053637(n+1)+A054650(n+1)-1`
-/

namespace A082482.P8251319467592110979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053637 (n + 1) + (A054650 (n + 1) - 1)

end

end A082482.P8251319467592110979

noncomputable section

/-- A082482: a(n) = floor of (2^n-1)/n.

Offset 1, canonical program `A082482.P8251319467592110979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A082482 (n : ℕ) : ℤ :=
  A082482.P8251319467592110979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A082482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082493.P9204270265961951822

`n-A082495(n+1)`
-/

namespace A082493.P9204270265961951822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082495 (n + 1)

end

end A082493.P9204270265961951822

noncomputable section

/-- A082493: a(n) = n*ceiling(2^n/n) - 2^n.

Offset 1, canonical program `A082493.P9204270265961951822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082493 (n : ℕ) : ℤ :=
  A082493.P9204270265961951822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082953.P9111907207712937456

`A000252(n+1)/A070732(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082953.P9111907207712937456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A070732 (n + 1) : ℚ)

end

end A082953.P9111907207712937456

noncomputable section

/-- A082953: a(n) = A000252(n) / A070732(n).

Offset 1, canonical program `A082953.P9111907207712937456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082953.P9111907207712937456.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083854.P7100940027082630718

`lt[1, A000034(A125061(n))]`
-/

namespace A083854.P7100940027082630718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083854.P7100940027082630718

noncomputable section

/-- A083854: Numbers that are squares, twice squares, three times squares, or six times squares, i.e., numbers whose squarefree part divides 6.

Offset 0, canonical program `A083854.P7100940027082630718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854 (n : ℕ) : ℤ :=
  (A083854.P7100940027082630718.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083916.P17944496947031591987

`Δ[A218446(floor(n/2))]`
-/

namespace A083916.P17944496947031591987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218446 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083916.P17944496947031591987

noncomputable section

/-- A083916: Number of divisors of n that are congruent to 6 modulo 10.

Offset 1, canonical program `A083916.P17944496947031591987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083916 (n : ℕ) : ℤ :=
  A083916.P17944496947031591987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084984.P8323402415979542972

`eq[A055642(n), A276729(n)]`
-/

namespace A084984.P8323402415979542972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084984.P8323402415979542972

noncomputable section

/-- A084984: Numbers containing no prime digits.

Offset 1, canonical program `A084984.P8323402415979542972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A084984 (n : ℕ) : ℤ :=
  (A084984.P8323402415979542972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A084984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085058.P14130226451424256143

`A001511(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085058.P14130226451424256143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + 1

end

end A085058.P14130226451424256143

noncomputable section

/-- A085058: a(n) = A001511(n+1) + 1.

Offset 0, canonical program `A085058.P14130226451424256143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085058 (n : ℕ) : ℤ :=
  A085058.P14130226451424256143.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085860.P17709780043344454738

`∑{digits}[A000045(n), A293162(#+1)]`
-/

namespace A085860.P17709780043344454738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 (x + 1)).sum

end

end A085860.P17709780043344454738

noncomputable section

/-- A085860: Number of 6's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085860.P17709780043344454738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860 (n : ℕ) : ℤ :=
  A085860.P17709780043344454738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085861.P2818835720903400278

`∑{digits}[A000045(n), A293162(#)]`
-/

namespace A085861.P2818835720903400278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 x).sum

end

end A085861.P2818835720903400278

noncomputable section

/-- A085861: Number of 7's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085861.P2818835720903400278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861 (n : ℕ) : ℤ :=
  A085861.P2818835720903400278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087207.P18306598900717130858

`∑{p}[n+1, A048675(#)]`
-/

namespace A087207.P18306598900717130858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048675 p

end

end A087207.P18306598900717130858

noncomputable section

/-- A087207: A binary representation of the primes that divide a number, shown in decimal.

Offset 1, canonical program `A087207.P18306598900717130858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A087207 (n : ℕ) : ℤ :=
  A087207.P18306598900717130858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A087207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087401.P10568550885334757291

`A079904(n)-A112367(n)`
-/

namespace A087401.P10568550885334757291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n - A112367 n

end

end A087401.P10568550885334757291

noncomputable section

/-- A087401: Triangle of n*r-binomial(r+1,2).

Offset 0, canonical program `A087401.P10568550885334757291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087401 (n : ℕ) : ℤ :=
  A087401.P10568550885334757291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089408.P14427067045341250572

`gcd(A097331(n), A182122(n))`
-/

namespace A089408.P14427067045341250572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A182122 n)

end

end A089408.P14427067045341250572

noncomputable section

/-- A089408: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A089864.

Offset 0, canonical program `A089408.P14427067045341250572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089408 (n : ℕ) : ℤ :=
  (A089408.P14427067045341250572.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089849.P12770552710507847731

`gcd(A097331(n), A126869(n))`
-/

namespace A089849.P12770552710507847731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A126869 n)

end

end A089849.P12770552710507847731

noncomputable section

/-- A089849: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

Offset 0, canonical program `A089849.P12770552710507847731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A089849 (n : ℕ) : ℤ :=
  (A089849.P12770552710507847731.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A089849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090192.P1518387728064855857

`A000038(n)-A105523(n)`
-/

namespace A090192.P1518387728064855857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A105523 n

end

end A090192.P1518387728064855857

noncomputable section

/-- A090192: Carlitz-Riordan q-Catalan numbers (recurrence version) for q = -1.

Offset 0, canonical program `A090192.P1518387728064855857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192 (n : ℕ) : ℤ :=
  A090192.P1518387728064855857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091806.P2486439758366413823

`A092886(n)/gcd(A092886(n), A105309(n))`
-/

namespace A091806.P2486439758366413823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092886 n : ℚ) / (Int.gcd (A092886 n) (A105309 n) : ℚ)

end

end A091806.P2486439758366413823

noncomputable section

/-- A091806: Given the infinite continued fraction i+(i/(i+(i/(i+...)))), where i is the square root of (-1), this is the numerator of the real part of the convergents.

Offset 1, canonical program `A091806.P2486439758366413823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A091806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091806.P2486439758366413823.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A091806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091867.P15710449933827193925

`A007318(n)*A005043(A025581(n))`
-/

namespace A091867.P15710449933827193925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005043 (A025581 n).toNat

end

end A091867.P15710449933827193925

noncomputable section

/-- A091867: Triangle read by rows: T(n,k) = number of Dyck paths of semilength n having k peaks at odd height.

Offset 0, canonical program `A091867.P15710449933827193925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091867 (n : ℕ) : ℤ :=
  A091867.P15710449933827193925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091962.P6812419120274730789

`floor(A133111(n+3+n)/16)`
-/

namespace A091962.P6812419120274730789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133111 (n + 3 + n) : ℚ) / 16⌋

end

end A091962.P6812419120274730789

noncomputable section

/-- A091962: From enumerating paths in the plane.

Offset 0, canonical program `A091962.P6812419120274730789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091962 (n : ℕ) : ℤ :=
  A091962.P6812419120274730789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092392.P2058426022526125338

`A046899(A061579(n))`
-/

namespace A092392.P2058426022526125338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A061579 n).toNat

end

end A092392.P2058426022526125338

noncomputable section

/-- A092392: Triangle read by rows: T(n,k) = C(2*n - k,n), 0 <= k <= n.

Offset 0, canonical program `A092392.P2058426022526125338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092392 (n : ℕ) : ℤ :=
  A092392.P2058426022526125338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092627.P9592149620023770609

`p?[eq[2, A276729(n)]]`
-/

namespace A092627.P9592149620023770609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092627.P9592149620023770609

noncomputable section

/-- A092627: Primes with exactly two nonprime digits.

Offset 1, canonical program `A092627.P9592149620023770609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A092627 (n : ℕ) : ℤ :=
  (A092627.P9592149620023770609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A092627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092865.P9800871042429563602

`A007318(A091995(n+1)-1)/A033999(A322832(n))`
-/

namespace A092865.P9800871042429563602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A091995 (n + 1) - 1).toNat : ℚ) / (A033999 (A322832 n).toNat : ℚ)

end

end A092865.P9800871042429563602

noncomputable section

/-- A092865: Nonzero elements in Klee's identity Sum[(-1)^k binomial[n,k]binomial[n+k,m],{k,0,n}] == (-1)^n binomial[n,m-n].

Offset 0, canonical program `A092865.P9800871042429563602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5183 terms. -/
def A092865 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092865.P9800871042429563602.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5183 terms. -/
def A092865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094727.P1759177724676722475

`A002260(n+1)+A003056(n)`
-/

namespace A094727.P1759177724676722475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A003056 n

end

end A094727.P1759177724676722475

noncomputable section

/-- A094727: Triangle read by rows: T(n,k) = n + k, 0 <= k < n, n >= 1.

Offset 1, canonical program `A094727.P1759177724676722475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094727 (n : ℕ) : ℤ :=
  A094727.P1759177724676722475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095750.P12446210959235044624

`A074313(A072192(n+1))-1`
-/

namespace A095750.P12446210959235044624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074313 (A072192 (n + 1)).toNat - 1

end

end A095750.P12446210959235044624

noncomputable section

/-- A095750: "Degree" of the Sophie Germain primes (A005384).

Offset 0, canonical program `A095750.P12446210959235044624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095750 (n : ℕ) : ℤ :=
  A095750.P12446210959235044624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096268.P10327595005272142114

`1-A035263(n+1)`
-/

namespace A096268.P10327595005272142114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (n + 1)

end

end A096268.P10327595005272142114

noncomputable section

/-- A096268: Period-doubling sequence (or period-doubling word): fixed point of the morphism 0 -> 01, 1 -> 00.

Offset 0, canonical program `A096268.P10327595005272142114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268 (n : ℕ) : ℤ :=
  A096268.P10327595005272142114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097106.P14132093488680178125

`(1-A010055(n+1))*A057820(A025528(n+1)+1)`
-/

namespace A097106.P14132093488680178125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010055 (n + 1)) * A057820 (A025528 (n + 1) + 1).toNat

end

end A097106.P14132093488680178125

noncomputable section

/-- A097106: a(n) = (Smallest prime power >= n) - (greatest prime power <= n).

Offset 1, canonical program `A097106.P14132093488680178125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097106 (n : ℕ) : ℤ :=
  A097106.P14132093488680178125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097805.P1755176267250853107

`A007318(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A097805.P1755176267250853107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (n - 1) - a (n - 1)

end

end A097805.P1755176267250853107

noncomputable section

/-- A097805: Number of compositions of n with k parts, T(n, k) = binomial(n-1, k-1) for n, k >= 1 and T(n, 0) = 0^n, triangle read by rows for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A097805.P1755176267250853107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097805 (n : ℕ) : ℤ :=
  A097805.P1755176267250853107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098352.P3707437164941693741

`4*A003991(n+1)`
-/

namespace A098352.P3707437164941693741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003991 (n + 1)

end

end A098352.P3707437164941693741

noncomputable section

/-- A098352: Multiplication table of the even numbers read by antidiagonals.

Offset 1, canonical program `A098352.P3707437164941693741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098352 (n : ℕ) : ℤ :=
  A098352.P3707437164941693741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098825.P9226498537303869935

`A000166(A002262(n))*A007318(n)`
-/

namespace A098825.P9226498537303869935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A002262 n).toNat * A007318 n

end

end A098825.P9226498537303869935

noncomputable section

/-- A098825: Triangle read by rows: T(n,k) = number of partial derangements, that is, the number of permutations of n distinct, ordered items in which exactly k of the items are in their natural ordered positions, for n >= 0, k = n, n-1, ..., 1, 0.

Offset 0, canonical program `A098825.P9226498537303869935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A098825 (n : ℕ) : ℤ :=
  A098825.P9226498537303869935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A098825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098925.P12998610641323261996

`abs(A092865(n))`
-/

namespace A098925.P12998610641323261996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092865 n|

end

end A098925.P12998610641323261996

noncomputable section

/-- A098925: Distribution of the number of ways for a child to climb a staircase having r steps (one step or two steps at a time).

Offset 0, canonical program `A098925.P12998610641323261996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098925 (n : ℕ) : ℤ :=
  A098925.P12998610641323261996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100100.P334722086453035183

`A092392(n)-A092392(n+1)%A092392(n)`
-/

namespace A100100.P334722086453035183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - Int.tmod (A092392 (n + 1)) (A092392 n)

end

end A100100.P334722086453035183

noncomputable section

/-- A100100: Triangle T(n,k) = binomial(2*n-k-1, n-k) read by rows.

Offset 0, canonical program `A100100.P334722086453035183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100100 (n : ℕ) : ℤ :=
  A100100.P334722086453035183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100549.P3441829071280898481

`A136548(A051903(n+1)+2)`
-/

namespace A100549.P3441829071280898481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A051903 (n + 1) + 2).toNat

end

end A100549.P3441829071280898481

noncomputable section

/-- A100549: Let n = 2^e_2 * 3^e_ * 5^e_ * ... be the prime factorization of n; then a(n) = largest prime <= 1 + max{e_2, e_3, e_5, ...}; a(1) = 1 by convention.

Offset 1, canonical program `A100549.P3441829071280898481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100549 (n : ℕ) : ℤ :=
  A100549.P3441829071280898481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100861.P8415527314952672000

`A059344(n)/2^A055087(n)`
-/

namespace A100861.P8415527314952672000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059344 n : ℚ) / (2 : ℚ) ^ (A055087 n : ℤ)

end

end A100861.P8415527314952672000

noncomputable section

/-- A100861: Triangle of Bessel numbers read by rows: T(n,k) is the number of k-matchings of the complete graph K(n).

Offset 0, canonical program `A100861.P8415527314952672000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A100861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100861.P8415527314952672000.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A100861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102426.P776678391830445668

`A098925(abs(1-n))-A000007(n)`
-/

namespace A102426.P776678391830445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 |1 - (n : ℤ)|.toNat - A000007 n

end

end A102426.P776678391830445668

noncomputable section

/-- A102426: Triangle read by rows giving coefficients of polynomials defined by F(0,x)=0, F(1,x)=1, F(n,x) = F(n-1,x) + x*F(n-2,x).

Offset 0, canonical program `A102426.P776678391830445668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102426 (n : ℕ) : ℤ :=
  A102426.P776678391830445668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106566.P15038054948988524136

`2*A100100(n)-A092392(n)`
-/

namespace A106566.P15038054948988524136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100100 n - A092392 n

end

end A106566.P15038054948988524136

noncomputable section

/-- A106566: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 1, 1, 1, 1, 1, 1, 1, ... ] DELTA [1, 0, 0, 0, 0, 0, 0, 0, ... ] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A106566.P15038054948988524136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106566 (n : ℕ) : ℤ :=
  A106566.P15038054948988524136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107373.P1366174915629894838

`A323988(n)-2^n`
-/

namespace A107373.P1366174915629894838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - (2 ^ n : ℤ)

end

end A107373.P1366174915629894838

noncomputable section

/-- A107373: a(n) = (n/2)*binomial(n-1, floor((n-1)/2)) - 2^(n-2).

Offset 1, canonical program `A107373.P1366174915629894838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A107373 (n : ℕ) : ℤ :=
  A107373.P1366174915629894838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A107373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108872.P7491610889121363756

`A002024(n+1)+A002260(n+1)`
-/

namespace A108872.P7491610889121363756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A002260 (n + 1)

end

end A108872.P7491610889121363756

noncomputable section

/-- A108872: Sums of ordinal references for a triangular table read by columns, top to bottom.

Offset 1, canonical program `A108872.P7491610889121363756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108872 (n : ℕ) : ℤ :=
  A108872.P7491610889121363756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109606.P2415810041766612210

`A000010(n+1)-1`
-/

namespace A109606.P2415810041766612210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

end

end A109606.P2415810041766612210

noncomputable section

/-- A109606: Number of numbers k with 1 < k < n which are relatively prime to n.

Offset 1, canonical program `A109606.P2415810041766612210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606 (n : ℕ) : ℤ :=
  A109606.P2415810041766612210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112227.P5365847626436789325

`A007318(n)*A067994(A025581(n))`
-/

namespace A112227.P5365847626436789325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A067994 (A025581 n).toNat

end

end A112227.P5365847626436789325

noncomputable section

/-- A112227: A scaled Hermite triangle.

Offset 0, canonical program `A112227.P5365847626436789325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A112227 (n : ℕ) : ℤ :=
  A112227.P5365847626436789325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A112227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113415.P5418094861117166692

`A349371(n+1)/A001511(n+1)`
-/

namespace A113415.P5418094861117166692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349371 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A113415.P5418094861117166692

noncomputable section

/-- A113415: Expansion of Sum_{k>0} x^k/(1-x^(2k))^2.

Offset 1, canonical program `A113415.P5418094861117166692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113415.P5418094861117166692.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114327.P9028308961649463264

`A004736(n+1)-A002260(n+1)`
-/

namespace A114327.P9028308961649463264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A002260 (n + 1)

end

end A114327.P9028308961649463264

noncomputable section

/-- A114327: Table T(n,m) = n - m read by upwards antidiagonals.

Offset 0, canonical program `A114327.P9028308961649463264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114327 (n : ℕ) : ℤ :=
  A114327.P9028308961649463264.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115364.P11989985913028206529

`A000217(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115364.P11989985913028206529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001511 (n + 1)).toNat

end

end A115364.P11989985913028206529

noncomputable section

/-- A115364: a(n) = A000217(A001511(n)), where A001511 is one more than the 2-adic valuation of n, and A000217(n) is the n-th triangular number, binomial(n+1, 2).

Offset 1, canonical program `A115364.P11989985913028206529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115364 (n : ℕ) : ℤ :=
  A115364.P11989985913028206529.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117303.P10725081724367424361

`(2*A001511(n+1)-1)*2^(A003602(n+1)-1)`
-/

namespace A117303.P10725081724367424361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001511 (n + 1) - 1 : ℚ) * (2 : ℚ) ^ (A003602 (n + 1) - 1 : ℤ)

end

end A117303.P10725081724367424361

noncomputable section

/-- A117303: Self-inverse permutation of the natural numbers based on the bijection (2*x-1)*2^(y-1) <--> (2*y-1)*2^(x-1).

Offset 1, canonical program `A117303.P10725081724367424361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117303 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117303.P10725081724367424361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119677.P15587159543036332007

`4*(A036698(n)-n)`
-/

namespace A119677.P15587159543036332007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A036698 n - (n : ℤ))

end

end A119677.P15587159543036332007

noncomputable section

/-- A119677: a(n) is the number of complete squares that fit inside the circle with radius n, drawn on squared paper at (0, 0).

Offset 0, canonical program `A119677.P15587159543036332007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119677 (n : ℕ) : ℤ :=
  A119677.P15587159543036332007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120944.P15601852327349088346

`eq[A005171(n+1), A051903(n+1)]+1`
-/

namespace A120944.P15601852327349088346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120944.P15601852327349088346

noncomputable section

/-- A120944: Composite squarefree numbers.

Offset 1, canonical program `A120944.P15601852327349088346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120944 (n : ℕ) : ℤ :=
  (A120944.P15601852327349088346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121373.P13063866257632154363

`(-1)^n*A010815(n)`
-/

namespace A121373.P13063866257632154363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010815 n

end

end A121373.P13063866257632154363

noncomputable section

/-- A121373: Expansion of f(x) = f(x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A121373.P13063866257632154363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121373 (n : ℕ) : ℤ :=
  A121373.P13063866257632154363.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122833.P6067438618774959258

`A007318(n)*A000321(A025581(n))`
-/

namespace A122833.P6067438618774959258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000321 (A025581 n).toNat

end

end A122833.P6067438618774959258

noncomputable section

/-- A122833: Exponential Riordan array (e^(-x(1+x)),x).

Offset 0, canonical program `A122833.P6067438618774959258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A122833 (n : ℕ) : ℤ :=
  A122833.P6067438618774959258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. -/
def A122833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124926.P9374051233560020075

`A091867(A061579(n))`
-/

namespace A124926.P9374051233560020075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (A061579 n).toNat

end

end A124926.P9374051233560020075

noncomputable section

/-- A124926: Triangle read by rows: T(n,k) = binomial(n,k)*r(k), where r(k) are the Riordan numbers (r(k) = A005043(k); 0 <= k <= n).

Offset 0, canonical program `A124926.P9374051233560020075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926 (n : ℕ) : ℤ :=
  A124926.P9374051233560020075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127473.P9698007400369304439

`A000010(n+1)²`
-/

namespace A127473.P9698007400369304439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

end

end A127473.P9698007400369304439

noncomputable section

/-- A127473: a(n) = phi(n)^2.

Offset 1, canonical program `A127473.P9698007400369304439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127473 (n : ℕ) : ℤ :=
  A127473.P9698007400369304439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128139.P7396789911746890066

`∑[A114327(abs(1-n))]`
-/

namespace A128139.P7396789911746890066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128139.P7396789911746890066

noncomputable section

/-- A128139: Triangle read by rows: matrix product A004736 * A128132.

Offset 0, canonical program `A128139.P7396789911746890066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128139 (n : ℕ) : ℤ :=
  A128139.P7396789911746890066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128179.P5850376553039655428

`(1-(-1)^A004736(n+1))*A002260(n+1)/2`
-/

namespace A128179.P5850376553039655428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1 : ℚ) ^ (A004736 (n + 1) : ℤ)) * (A002260 (n + 1) : ℚ) / 2

end

end A128179.P5850376553039655428

noncomputable section

/-- A128179: A097807 * A002260.

Offset 1, canonical program `A128179.P5850376553039655428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128179.P5850376553039655428.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128221.P5768733803824572043

`A028310(A128179(n+1))`
-/

namespace A128221.P5768733803824572043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A128179 (n + 1)).toNat

end

end A128221.P5768733803824572043

noncomputable section

/-- A128221: A128174 * A127701.

Offset 1, canonical program `A128221.P5768733803824572043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221 (n : ℕ) : ℤ :=
  A128221.P5768733803824572043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128309.P14442768980274460626

`2*A000069(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128309.P14442768980274460626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1)

end

end A128309.P14442768980274460626

noncomputable section

/-- A128309: a(n) = 2*A000069(n).

Offset 1, canonical program `A128309.P14442768980274460626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128309 (n : ℕ) : ℤ :=
  A128309.P14442768980274460626.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129297.P6596998359982084627

`eq[A000010(A166597(n)), A063919(n+1)]`
-/

namespace A129297.P6596998359982084627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A166597 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P6596998359982084627

noncomputable section

/-- A129297: Nonnegative integers m such that m^2-1 has no divisors d with 1

Offset 1, canonical program `A129297.P6596998359982084627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A129297 (n : ℕ) : ℤ :=
  (A129297.P6596998359982084627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A129297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129652.P5081916602674368372

`A007318(n)*A000262(A025581(n))`
-/

namespace A129652.P5081916602674368372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000262 (A025581 n).toNat

end

end A129652.P5081916602674368372

noncomputable section

/-- A129652: Exponential Riordan array [e^(x/(1-x)),x].

Offset 0, canonical program `A129652.P5081916602674368372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A129652 (n : ℕ) : ℤ :=
  A129652.P5081916602674368372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A129652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129667.P9864119466472355018

`∏{e}[n+1, A010815(#)]`
-/

namespace A129667.P9864119466472355018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010815 (Nat.factorization (f1 n) p)

end

end A129667.P9864119466472355018

noncomputable section

/-- A129667: Dirichlet inverse of the Abelian group count (A000688).

Offset 1, canonical program `A129667.P9864119466472355018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129667 (n : ℕ) : ℤ :=
  A129667.P9864119466472355018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130595.P3475276304996858965

`A007318(n)*A097807(n)`
-/

namespace A130595.P3475276304996858965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097807 n

end

end A130595.P3475276304996858965

noncomputable section

/-- A130595: Triangle read by rows: lower triangular matrix which is inverse to Pascal's triangle (A007318) regarded as a lower triangular matrix.

Offset 0, canonical program `A130595.P3475276304996858965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130595 (n : ℕ) : ℤ :=
  A130595.P3475276304996858965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131307.P11707046731788450443

`2*A128221(n+1)+A025581(n)-1`
-/

namespace A131307.P11707046731788450443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128221 (n + 1) + (A025581 n - 1)

end

end A131307.P11707046731788450443

noncomputable section

/-- A131307: (A127701 * A000012 + A000012(signed) * A127701) - A000012.

Offset 1, canonical program `A131307.P11707046731788450443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131307 (n : ℕ) : ℤ :=
  A131307.P11707046731788450443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133725.P6332609790966904879

`(3*A007434(n+1)-A000010(n+1))/2`
-/

namespace A133725.P6332609790966904879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A007434 (n + 1) - A000010 (n + 1) : ℚ) / 2

end

end A133725.P6332609790966904879

noncomputable section

/-- A133725: a(n) = Sum_{d|n} mu(n/d)*d*(3*d - 1)/2.

Offset 1, canonical program `A133725.P6332609790966904879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133725.P6332609790966904879.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134832.P13040656617122990359

`A007318(n)*A000757(A025581(n))`
-/

namespace A134832.P13040656617122990359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000757 (A025581 n).toNat

end

end A134832.P13040656617122990359

noncomputable section

/-- A134832: Triangle of succession numbers for circular permutations.

Offset 0, canonical program `A134832.P13040656617122990359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2628 terms. -/
def A134832 (n : ℕ) : ℤ :=
  A134832.P13040656617122990359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2628 terms. -/
def A134832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136494.P13295662232037157937

`A093659(n)*A139329(n)`
-/

namespace A136494.P13295662232037157937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n * A139329 n

end

end A136494.P13295662232037157937

noncomputable section

/-- A136494: Number of permutation symmetries in the binary expansion of n.

Offset 0, canonical program `A136494.P13295662232037157937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136494 (n : ℕ) : ℤ :=
  A136494.P13295662232037157937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138929.P2871587686834618281

`2*A000961(n+1)`
-/

namespace A138929.P2871587686834618281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000961 (n + 1)

end

end A138929.P2871587686834618281

noncomputable section

/-- A138929: Twice the prime powers A000961.

Offset 1, canonical program `A138929.P2871587686834618281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138929 (n : ℕ) : ℤ :=
  A138929.P2871587686834618281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145225.P16601938539536274568

`A007318(n)*A000387(A025581(n))`
-/

namespace A145225.P16601938539536274568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000387 (A025581 n).toNat

end

end A145225.P16601938539536274568

noncomputable section

/-- A145225: Triangle read by rows: T(n,k) is the number of odd permutations (of an n-set) with exactly k fixed points.

Offset 0, canonical program `A145225.P16601938539536274568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145225 (n : ℕ) : ℤ :=
  A145225.P16601938539536274568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155118.P18324433763876345140

`round(A036561(n)/3)`
-/

namespace A155118.P18324433763876345140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036561 n : ℚ) / 3)

end

end A155118.P18324433763876345140

noncomputable section

/-- A155118: Array T(n,k) read by antidiagonals: the k-th term of the n-th iterated differences of A140429.

Offset 0, canonical program `A155118.P18324433763876345140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118 (n : ℕ) : ℤ :=
  A155118.P18324433763876345140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155495.P14503625525191731558

`A007318(n)*A086645(n)`
-/

namespace A155495.P14503625525191731558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A086645 n

end

end A155495.P14503625525191731558

noncomputable section

/-- A155495: Triangle read by rows: t(n,m) = binomial(2*n,2*m) * binomial(n,m).

Offset 0, canonical program `A155495.P14503625525191731558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6608 terms. -/
def A155495 (n : ℕ) : ℤ :=
  A155495.P14503625525191731558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6608 terms. -/
def A155495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156243.P395087012412145335

`A054353(2*n+1)`
-/

namespace A156243.P395087012412145335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * n + 1)

end

end A156243.P395087012412145335

noncomputable section

/-- A156243: Bisection of A054353.

Offset 1, canonical program `A156243.P395087012412145335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243 (n : ℕ) : ℤ :=
  A156243.P395087012412145335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159634.P11967709027105384687

`A000082(n+1)/A080512(n+1)`
-/

namespace A159634.P11967709027105384687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A080512 (n + 1) : ℚ)

end

end A159634.P11967709027105384687

noncomputable section

/-- A159634: Coefficient for dimensions of spaces of modular & cusp forms of weight k/2, level 4*n and trivial character, where k>=5 is odd.

Offset 1, canonical program `A159634.P11967709027105384687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000082, A080512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159634.P11967709027105384687.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000082, A080512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160051.P932503710892421624

`a(n-A171899(n+1))+2` with `a(0)=1, a(1)=0`
-/

namespace A160051.P932503710892421624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ((n : ℤ) - A171899 (n + 1)).toNat + 2

end

end A160051.P932503710892421624

noncomputable section

/-- A160051: Lodumo_2 of Kolakoski sequence (A000002).

Offset 0, canonical program `A160051.P932503710892421624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160051 (n : ℕ) : ℤ :=
  (A160051.P932503710892421624.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163095.P4667298633254708483

`A000788(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163095.P4667298633254708483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n ^ 2

end

end A163095.P4667298633254708483

noncomputable section

/-- A163095: a(n) = A000788(n)^2.

Offset 0, canonical program `A163095.P4667298633254708483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163095 (n : ℕ) : ℤ :=
  A163095.P4667298633254708483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163511.P5635496813650871695

`A253563(A145342(n+1)-1)`
-/

namespace A163511.P5635496813650871695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A145342 (n + 1) - 1).toNat

end

end A163511.P5635496813650871695

noncomputable section

/-- A163511: a(0)=1. a(n) = p(A000120(n)) * Product_{m=1..A000120(n)} p(m)^A163510(n,m), where p(m) is the m-th prime.

Offset 0, canonical program `A163511.P5635496813650871695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A163511 (n : ℕ) : ℤ :=
  A163511.P5635496813650871695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A163511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164292.P14089630238313038939

`A353464(A169609(n)+n)`
-/

namespace A164292.P14089630238313038939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A169609 n + (n : ℤ)).toNat

end

end A164292.P14089630238313038939

noncomputable section

/-- A164292: Binary sequence identifying the twin primes (characteristic function of twin primes: 1 if n is a twin prime else 0).

Offset 1, canonical program `A164292.P14089630238313038939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164292 (n : ℕ) : ℤ :=
  A164292.P14089630238313038939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166687.P18219030986989704232

`A001481(n+1)+1`
-/

namespace A166687.P18219030986989704232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

end

end A166687.P18219030986989704232

noncomputable section

/-- A166687: Numbers of the form x^2 + y^2 + 1, x, y integers.

Offset 1, canonical program `A166687.P18219030986989704232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687 (n : ℕ) : ℤ :=
  A166687.P18219030986989704232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169581.P5880074655837136645

`lt[gcd(A002260(n+1), A025581(n)), 2]+1`
-/

namespace A169581.P5880074655837136645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A025581 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A169581.P5880074655837136645

noncomputable section

/-- A169581: Positions in A002260(n) and A002024(n) when canonically enumerating A038566(n)/A038567(n), the positive rational numbers <= 1.

Offset 1, canonical program `A169581.P5880074655837136645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6085 terms. -/
def A169581 (n : ℕ) : ℤ :=
  (A169581.P5880074655837136645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6085 terms. -/
def A169581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171435.P13410132754094429905

`gcd(A113646(n+1), A299149(n+1))`
-/

namespace A171435.P13410132754094429905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113646 (n + 1)) (A299149 (n + 1))

end

end A171435.P13410132754094429905

noncomputable section

/-- A171435: Product of odd prime factors < n, with multiplicity.

Offset 1, canonical program `A171435.P13410132754094429905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435 (n : ℕ) : ℤ :=
  (A171435.P13410132754094429905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174344.P13859978048200465052

`(A329116(n)+A180714(n))/2`
-/

namespace A174344.P13859978048200465052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329116 n + A180714 n : ℚ) / 2

end

end A174344.P13859978048200465052

noncomputable section

/-- A174344: List of x-coordinates of point moving in clockwise square spiral.

Offset 1, canonical program `A174344.P13859978048200465052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174344.P13859978048200465052.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174605.P9326770694766371800

`n*(n+1)/2-A000788(n)`
-/

namespace A174605.P9326770694766371800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) / 2) - (A000788 n : ℚ)

end

end A174605.P9326770694766371800

noncomputable section

/-- A174605: Partial sums of A011371.

Offset 0, canonical program `A174605.P9326770694766371800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174605.P9326770694766371800.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176997.P9587439984867558596

`A015919(n+2)-C(2, n+2)`
-/

namespace A176997.P9587439984867558596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2) - (Nat.choose 2 (n + 2) : ℤ)

end

end A176997.P9587439984867558596

noncomputable section

/-- A176997: Integers k such that 2^(k-1) == 1 (mod k).

Offset 1, canonical program `A176997.P9587439984867558596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997 (n : ℕ) : ℤ :=
  A176997.P9587439984867558596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178300.P17814830624515287913

`A046899(comp[∑[n-1]])`
-/

namespace A178300.P17814830624515287913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A178300.P17814830624515287913

noncomputable section

/-- A178300: Triangle T(n, k) = binomial(n+k-1, n) read by rows, 1 <= k <= n.

Offset 1, canonical program `A178300.P17814830624515287913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178300 (n : ℕ) : ℤ :=
  A178300.P17814830624515287913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179017.P6095337465077806677

`filter[A295243(n+1), A008966(#)]`
-/

namespace A179017.P6095337465077806677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A179017.P6095337465077806677

noncomputable section

/-- A179017: Odd numbers c such that c*(c^2 - 1)/4 is squarefree.

Offset 1, canonical program `A179017.P6095337465077806677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017 (n : ℕ) : ℤ :=
  A179017.P6095337465077806677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180188.P17065688349002946383

`A002024(n+1)*A098825(A061579(n))`
-/

namespace A180188.P17065688349002946383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A098825 (A061579 n).toNat

end

end A180188.P17065688349002946383

noncomputable section

/-- A180188: Triangle read by rows: T(n,k) is the number of permutations of [n] with k circular successions (0<=k<=n-1). A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

Offset 1, canonical program `A180188.P17065688349002946383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188 (n : ℕ) : ℤ :=
  A180188.P17065688349002946383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181062.P6529548857799504333

`A000961(n+1)-1`
-/

namespace A181062.P6529548857799504333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

end

end A181062.P6529548857799504333

noncomputable section

/-- A181062: Prime powers minus 1.

Offset 1, canonical program `A181062.P6529548857799504333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181062 (n : ℕ) : ℤ :=
  A181062.P6529548857799504333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181155.P6532656100866929133

`A000069(n+1)+1`
-/

namespace A181155.P6532656100866929133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + 1

end

end A181155.P6532656100866929133

noncomputable section

/-- A181155: Odious numbers (A000069) plus one; complement of A026147.

Offset 1, canonical program `A181155.P6532656100866929133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155 (n : ℕ) : ℤ :=
  A181155.P6532656100866929133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181962.P6704746379540961634

`A062773(n+1)+n`
-/

namespace A181962.P6704746379540961634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) + (n : ℤ)

end

end A181962.P6704746379540961634

noncomputable section

/-- A181962: Numbers not of the form pi(p) + pi(sqrt(p)) for some prime p.

Offset 1, canonical program `A181962.P6704746379540961634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A181962 (n : ℕ) : ℤ :=
  A181962.P6704746379540961634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A181962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182921.P272631166531236110

`A317531(n)+a(n-1)` with `a(0)=0`
-/

namespace A182921.P272631166531236110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A317531 n + a (n - 1)

end

end A182921.P272631166531236110

noncomputable section

/-- A182921: Sum of exponents in prime-power factorization of the swinging factorial (A056040) n$ = n!/floor(n/2)!^2; also bigomega(n$).

Offset 0, canonical program `A182921.P272631166531236110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182921 (n : ℕ) : ℤ :=
  A182921.P272631166531236110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185014.P14310411706898602348

`A185114(n)-A185115(n)`
-/

namespace A185014.P14310411706898602348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n - A185115 n

end

end A185014.P14310411706898602348

noncomputable section

/-- A185014: Characteristic function of four.

Offset 0, canonical program `A185014.P14310411706898602348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014 (n : ℕ) : ℤ :=
  A185014.P14310411706898602348.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194640.P6304836416132754197

`A002260(A046691(n+3))-A062276(n+3)`
-/

namespace A194640.P6304836416132754197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A046691 (n + 3)).toNat - A062276 (n + 3)

end

end A194640.P6304836416132754197

noncomputable section

/-- A194640: Smallest image size for which the number of endofunctions (functions f:{1,2,...,n}->{1,2,...,n}) is a maximum.

Offset 0, canonical program `A194640.P6304836416132754197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A194640 (n : ℕ) : ℤ :=
  A194640.P6304836416132754197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A194640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204993.P9458464966889589479

`A014695(A007913(n+1))²*A007913(n+1)`
-/

namespace A204993.P9458464966889589479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A007913 (n + 1)).toNat ^ 2 * A007913 (n + 1)

end

end A204993.P9458464966889589479

noncomputable section

/-- A204993: Negative of the discriminant of quadratic field Q(sqrt(-n)).

Offset 1, canonical program `A204993.P9458464966889589479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204993 (n : ℕ) : ℤ :=
  A204993.P9458464966889589479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209279.P8779630020015186238

`A004526(A131307(n+1)+1)`
-/

namespace A209279.P8779630020015186238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131307 (n + 1) + 1).toNat

end

end A209279.P8779630020015186238

noncomputable section

/-- A209279: First inverse function (numbers of rows) for pairing function A185180.

Offset 1, canonical program `A209279.P8779630020015186238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209279 (n : ℕ) : ℤ :=
  A209279.P8779630020015186238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209675.P18293820105630241232

`A003485(A001511(n+1))`
-/

namespace A209675.P18293820105630241232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A001511 (n + 1)).toNat

end

end A209675.P18293820105630241232

noncomputable section

/-- A209675: Radon function at even positions: a(n) = A003484(2*n).

Offset 1, canonical program `A209675.P18293820105630241232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209675 (n : ℕ) : ℤ :=
  A209675.P18293820105630241232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210635.P12986531844571725851

`A003056(n)-2*A051777(n+1)`
-/

namespace A210635.P12986531844571725851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 2 * A051777 (n + 1)

end

end A210635.P12986531844571725851

noncomputable section

/-- A210635: Array read by descending antidiagonals: a(n,w) = ((w - (n mod w) - 1) + n) - (n mod w), n >= 0, w >= 1.

Offset 0, canonical program `A210635.P12986531844571725851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635 (n : ℕ) : ℤ :=
  A210635.P12986531844571725851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216312.P9687480174034920457

`∩[A030433(n+1), A078494(n+1)]`
-/

namespace A216312.P9687480174034920457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P9687480174034920457

noncomputable section

/-- A216312: The prime ending in 9 is the only prime in a decade.

Offset 1, canonical program `A216312.P9687480174034920457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312 (n : ℕ) : ℤ :=
  (A216312.P9687480174034920457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219428.P10048868048684072397

`A051953(n+1)-1`
-/

namespace A219428.P10048868048684072397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - 1

end

end A219428.P10048868048684072397

noncomputable section

/-- A219428: a(n) = n - 1 - phi(n).

Offset 1, canonical program `A219428.P10048868048684072397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428 (n : ℕ) : ℤ :=
  A219428.P10048868048684072397.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221058.P9952034035264355000

`A004526(n)*A107373(A028310(n))`
-/

namespace A221058.P9952034035264355000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A107373 (A028310 n).toNat

end

end A221058.P9952034035264355000

noncomputable section

/-- A221058: Number of inversions in all Dyck prefixes of length n.

Offset 0, canonical program `A221058.P9952034035264355000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A221058 (n : ℕ) : ℤ :=
  A221058.P9952034035264355000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A221058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224212.P18102868260642251365

`A000196(n)+A014200(n)+1`
-/

namespace A224212.P18102868260642251365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (A014200 n + 1)

end

end A224212.P18102868260642251365

noncomputable section

/-- A224212: Number of nonnegative solutions to x^2 + y^2 <= n.

Offset 0, canonical program `A224212.P18102868260642251365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212 (n : ℕ) : ℤ :=
  A224212.P18102868260642251365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234957.P3331265301523506354

`4^A004526(A007814(n+1))`
-/

namespace A234957.P3331265301523506354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004526 (A007814 (n + 1)).toNat : ℤ)

end

end A234957.P3331265301523506354

noncomputable section

/-- A234957: Highest power of 4 dividing n.

Offset 1, canonical program `A234957.P3331265301523506354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234957 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234957.P3331265301523506354.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237526.P3622557248388023722

`A014200(n)-floor(sqrt(n))`
-/

namespace A237526.P3622557248388023722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n - (Nat.sqrt n : ℤ)

end

end A237526.P3622557248388023722

noncomputable section

/-- A237526: a(n) = number of unit squares in the first quadrant of a disk of radius sqrt(n) centered at the origin of a square lattice.

Offset 0, canonical program `A237526.P3622557248388023722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526 (n : ℕ) : ℤ :=
  A237526.P3622557248388023722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240356.P203130154037057721

`A121373(A001462(n+1)*A062028(3*n))`
-/

namespace A240356.P203130154037057721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A001462 (n + 1) * A062028 (3 * n)).toNat

end

end A240356.P203130154037057721

noncomputable section

/-- A240356: Inverse of 73rd cyclotomic polynomial.

Offset 0, canonical program `A240356.P203130154037057721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A240356 (n : ℕ) : ℤ :=
  A240356.P203130154037057721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A240356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242219.P5269030228670689026

`lcm(2, A038388(n+1))+1+n`
-/

namespace A242219.P5269030228670689026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A038388 (n + 1)) + 1 + n

end

end A242219.P5269030228670689026

noncomputable section

/-- A242219: Smallest a(n) in Pythagorean triple (a, b, c) such that c(n) - b(n) = n.

Offset 1, canonical program `A242219.P5269030228670689026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242219 (n : ℕ) : ℤ :=
  (A242219.P5269030228670689026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243353.P14485821994603971352

`A163511(A180201(n))`
-/

namespace A243353.P14485821994603971352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A180201 n).toNat

end

end A243353.P14485821994603971352

noncomputable section

/-- A243353: Permutation of natural numbers which maps between the partitions as encoded in A227739 (binary based system, zero-based) to A112798 (prime-index based system, one-based).

Offset 0, canonical program `A243353.P14485821994603971352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A243353 (n : ℕ) : ℤ :=
  A243353.P14485821994603971352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A243353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250473.P5998027225366399157

`A066883(n+1)+A008864(n+1)`
-/

namespace A250473.P5998027225366399157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A008864 (n + 1)

end

end A250473.P5998027225366399157

noncomputable section

/-- A250473: Length of the maximal prefix of noncomposite numbers on row n of A249821.

Offset 1, canonical program `A250473.P5998027225366399157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4743 terms. -/
def A250473 (n : ℕ) : ℤ :=
  A250473.P5998027225366399157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4743 terms. -/
def A250473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250474.P15580657759443600580

`A250473(n+1)+1`
-/

namespace A250474.P15580657759443600580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + 1

end

end A250474.P15580657759443600580

noncomputable section

/-- A250474: Number of times prime(n) occurs as the least prime factor among numbers 1 .. prime(n)^3: a(n) = A078898(A030078(n)).

Offset 1, canonical program `A250474.P15580657759443600580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250474 (n : ℕ) : ℤ :=
  A250474.P15580657759443600580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251719.P1076790489604256652

`∑[char[A250473(n+1)]]+1`
-/

namespace A251719.P1076790489604256652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251719.P1076790489604256652

noncomputable section

/-- A251719: a(n) = the least k such that A250474(k) > n.

Offset 1, canonical program `A251719.P1076790489604256652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719 (n : ℕ) : ℤ :=
  (A251719.P1076790489604256652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256435.P229463995676631497

`A001481(n+2)-A001481(n+1)`
-/

namespace A256435.P229463995676631497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2) - A001481 (n + 1)

end

end A256435.P229463995676631497

noncomputable section

/-- A256435: First differences of sums of two squares.

Offset 1, canonical program `A256435.P229463995676631497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435 (n : ℕ) : ℤ :=
  A256435.P229463995676631497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257020.P12343170561729900275

`eq[2, A001285(A055087(A055087(n)))]`
-/

namespace A257020.P12343170561729900275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A055087 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P12343170561729900275

noncomputable section

/-- A257020: Numbers whose quarter-square representation consists of three terms.

Offset 1, canonical program `A257020.P12343170561729900275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257020 (n : ℕ) : ℤ :=
  (A257020.P12343170561729900275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259877.P11459375870867924158

`A100861(A217571(n+1))`
-/

namespace A259877.P11459375870867924158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (A217571 (n + 1)).toNat

end

end A259877.P11459375870867924158

noncomputable section

/-- A259877: If n is even then a(n) = n!/( 2^(n/2)*(n/2)! ), otherwise a(n) = n!/( 3*2^((n-1)/2)*((n-3)/2)! ).

Offset 2, canonical program `A259877.P11459375870867924158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A259877 (n : ℕ) : ℤ :=
  A259877.P11459375870867924158.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A259877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259936.P5139569933053793896

`A305150(∏{p}[n+1, #])`
-/

namespace A259936.P5139569933053793896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305150 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P5139569933053793896

noncomputable section

/-- A259936: Number of ways to express the integer n as a product of its unitary divisors (A034444).

Offset 1, canonical program `A259936.P5139569933053793896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936 (n : ℕ) : ℤ :=
  A259936.P5139569933053793896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264772.P6309471126076613792

`C(A294317(n)+A025581(n), A025581(n))`
-/

namespace A264772.P6309471126076613792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n + A025581 n).toNat (A025581 n).toNat

end

end A264772.P6309471126076613792

noncomputable section

/-- A264772: Triangle T(n,k) = binomial(3*n - 2*k, 2*n - k), 0 <= k <= n.

Offset 0, canonical program `A264772.P6309471126076613792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A264772 (n : ℕ) : ℤ :=
  (A264772.P6309471126076613792.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A264772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268038.P13887345002917618489

`-A174344(A020703(n+1))`
-/

namespace A268038.P13887345002917618489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174344 (A020703 (n + 1)).toNat

end

end A268038.P13887345002917618489

noncomputable section

/-- A268038: List of y-coordinates of point moving in clockwise square spiral.

Offset 1, canonical program `A268038.P13887345002917618489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268038 (n : ℕ) : ℤ :=
  A268038.P13887345002917618489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274773.P11672624379083383188

`2*A053616(n)+1`
-/

namespace A274773.P11672624379083383188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053616 n + 1

end

end A274773.P11672624379083383188

noncomputable section

/-- A274773: a(n) = floor(sqrt(2*n-1) + 1/2) - abs(2*(n-1) - (floor(sqrt(2*n-1) + 1/2))^2) + 1.

Offset 1, canonical program `A274773.P11672624379083383188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773 (n : ℕ) : ℤ :=
  A274773.P11672624379083383188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274923.P17560489070939647201

`-A268038(n+1)`
-/

namespace A274923.P17560489070939647201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A268038 (n + 1)

end

end A274923.P17560489070939647201

noncomputable section

/-- A274923: List of y-coordinates of point moving in counterclockwise square spiral.

Offset 1, canonical program `A274923.P17560489070939647201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274923 (n : ℕ) : ℤ :=
  A274923.P17560489070939647201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275120.P14177389286466694945

`A057820(n+1)+C(2, n+2)`
-/

namespace A275120.P14177389286466694945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A275120.P14177389286466694945

noncomputable section

/-- A275120: List the least common multiples of {1, 2, ..., k} for k = 0, 1, ...; this sequence gives the length of the n-th block of consecutive equal numbers.

Offset 1, canonical program `A275120.P14177389286466694945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275120 (n : ℕ) : ℤ :=
  A275120.P14177389286466694945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276391.P10040952499910227078

`(2+4^A001511(n+1))/6`
-/

namespace A276391.P10040952499910227078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (4 : ℚ) ^ (A001511 (n + 1) : ℤ)) / 6

end

end A276391.P10040952499910227078

noncomputable section

/-- A276391: G.f. satisfies A(x) - 4*A(x^2) = x/(1+x).

Offset 1, canonical program `A276391.P10040952499910227078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276391 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276391.P10040952499910227078.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276824.P13888465290659419549

`A181962(n+1)-A060939(n+1)`
-/

namespace A276824.P13888465290659419549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) - A060939 (n + 1)

end

end A276824.P13888465290659419549

noncomputable section

/-- A276824: a(n) = p-s, where s = Sum_{i=1..n} prime(i) and p = primepi(prime(n)^2).

Offset 1, canonical program `A276824.P13888465290659419549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A276824 (n : ℕ) : ℤ :=
  A276824.P13888465290659419549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A276824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284565.P9570140672652545483

`A000360(2*n)`
-/

namespace A284565.P9570140672652545483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n)

end

end A284565.P9570140672652545483

noncomputable section

/-- A284565: Bisection of A000360.

Offset 0, canonical program `A284565.P9570140672652545483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284565 (n : ℕ) : ℤ :=
  A284565.P9570140672652545483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287170.P3735047358035407124

`A069010(A087207(n+1))`
-/

namespace A287170.P3735047358035407124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A087207 (n + 1)).toNat

end

end A287170.P3735047358035407124

noncomputable section

/-- A287170: a(n) = number of runs of consecutive prime numbers among the prime divisors of n.

Offset 1, canonical program `A287170.P3735047358035407124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170 (n : ℕ) : ℤ :=
  A287170.P3735047358035407124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292600.P3914548694480041296

`A006068(floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292600.P3914548694480041296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ⌊(n : ℚ) / 2⌋.toNat

end

end A292600.P3914548694480041296

noncomputable section

/-- A292600: a(n) = A006068(floor(n/2)); A006068 with every term duplicated, where A006068 is the inverse of binary gray code.

Offset 0, canonical program `A292600.P3914548694480041296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292600 (n : ℕ) : ℤ :=
  A292600.P3914548694480041296.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295657.P13118520405075574834

`∑{d}[A003557(A003557(n+1)), A346612(#)]`
-/

namespace A295657.P13118520405075574834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346612 d

end

end A295657.P13118520405075574834

noncomputable section

/-- A295657: Multiplicative with a(p^e) = p^floor((e-1)/2).

Offset 1, canonical program `A295657.P13118520405075574834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295657 (n : ℕ) : ℤ :=
  A295657.P13118520405075574834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303259.P6745834928257893132

`A046899(A007590(n))-A142150(n)`
-/

namespace A303259.P6745834928257893132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n).toNat - A142150 n

end

end A303259.P6745834928257893132

noncomputable section

/-- A303259: Number of ordered rooted trees with n non-root nodes such that the maximal outdegree equals ceiling(n/2).

Offset 0, canonical program `A303259.P6745834928257893132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259 (n : ℕ) : ℤ :=
  A303259.P6745834928257893132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305624.P13235165757477837643

`A000919(n+1)-A056311(n+1)`
-/

namespace A305624.P13235165757477837643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000919 (n + 1) - A056311 (n + 1)

end

end A305624.P13235165757477837643

noncomputable section

/-- A305624: Number of chiral pairs of rows of n colors with exactly 4 different colors.

Offset 1, canonical program `A305624.P13235165757477837643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000919, A056311, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305624 (n : ℕ) : ℤ :=
  A305624.P13235165757477837643.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000919, A056311, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306898.P8159862033566146639

`∑{d}[n+1, A174478(#)*A326938((n+1)/#)]`
-/

namespace A306898.P8159862033566146639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174478 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306898.P8159862033566146639

noncomputable section

/-- A306898: a(n) = Sum_{d|n} 2^d*phi(2*n/d).

Offset 1, canonical program `A306898.P8159862033566146639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A306898 (n : ℕ) : ℤ :=
  A306898.P8159862033566146639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A306898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306905.P15120957295957279289

`A306898(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306905.P15120957295957279289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306898 (n + 1) : ℚ) / 2

end

end A306905.P15120957295957279289

noncomputable section

/-- A306905: a(n) = A306898(n)/2.

Offset 1, canonical program `A306905.P15120957295957279289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306905 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306905.P15120957295957279289.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309873.P5021135503689677303

`1-2*A096268(n)`
-/

namespace A309873.P5021135503689677303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A096268 n

end

end A309873.P5021135503689677303

noncomputable section

/-- A309873: Period-doubling turn sequence, +1 when the 2-adic valuation of n is even or -1 when odd.

Offset 1, canonical program `A309873.P5021135503689677303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873 (n : ℕ) : ℤ :=
  A309873.P5021135503689677303.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316717.P5515055320797680457

`A014081(eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A316717.P5515055320797680457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316717.P5515055320797680457

noncomputable section

/-- A316717: a(n) is the number of 3s in A316713(n). That is, a(n) is the number of C-sequences (A278041) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316717.P5515055320797680457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717 (n : ℕ) : ℤ :=
  A316717.P5515055320797680457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319683.P12193173878148969980

`∑{d}[n+1, A001065(#)*A349394((n+1)/#)]`
-/

namespace A319683.P12193173878148969980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319683.P12193173878148969980

noncomputable section

/-- A319683: Sum of A003415(d) over the proper divisors d of n, where A003415 is arithmetic derivative.

Offset 1, canonical program `A319683.P12193173878148969980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319683 (n : ℕ) : ℤ :=
  A319683.P12193173878148969980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319684.P10446271486458079777

`∑{d}[n+1, A000203(#)*A349394((n+1)/#)]`
-/

namespace A319684.P10446271486458079777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P10446271486458079777

noncomputable section

/-- A319684: Sum of A003415(d) over the divisors d of n, where A003415 is arithmetic derivative.

Offset 1, canonical program `A319684.P10446271486458079777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319684 (n : ℕ) : ℤ :=
  A319684.P10446271486458079777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323154.P14116477510633869356

`A000007(A048146(n+1)%(n+1))`
-/

namespace A323154.P14116477510633869356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A048146 (n + 1)) (n + 1 : ℤ)).toNat

end

end A323154.P14116477510633869356

noncomputable section

/-- A323154: a(n) = 1 if n divides A048146(n) = (sigma(n)-usigma(n)), 0 otherwise.

Offset 1, canonical program `A323154.P14116477510633869356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154 (n : ℕ) : ℤ :=
  A323154.P14116477510633869356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335322.P3876703138502484102

`A007318(floor(A189151(n+1)/2))`
-/

namespace A335322.P3876703138502484102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(A189151 (n + 1) : ℚ) / 2⌋.toNat

end

end A335322.P3876703138502484102

noncomputable section

/-- A335322: Triangle read by rows: T(n, k) = binomial(n, floor((n+k+1)/2)) with k <= n.

Offset 1, canonical program `A335322.P3876703138502484102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335322 (n : ℕ) : ℤ :=
  A335322.P3876703138502484102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336644.P17715944373754840888

`A066503(n+1)/A007913(n+1)`
-/

namespace A336644.P17715944373754840888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066503 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A336644.P17715944373754840888

noncomputable section

/-- A336644: a(n) = (n-rad(n)) / core(n), where rad(n) and core(n) give the squarefree kernel and squarefree part of n, respectively.

Offset 1, canonical program `A336644.P17715944373754840888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A066503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336644.P17715944373754840888.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A066503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342381.P8416467622405171547

`A007318(n)*A000354(A025581(n))`
-/

namespace A342381.P8416467622405171547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000354 (A025581 n).toNat

end

end A342381.P8416467622405171547

noncomputable section

/-- A342381: Triangle read by rows: T(n,k) is the number of symmetries of the n-dimensional hypercube that fix exactly 2*k facets; n,k >= 0.

Offset 0, canonical program `A342381.P8416467622405171547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A342381 (n : ℕ) : ℤ :=
  A342381.P8416467622405171547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A342381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346760.P5222044433833628232

`(A059376(n+1)-3*A007434(n+1)+2*A000010(n+1))/6`
-/

namespace A346760.P5222044433833628232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) - 3 * A007434 (n + 1) + 2 * A000010 (n + 1) : ℚ) / 6

end

end A346760.P5222044433833628232

noncomputable section

/-- A346760: a(n) = Sum_{d|n} mu(n/d) * binomial(d,3).

Offset 1, canonical program `A346760.P5222044433833628232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346760 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346760.P5222044433833628232.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346761.P16965742112610444180

`(A059377(n+1)-6*A059376(n+1)+11*A007434(n+1)-6*A000010(n+1))/24`
-/

namespace A346761.P16965742112610444180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) - 6 * A059376 (n + 1) + 11 * A007434 (n + 1) - 6 * A000010 (n + 1) : ℚ) / 24

end

end A346761.P16965742112610444180

noncomputable section

/-- A346761: a(n) = Sum_{d|n} mu(n/d) * binomial(d,4).

Offset 1, canonical program `A346761.P16965742112610444180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346761.P16965742112610444180.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, A059376, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349444.P9210141452199048946

`∑{d}[n+1, A007427(#)*A113415((n+1)/#)]`
-/

namespace A349444.P9210141452199048946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P9210141452199048946

noncomputable section

/-- A349444: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A092673 (Dirichlet inverse of A001511).

Offset 1, canonical program `A349444.P9210141452199048946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444 (n : ℕ) : ℤ :=
  A349444.P9210141452199048946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355222.P17906569904308679321

`A182324(n)-A054054(A056142(n))`
-/

namespace A355222.P17906569904308679321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - A054054 (A056142 n).toNat

end

end A355222.P17906569904308679321

noncomputable section

/-- A355222: The k-th leftmost digit of a(n) is the greatest of the k leftmost digits of n.

Offset 0, canonical program `A355222.P17906569904308679321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222 (n : ℕ) : ℤ :=
  A355222.P17906569904308679321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356191.P16753681922814889908

`A064549(n+1)/A007913(n+1)`
-/

namespace A356191.P16753681922814889908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A356191.P16753681922814889908

noncomputable section

/-- A356191: a(n) is the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A356191.P16753681922814889908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356191.P16753681922814889908.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356546.P14984275591505448716

`A003506(n+1)*A168256(n)`
-/

namespace A356546.P14984275591505448716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A168256 n

end

end A356546.P14984275591505448716

noncomputable section

/-- A356546: Triangle read by rows. T(n, k) = RisingFactorial(n + 1, n) / (k! * (n - k)!).

Offset 0, canonical program `A356546.P14984275591505448716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6604 terms. -/
def A356546 (n : ℕ) : ℤ :=
  A356546.P14984275591505448716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6604 terms. -/
def A356546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359464.P323897448991584528

`ceil(A064179(n+1)/2)`
-/

namespace A359464.P323897448991584528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064179 (n + 1) : ℚ) / 2⌉

end

end A359464.P323897448991584528

noncomputable section

/-- A359464: a(n) = 1 if the total number of 1-bits in the exponents of prime factorization n is even, otherwise 0.

Offset 1, canonical program `A359464.P323897448991584528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464 (n : ℕ) : ℤ :=
  A359464.P323897448991584528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360540.P17983451323548699301

`A057521((n+1)/A368884(n+1))`
-/

namespace A360540.P17983451323548699301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368884 (n + 1) : ℚ))).toNat

end

end A360540.P17983451323548699301

noncomputable section

/-- A360540: a(n) is the cubefull part of n: the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A360540.P17983451323548699301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360540 (n : ℕ) : ℤ :=
  A360540.P17983451323548699301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373895.P7884288159886189589

`A082482(n+1)+A036453(n+1)`
-/

namespace A373895.P7884288159886189589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + A036453 (n + 1)

end

end A373895.P7884288159886189589

noncomputable section

/-- A373895: a(n) = ceiling((2^n+n-1)/n).

Offset 1, canonical program `A373895.P7884288159886189589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A373895 (n : ℕ) : ℤ :=
  A373895.P7884288159886189589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A373895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374061.P16980433022031769018

`floor(A035185(n+1)/2)`
-/

namespace A374061.P16980433022031769018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035185 (n + 1) : ℚ) / 2⌋

end

end A374061.P16980433022031769018

noncomputable section

/-- A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

Offset 1, canonical program `A374061.P16980433022031769018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061 (n : ℕ) : ℤ :=
  A374061.P16980433022031769018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`
-/

namespace A374466.P2704209594539488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * (1 - A359464 (n + 1))

end

end A374466.P2704209594539488434

noncomputable section

/-- A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

Offset 1, canonical program `A374466.P2704209594539488434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466 (n : ℕ) : ℤ :=
  A374466.P2704209594539488434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374467.P9810705810024272100

`eq[1, A374466(n+1)]+1`
-/

namespace A374467.P9810705810024272100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374467.P9810705810024272100

noncomputable section

/-- A374467: Numbers that are products of an odd number of primes and the total number of 1-bits in the exponents of their prime factorization n is odd.

Offset 1, canonical program `A374467.P9810705810024272100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467 (n : ℕ) : ℤ :=
  (A374467.P9810705810024272100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376583.P3078053738808332107

`A000035(A002260(n+1))`
-/

namespace A376583.P3078053738808332107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002260 (n + 1)).toNat

end

end A376583.P3078053738808332107

noncomputable section

/-- A376583: Parity of A002260.

Offset 1, canonical program `A376583.P3078053738808332107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583 (n : ℕ) : ℤ :=
  A376583.P3078053738808332107.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379705.P4574485097972664711

`A242219(n+1)²/(n+1)`
-/

namespace A379705.P4574485097972664711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242219 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A379705.P4574485097972664711

noncomputable section

/-- A379705: a(n) is the least integer k > n such that integers p, q exist for which n, p, k are in arithmetic and n, q, k are in geometric progression.

Offset 1, canonical program `A379705.P4574485097972664711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379705.P4574485097972664711.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386624.P17245005643228662318

`∑{d}[n+1, A007427(#)*A062952((n+1)/#)]`
-/

namespace A386624.P17245005643228662318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386624.P17245005643228662318

noncomputable section

/-- A386624: a(n) = Sum_{d|n} sigma(d) * phi(d) * mu(n/d).

Offset 1, canonical program `A386624.P17245005643228662318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386624 (n : ℕ) : ℤ :=
  A386624.P17245005643228662318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`
-/

namespace A387325.P12366465277394037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) - 1

end

end A387325.P12366465277394037670

noncomputable section

/-- A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

Offset 0, canonical program `A387325.P12366465277394037670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325 (n : ℕ) : ℤ :=
  A387325.P12366465277394037670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392055.P15206338133621600335

`A014963(A354031(n+1)+n+1)`
-/

namespace A392055.P15206338133621600335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A354031 (n + 1) + (n + 1 : ℤ)).toNat

end

end A392055.P15206338133621600335

noncomputable section

/-- A392055: a(n) = p if n = p^k is a perfect power of either a ramified or inert prime in the Gaussian integers and 1 otherwise.

Offset 1, canonical program `A392055.P15206338133621600335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055 (n : ℕ) : ℤ :=
  A392055.P15206338133621600335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392166.P11144800209596084417

`A048250(n+1)*A295657(n+1)`
-/

namespace A392166.P11144800209596084417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A295657 (n + 1)

end

end A392166.P11144800209596084417

noncomputable section

/-- A392166: The Dedekind psi function value of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392166.P11144800209596084417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392166 (n : ℕ) : ℤ :=
  A392166.P11144800209596084417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393976.P11083541113519582612

`A127473(n+1)+A000010(n+1)+1`
-/

namespace A393976.P11083541113519582612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1) + A000010 (n + 1) + 1

end

end A393976.P11083541113519582612

noncomputable section

/-- A393976: a(n) = phi(n)^2 + phi(n) + 1, where phi is Euler's totient function.

Offset 1, canonical program `A393976.P11083541113519582612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976 (n : ℕ) : ℤ :=
  A393976.P11083541113519582612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000015.P2530082583010810879

`A097106(n+1)+A031218(n+1)`
-/

namespace A000015.P2530082583010810879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097106 (n + 1) + A031218 (n + 1)

end

end A000015.P2530082583010810879

noncomputable section

/-- A000015: Smallest prime power >= n.

Offset 1, canonical program `A000015.P2530082583010810879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000015 (n : ℕ) : ℤ :=
  A000015.P2530082583010810879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000028.P8857618948248108747

`lt[A064179(n+1), 0]+1`
-/

namespace A000028.P8857618948248108747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000028.P8857618948248108747

noncomputable section

/-- A000028: Let k = p_1^e_1 p_2^e_2 p_3^e_3 ... be the prime factorization of n. Sequence gives k such that the sum of the numbers of 1's in the binary expansions of e_1, e_2, e_3, ... is odd.

Offset 1, canonical program `A000028.P8857618948248108747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028 (n : ℕ) : ℤ :=
  (A000028.P8857618948248108747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000031.P16543801865445953573

`∑{d}[n, A059966(#)]+1`
-/

namespace A000031.P16543801865445953573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059966 d + 1

end

end A000031.P16543801865445953573

noncomputable section

/-- A000031: Number of n-bead necklaces with 2 colors when turning over is not allowed; also number of output sequences from a simple n-stage cycling shift register; also number of binary irreducible polynomials whose degree divides n.

Offset 0, canonical program `A000031.P16543801865445953573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A000031 (n : ℕ) : ℤ :=
  A000031.P16543801865445953573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A000031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000184.P18437926326760812806

`2*A029887(n)`
-/

namespace A000184.P18437926326760812806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029887 n

end

end A000184.P18437926326760812806

noncomputable section

/-- A000184: Number of genus 0 rooted maps with 3 faces with n vertices.

Offset 2, canonical program `A000184.P18437926326760812806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000184 (n : ℕ) : ℤ :=
  A000184.P18437926326760812806.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000189.P11210685475351648118

`(n+1)/A053149(n+1)^(1/3)`
-/

namespace A000189.P11210685475351648118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / (A053149 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A000189.P11210685475351648118

noncomputable section

/-- A000189: Number of solutions to x^3 == 0 (mod n).

Offset 1, canonical program `A000189.P11210685475351648118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000189.P11210685475351648118.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000265.P2772582252347773295

`2*A003602(n+1)-1`
-/

namespace A000265.P2772582252347773295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003602 (n + 1) - 1

end

end A000265.P2772582252347773295

noncomputable section

/-- A000265: Remove all factors of 2 from n; or largest odd divisor of n; or odd part of n.

Offset 1, canonical program `A000265.P2772582252347773295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000265 (n : ℕ) : ℤ :=
  A000265.P2772582252347773295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000328.P3563522184609365216

`A057655(n²)`
-/

namespace A000328.P3563522184609365216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2)

end

end A000328.P3563522184609365216

noncomputable section

/-- A000328: Number of points of norm <= n^2 in square lattice.

Offset 0, canonical program `A000328.P3563522184609365216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328 (n : ℕ) : ℤ :=
  A000328.P3563522184609365216.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000379.P2146762870191125064

`eq[1, A064179(n+1)]+1`
-/

namespace A000379.P2146762870191125064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000379.P2146762870191125064

noncomputable section

/-- A000379: Numbers where total number of 1-bits in the exponents of their prime factorization is even; a 2-way classification of integers: complement of A000028.

Offset 1, canonical program `A000379.P2146762870191125064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379 (n : ℕ) : ℤ :=
  (A000379.P2146762870191125064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000415.P13707848856828247433

`filter[A001481(n+2), A049240(#)]`
-/

namespace A000415.P13707848856828247433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000415.P13707848856828247433

noncomputable section

/-- A000415: Numbers that are the sum of 2 but no fewer nonzero squares.

Offset 1, canonical program `A000415.P13707848856828247433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415 (n : ℕ) : ℤ :=
  A000415.P13707848856828247433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000469.P516089823978451219

`A120944(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A000469.P516089823978451219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120944 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A000469.P516089823978451219

noncomputable section

/-- A000469: 1 together with products of 2 or more distinct primes.

Offset 1, canonical program `A000469.P516089823978451219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469 (n : ℕ) : ℤ :=
  A000469.P516089823978451219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000520.P740625616792287926

`A077429(n+1)-A004216(n+1)`
-/

namespace A000520.P740625616792287926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (n + 1) - A004216 (n + 1)

end

end A000520.P740625616792287926

noncomputable section

/-- A000520: Nearest integer to log_10(n).

Offset 1, canonical program `A000520.P740625616792287926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520 (n : ℕ) : ℤ :=
  A000520.P740625616792287926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000592.P15353079189797970692

`A224212(A001481(n+1))`
-/

namespace A000592.P15353079189797970692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (A001481 (n + 1)).toNat

end

end A000592.P15353079189797970692

noncomputable section

/-- A000592: Number of nonnegative solutions of x^2 + y^2 = z in first n shells.

Offset 0, canonical program `A000592.P15353079189797970692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A000592 (n : ℕ) : ℤ :=
  A000592.P15353079189797970692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A000592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000603.P17854986445594045637

`A036698(n)+1+n`
-/

namespace A000603.P17854986445594045637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n + 1 + (n : ℤ)

end

end A000603.P17854986445594045637

noncomputable section

/-- A000603: Number of nonnegative solutions to x^2 + y^2 <= n^2.

Offset 0, canonical program `A000603.P17854986445594045637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000603 (n : ℕ) : ℤ :=
  A000603.P17854986445594045637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000799.P8133862244709605742

`A082482(n+1)+A036987(n)`
-/

namespace A000799.P8133862244709605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + A036987 n

end

end A000799.P8133862244709605742

noncomputable section

/-- A000799: a(n) = floor(2^n / n).

Offset 1, canonical program `A000799.P8133862244709605742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000799 (n : ℕ) : ℤ :=
  A000799.P8133862244709605742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000879.P14717816069201064931

`A250474(n+1)-2+n`
-/

namespace A000879.P14717816069201064931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2 + (n : ℤ)

end

end A000879.P14717816069201064931

noncomputable section

/-- A000879: Number of primes < prime(n)^2.

Offset 1, canonical program `A000879.P14717816069201064931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A000879 (n : ℕ) : ℤ :=
  A000879.P14717816069201064931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A000879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000977.P17233491019449324668

`lt[2, A259936(n+1)]+1`
-/

namespace A000977.P17233491019449324668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A000977.P17233491019449324668

noncomputable section

/-- A000977: Numbers that are divisible by at least three different primes.

Offset 1, canonical program `A000977.P17233491019449324668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9966 terms. -/
def A000977 (n : ℕ) : ℤ :=
  (A000977.P17233491019449324668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9966 terms. -/
def A000977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001083.P5643140285671293949

`A054353(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001083.P5643140285671293949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A054353 (a (n - 1)).toNat

end

end A001083.P5643140285671293949

noncomputable section

/-- A001083: Length of one version of Kolakoski sequence {A000002(i)} at n-th growth stage.

Offset 1, canonical program `A001083.P5643140285671293949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001083 (n : ℕ) : ℤ :=
  A001083.P5643140285671293949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001089.P12328376090641490040

`A071741(n)-A071729(n)`
-/

namespace A001089.P12328376090641490040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - A071729 n

end

end A001089.P12328376090641490040

noncomputable section

/-- A001089: Number of permutations of [n] containing exactly 2 increasing subsequences of length 3.

Offset 0, canonical program `A001089.P12328376090641490040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089 (n : ℕ) : ℤ :=
  A001089.P12328376090641490040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001283.P9612674106324682864

`(A108872(n+1)+1)*A003057(n+2)`
-/

namespace A001283.P9612674106324682864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) + 1) * A003057 (n + 2)

end

end A001283.P9612674106324682864

noncomputable section

/-- A001283: Triangle read by rows, in which row n consists of n(n+m) for m = 1 .. n-1.

Offset 2, canonical program `A001283.P9612674106324682864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001283 (n : ℕ) : ℤ :=
  A001283.P9612674106324682864.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001766.P5829202588675829785

`A000056(n+1)/A014963(A060594(n+1))`
-/

namespace A001766.P5829202588675829785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A014963 (A060594 (n + 1)).toNat : ℚ)

end

end A001766.P5829202588675829785

noncomputable section

/-- A001766: Index of (the image of) the modular group Gamma(n) in PSL_2(Z).

Offset 1, canonical program `A001766.P5829202588675829785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001766 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001766.P5829202588675829785.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001983.P13824621778224513815

`∪[(n+1)², A004431(n+1)]`
-/

namespace A001983.P13824621778224513815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001983.P13824621778224513815

noncomputable section

/-- A001983: Numbers that are the sum of 2 distinct squares: of form x^2 + y^2 with 0 <= x < y.

Offset 1, canonical program `A001983.P13824621778224513815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983 (n : ℕ) : ℤ :=
  (A001983.P13824621778224513815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002088.P8962335469571691680

`∑[∑{d}[n, A007431(#)]]`
-/

namespace A002088.P8962335469571691680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007431 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002088.P8962335469571691680

noncomputable section

/-- A002088: Sum of totient function: a(n) = Sum_{k=1..n} phi(k), cf. A000010.

Offset 0, canonical program `A002088.P8962335469571691680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002088 (n : ℕ) : ℤ :=
  A002088.P8962335469571691680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002618.P11219262123574684380

`A009195(n+1)*A009262(n+1)`
-/

namespace A002618.P11219262123574684380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A009262 (n + 1)

end

end A002618.P11219262123574684380

noncomputable section

/-- A002618: a(n) = n*phi(n).

Offset 1, canonical program `A002618.P11219262123574684380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A009262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002618 (n : ℕ) : ℤ :=
  A002618.P11219262123574684380.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A009262, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003518.P3518612387412531117

`A001089(n+3)+A000344(n+2)`
-/

namespace A003518.P3518612387412531117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001089 (n + 3) + A000344 (n + 2)

end

end A003518.P3518612387412531117

noncomputable section

/-- A003518: a(n) = 8*binomial(2*n+1,n-3)/(n+5).

Offset 3, canonical program `A003518.P3518612387412531117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A003518 (n : ℕ) : ℤ :=
  A003518.P3518612387412531117.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A003518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003796.P430726989961333611

`eq[0, A056974(2*n+1)]`
-/

namespace A003796.P430726989961333611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P430726989961333611

noncomputable section

/-- A003796: Numbers with no 3 adjacent 0's in binary expansion.

Offset 1, canonical program `A003796.P430726989961333611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003796 (n : ℕ) : ℤ :=
  (A003796.P430726989961333611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003989.P4304575530733865990

`gcd(abs(A114327(n)), A004736(n+1))`
-/

namespace A003989.P4304575530733865990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A114327 n| (A004736 (n + 1))

end

end A003989.P4304575530733865990

noncomputable section

/-- A003989: Triangle T from the array A(x, y) = gcd(x,y), for x >= 1, y >= 1, read by antidiagonals.

Offset 1, canonical program `A003989.P4304575530733865990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003989 (n : ℕ) : ℤ :=
  (A003989.P4304575530733865990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005508.P2090669877977170398

`A026008(n+2)-A026021(n)`
-/

namespace A005508.P2090669877977170398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (n + 2) - A026021 n

end

end A005508.P2090669877977170398

noncomputable section

/-- A005508: Number of unrooted triangulations with reflection symmetry of a disk with one internal node and n+3 nodes on the boundary.

Offset 0, canonical program `A005508.P2090669877977170398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A005508 (n : ℕ) : ℤ :=
  A005508.P2090669877977170398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A005508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005728.P12032251568510858139

`1+A002088(n)`
-/

namespace A005728.P12032251568510858139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002088 n

end

end A005728.P12032251568510858139

noncomputable section

/-- A005728: Number of fractions in Farey series of order n.

Offset 0, canonical program `A005728.P12032251568510858139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005728 (n : ℕ) : ℤ :=
  A005728.P12032251568510858139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005792.P17441170092424256089

`∪[A001983(n+1), A249096(n+1)]`
-/

namespace A005792.P17441170092424256089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005792.P17441170092424256089

noncomputable section

/-- A005792: Positive numbers that are the sum of 2 squares or 3 times a square.

Offset 1, canonical program `A005792.P17441170092424256089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792 (n : ℕ) : ℤ :=
  (A005792.P17441170092424256089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005940.P997646858218259533

`A243353(A006068(n))`
-/

namespace A005940.P997646858218259533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A006068 n).toNat

end

end A005940.P997646858218259533

noncomputable section

/-- A005940: The Doudna sequence: write n-1 in binary; power of prime(k) in a(n) is # of 1's that are followed by k-1 0's.

Offset 1, canonical program `A005940.P997646858218259533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005940 (n : ℕ) : ℤ :=
  A005940.P997646858218259533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008290.P6792413531487756726

`A098825(A061579(n))`
-/

namespace A008290.P6792413531487756726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A061579 n).toNat

end

end A008290.P6792413531487756726

noncomputable section

/-- A008290: Triangle T(n,k) of rencontres numbers (number of permutations of n elements with k fixed points).

Offset 0, canonical program `A008290.P6792413531487756726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A008290 (n : ℕ) : ℤ :=
  A008290.P6792413531487756726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A008290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008311.P16507071146551103518

`A008314(A082375(n)+A028391(n))`
-/

namespace A008311.P16507071146551103518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A082375 n + A028391 n).toNat

end

end A008311.P16507071146551103518

noncomputable section

/-- A008311: Triangle of expansions of powers of x in terms of Chebyshev polynomials T_n (x).

Offset 0, canonical program `A008311.P16507071146551103518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008311 (n : ℕ) : ℤ :=
  A008311.P16507071146551103518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008313.P7466062722273303324

`A008311(n)-A008311(n+1)%A008311(n)`
-/

namespace A008313.P7466062722273303324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 n - Int.tmod (A008311 (n + 1)) (A008311 n)

end

end A008313.P7466062722273303324

noncomputable section

/-- A008313: Triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A008313.P7466062722273303324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008313 (n : ℕ) : ℤ :=
  A008313.P7466062722273303324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009766.P5825357266757824641

`2*A046899(n)-A178300(n+1)`
-/

namespace A009766.P5825357266757824641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046899 n - A178300 (n + 1)

end

end A009766.P5825357266757824641

noncomputable section

/-- A009766: Catalan's triangle T(n,k) (read by rows): each term is the sum of the entries above and to the left, i.e., T(n,k) = Sum_{j=0..k} T(n-1,j).

Offset 0, canonical program `A009766.P5825357266757824641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009766 (n : ℕ) : ℤ :=
  A009766.P5825357266757824641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011264.P11087742381931658999

`A356191(n+1)/A007913(n+1)`
-/

namespace A011264.P11087742381931658999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A011264.P11087742381931658999

noncomputable section

/-- A011264: In the prime factorization of n, increment even powers and decrement odd powers (multiplicative).

Offset 1, canonical program `A011264.P11087742381931658999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011264.P11087742381931658999.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014574.P4587706211531852143

`A129297(n+5)`
-/

namespace A014574.P4587706211531852143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 5)

end

end A014574.P4587706211531852143

noncomputable section

/-- A014574: Average of twin prime pairs.

Offset 1, canonical program `A014574.P4587706211531852143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014574 (n : ℕ) : ℤ :=
  A014574.P4587706211531852143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014574.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015622.P7437810160960809302

`∑[A346760(n+1)-A000741(n+1)]`
-/

namespace A015622.P7437810160960809302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346760 (n + 1) - A000741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015622.P7437810160960809302

noncomputable section

/-- A015622: Quadruples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015622.P7437810160960809302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1011 terms. -/
def A015622 (n : ℕ) : ℤ :=
  A015622.P7437810160960809302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1011 terms. -/
def A015622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015627.P6012177256396085323

`A015622(n+2)-∑[A161680(n)]`
-/

namespace A015627.P6012177256396085323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015627.P6012177256396085323

noncomputable section

/-- A015627: Quadruples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015627.P6012177256396085323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627 (n : ℕ) : ℤ :=
  A015627.P6012177256396085323.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015640.P16174645672135619219

`∑[A346761(n+1)]-A015622(n+1)`
-/

namespace A015640.P16174645672135619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015622 (n + 1)

end

end A015640.P16174645672135619219

noncomputable section

/-- A015640: Number of 5-tuples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015640.P16174645672135619219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640 (n : ℕ) : ℤ :=
  A015640.P16174645672135619219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018211.P8561171215378061643

`4*A031164(n)-A032093(n+8)`
-/

namespace A018211.P8561171215378061643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031164 n - A032093 (n + 8)

end

end A018211.P8561171215378061643

noncomputable section

/-- A018211: Alkane (or paraffin) numbers l(10,n).

Offset 0, canonical program `A018211.P8561171215378061643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018211 (n : ℕ) : ℤ :=
  A018211.P8561171215378061643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019555.P13325523134191681517

`A053149(n+1)^(1/3)`
-/

namespace A019555.P13325523134191681517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A019555.P13325523134191681517

noncomputable section

/-- A019555: Smallest number whose cube is divisible by n.

Offset 1, canonical program `A019555.P13325523134191681517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019555.P13325523134191681517.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020756.P16947837090098696349

`∪[A051533(n+1), ∑[n]]`
-/

namespace A020756.P16947837090098696349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A020756.P16947837090098696349

noncomputable section

/-- A020756: Numbers that are the sum of two triangular numbers.

Offset 1, canonical program `A020756.P16947837090098696349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756 (n : ℕ) : ℤ :=
  (A020756.P16947837090098696349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026015.P6215984727450645741

`Δ[A003518(n+3)-A000588(n+3)]`
-/

namespace A026015.P6215984727450645741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003518 (n + 3) - A000588 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026015.P6215984727450645741

noncomputable section

/-- A026015: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 8. Also a(n) = T(2n,n-3), where T is the array defined in A026009.

Offset 3, canonical program `A026015.P6215984727450645741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026015 (n : ℕ) : ℤ :=
  A026015.P6215984727450645741.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026034.P10503130599749257734

`A001405(n)-A037958(n)`
-/

namespace A026034.P10503130599749257734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037958 n

end

end A026034.P10503130599749257734

noncomputable section

/-- A026034: a(n) = A026022(n,floor(n/2)).

Offset 0, canonical program `A026034.P10503130599749257734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034 (n : ℕ) : ℤ :=
  A026034.P10503130599749257734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027555.P8297131878136320084

`A033999(A002262(n))*A100100(A061579(n))`
-/

namespace A027555.P8297131878136320084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A100100 (A061579 n).toNat

end

end A027555.P8297131878136320084

noncomputable section

/-- A027555: Triangle of binomial coefficients C(-n,k).

Offset 0, canonical program `A027555.P8297131878136320084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A027555 (n : ℕ) : ℤ :=
  A027555.P8297131878136320084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A027555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029187.P10626193036163881036

`A029164(n)+A029192(n)-A029170(n)`
-/

namespace A029187.P10626193036163881036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029164 n + (A029192 n - A029170 n)

end

end A029187.P10626193036163881036

noncomputable section

/-- A029187: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029187.P10626193036163881036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029187 (n : ℕ) : ℤ :=
  A029187.P10626193036163881036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029635.P14447282759070454877

`A097805(n)+A007318(n)`
-/

namespace A029635.P14447282759070454877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A007318 n

end

end A029635.P14447282759070454877

noncomputable section

/-- A029635: The (1,2)-Pascal triangle (or Lucas triangle) read by rows.

Offset 0, canonical program `A029635.P14447282759070454877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029635 (n : ℕ) : ℤ :=
  A029635.P14447282759070454877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030059.P16778954960096157451

`record[A080305(n+2)]`
-/

namespace A030059.P16778954960096157451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030059.P16778954960096157451

noncomputable section

/-- A030059: Numbers that are the product of an odd number of distinct primes.

Offset 1, canonical program `A030059.P16778954960096157451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030059 (n : ℕ) : ℤ :=
  A030059.P16778954960096157451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033184.P1077807619147989473

`A008315(A082156(n+1)-1)`
-/

namespace A033184.P1077807619147989473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A082156 (n + 1) - 1).toNat

end

end A033184.P1077807619147989473

noncomputable section

/-- A033184: Catalan triangle A009766 transposed.

Offset 1, canonical program `A033184.P1077807619147989473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A033184 (n : ℕ) : ℤ :=
  A033184.P1077807619147989473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A033184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033197.P13571610583292348820

`-A204993(record[A007913(n+1)])`
-/

namespace A033197.P13571610583292348820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033197.P13571610583292348820

noncomputable section

/-- A033197: Discriminants of quadratic number fields Q(sqrt -n) for n squarefree.

Offset 1, canonical program `A033197.P13571610583292348820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197 (n : ℕ) : ℤ :=
  A033197.P13571610583292348820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036695.P3115726908508133400

`ceil(A000328(n)/2+n)`
-/

namespace A036695.P3115726908508133400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000328 n : ℚ) / 2 + (n : ℚ)⌉

end

end A036695.P3115726908508133400

noncomputable section

/-- A036695: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n, b>=0.

Offset 0, canonical program `A036695.P3115726908508133400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036695 (n : ℕ) : ℤ :=
  A036695.P3115726908508133400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036704.P2788393936175939244

`A057655(n²+n)`
-/

namespace A036704.P2788393936175939244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2 + n)

end

end A036704.P2788393936175939244

noncomputable section

/-- A036704: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2.

Offset 0, canonical program `A036704.P2788393936175939244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704 (n : ℕ) : ℤ :=
  A036704.P2788393936175939244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036711.P14920642788416913369

`floor(A036704(n)/4)`
-/

namespace A036711.P14920642788416913369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036704 n : ℚ) / 4⌋

end

end A036711.P14920642788416913369

noncomputable section

/-- A036711: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>0, b>=0.

Offset 0, canonical program `A036711.P14920642788416913369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8470 terms. -/
def A036711 (n : ℕ) : ℤ :=
  A036711.P14920642788416913369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8470 terms. -/
def A036711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037074.P14204517585574046059

`A014574(n+1)²-1`
-/

namespace A037074.P14204517585574046059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2 - 1

end

end A037074.P14204517585574046059

noncomputable section

/-- A037074: Numbers that are the product of a pair of twin primes.

Offset 1, canonical program `A037074.P14204517585574046059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037074 (n : ℕ) : ℤ :=
  A037074.P14204517585574046059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038567.P2197162168153652474

`round(sqrt(2*A169581(n+1)))`
-/

namespace A038567.P2197162168153652474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A169581 (n + 1) : ℝ))

end

end A038567.P2197162168153652474

noncomputable section

/-- A038567: Denominators in canonical bijection from positive integers to positive rationals <= 1.

Offset 0, canonical program `A038567.P2197162168153652474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038567 (n : ℕ) : ℤ :=
  A038567.P2197162168153652474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039599.P10229037155261832338

`A008313(A061885(n))`
-/

namespace A039599.P10229037155261832338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A061885 n).toNat

end

end A039599.P10229037155261832338

noncomputable section

/-- A039599: Triangle formed from even-numbered columns of triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A039599.P10229037155261832338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A039599 (n : ℕ) : ℤ :=
  A039599.P10229037155261832338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A039599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042990.P10404979310700425933

`∪[A003625(n+1), A042994(n+1)]`
-/

namespace A042990.P10404979310700425933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P10404979310700425933

noncomputable section

/-- A042990: Primes not congruent to 4 (mod 7).

Offset 0, canonical program `A042990.P10404979310700425933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042990 (n : ℕ) : ℤ :=
  (A042990.P10404979310700425933.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049581.P658114607470364396

`lcm(A020985(n), A114327(n))`
-/

namespace A049581.P658114607470364396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A114327 n)

end

end A049581.P658114607470364396

noncomputable section

/-- A049581: Table T(n,k) = |n-k| read by antidiagonals (n >= 0, k >= 0).

Offset 0, canonical program `A049581.P658114607470364396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049581 (n : ℕ) : ℤ :=
  (A049581.P658114607470364396.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049744.P13630164365312870052

`A333167(n)+A000328(n)`
-/

namespace A049744.P13630164365312870052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n + A000328 n

end

end A049744.P13630164365312870052

noncomputable section

/-- A049744: a(n)=T(n,1), array T as in A049735.

Offset 0, canonical program `A049744.P13630164365312870052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049744 (n : ℕ) : ℤ :=
  A049744.P13630164365312870052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050155.P11101895223739317642

`A039599(comp[∑[n]])`
-/

namespace A050155.P11101895223739317642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A050155.P11101895223739317642

noncomputable section

/-- A050155: Triangle T(n,k), k>=0 and n>=1, read by rows defined by: T(n,k) = (2k+3)*binomial(2n,n-k-1)/(n+k+2).

Offset 1, canonical program `A050155.P11101895223739317642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A050155 (n : ℕ) : ℤ :=
  A050155.P11101895223739317642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A050155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050873.P7264268653854988149

`gcd(A004247(n), A128139(n))`
-/

namespace A050873.P7264268653854988149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A128139 n)

end

end A050873.P7264268653854988149

noncomputable section

/-- A050873: Triangular array T read by rows: T(n,k) = gcd(n,k).

Offset 1, canonical program `A050873.P7264268653854988149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050873 (n : ℕ) : ℤ :=
  (A050873.P7264268653854988149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052776.P17031965558761558606

`n*A056455(comp[2*n+5]+1)`
-/

namespace A052776.P17031965558761558606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056455 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A052776.P17031965558761558606

noncomputable section

/-- A052776: a(n) = 4!*n*Stirling2(n-1,4).

Offset 0, canonical program `A052776.P17031965558761558606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A052776 (n : ℕ) : ℤ :=
  A052776.P17031965558761558606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A052776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052825.P1042105182767021070

`∑[A000031(A004273(n)-n)-1]`
-/

namespace A052825.P1042105182767021070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A004273 n - (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052825.P1042105182767021070

noncomputable section

/-- A052825: A simple grammar: partial sums of A008965.

Offset 0, canonical program `A052825.P1042105182767021070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052825 (n : ℕ) : ℤ :=
  A052825.P1042105182767021070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053150.P12301494069484336646

`A019555(A062378(n+1))`
-/

namespace A053150.P12301494069484336646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A062378 (n + 1)).toNat

end

end A053150.P12301494069484336646

noncomputable section

/-- A053150: Cube root of largest cube dividing n.

Offset 1, canonical program `A053150.P12301494069484336646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053150 (n : ℕ) : ℤ :=
  A053150.P12301494069484336646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053166.P17952654793583109259

`A019555(A019555(n+1)*A295657(n+1))`
-/

namespace A053166.P17952654793583109259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019555 (n + 1) * A295657 (n + 1)).toNat

end

end A053166.P17952654793583109259

noncomputable section

/-- A053166: Smallest positive integer for which n divides a(n)^4.

Offset 1, canonical program `A053166.P17952654793583109259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053166 (n : ℕ) : ℤ :=
  A053166.P17952654793583109259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053167.P16403547677195952861

`A053166(n+1)^4`
-/

namespace A053167.P16403547677195952861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) ^ 4

end

end A053167.P16403547677195952861

noncomputable section

/-- A053167: Smallest 4th power divisible by n.

Offset 1, canonical program `A053167.P16403547677195952861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053167 (n : ℕ) : ℤ :=
  A053167.P16403547677195952861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053287.P11109318528216789787

`A062401(2^n)`
-/

namespace A053287.P11109318528216789787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (2 ^ n)

end

end A053287.P11109318528216789787

noncomputable section

/-- A053287: Euler totient function (A000010) of 2^n - 1.

Offset 1, canonical program `A053287.P11109318528216789787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053287 (n : ℕ) : ℤ :=
  A053287.P11109318528216789787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053381.P7424849021433620728

`A209675(n+1)-1`
-/

namespace A053381.P7424849021433620728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209675 (n + 1) - 1

end

end A053381.P7424849021433620728

noncomputable section

/-- A053381: Maximal number of linearly independent smooth nowhere-zero vector fields on a (2n+1)-sphere.

Offset 0, canonical program `A053381.P7424849021433620728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053381 (n : ℕ) : ℤ :=
  A053381.P7424849021433620728.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053638.P17925340613213967560

`A082482(n+1)+1`
-/

namespace A053638.P17925340613213967560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + 1

end

end A053638.P17925340613213967560

noncomputable section

/-- A053638: a(n) = ceiling(2^n/n).

Offset 1, canonical program `A053638.P17925340613213967560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053638 (n : ℕ) : ℤ :=
  A053638.P17925340613213967560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053683.P15420794164900351699

`A000040(n+1)²-A000879(n+1)`
-/

namespace A053683.P15420794164900351699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A000879 (n + 1)

end

end A053683.P15420794164900351699

noncomputable section

/-- A053683: Number of nonprimes <= prime(n)^2.

Offset 1, canonical program `A053683.P15420794164900351699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053683 (n : ℕ) : ℤ :=
  A053683.P15420794164900351699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054058.P1941898693570638909

`∑{d}[n+1, A000031(#-1)]`
-/

namespace A054058.P1941898693570638909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000031 (d - 1)

end

end A054058.P1941898693570638909

noncomputable section

/-- A054058: Inverse Moebius transform of A000031 (starting at term 0).

Offset 0, canonical program `A054058.P1941898693570638909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054058 (n : ℕ) : ℤ :=
  A054058.P1941898693570638909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054272.P16500536369367462355

`A250474(n+1)-2`
-/

namespace A054272.P16500536369367462355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2

end

end A054272.P16500536369367462355

noncomputable section

/-- A054272: Number of primes in the interval [prime(n), prime(n)^2].

Offset 1, canonical program `A054272.P16500536369367462355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054272 (n : ℕ) : ℤ :=
  A054272.P16500536369367462355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054521.P4283920493715643574

`A063524(A050873(n+1))`
-/

namespace A054521.P4283920493715643574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A050873 (n + 1)).toNat

end

end A054521.P4283920493715643574

noncomputable section

/-- A054521: Triangle read by rows: T(n,k) = 1 if gcd(n, k) = 1, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054521.P4283920493715643574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054521 (n : ℕ) : ℤ :=
  A054521.P4283920493715643574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055096.P12036012889937996553

`A001283(n+2)-A003991(n+1)`
-/

namespace A055096.P12036012889937996553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) - A003991 (n + 1)

end

end A055096.P12036012889937996553

noncomputable section

/-- A055096: Triangle read by rows, sums of 2 distinct nonzero squares: T(n,k) = k^2+n^2, (n>=2, 1 <= k <= n-1).

Offset 2, canonical program `A055096.P12036012889937996553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055096 (n : ℕ) : ℤ :=
  A055096.P12036012889937996553.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056203.P8688287262021951288

`A003991(n+1)+A001283(n+2)`
-/

namespace A056203.P8688287262021951288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A001283 (n + 2)

end

end A056203.P8688287262021951288

noncomputable section

/-- A056203: Triangle of numbers related to congruum problem: T(n,k)=n^2+2nk-k^2 with n>k>0, starting at T(2,1)=7.

Offset 1, canonical program `A056203.P8688287262021951288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056203 (n : ℕ) : ℤ :=
  A056203.P8688287262021951288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056295.P2923026254266874086

`A306905(n+1)/(n+1)-1`
-/

namespace A056295.P2923026254266874086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306905 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A056295.P2923026254266874086

noncomputable section

/-- A056295: Number of n-bead necklace structures using exactly two different colored beads.

Offset 1, canonical program `A056295.P2923026254266874086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056295.P2923026254266874086.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A056295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056537.P3331014331152516535

`A002620(A094727(n+1))+A002260(n+1)`
-/

namespace A056537.P3331014331152516535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A094727 (n + 1)).toNat + A002260 (n + 1)

end

end A056537.P3331014331152516535

noncomputable section

/-- A056537: Mapping from the column-by-column reading to the half-antidiagonal reading of the triangular tables. Inverse of A056536.

Offset 1, canonical program `A056537.P3331014331152516535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056537 (n : ℕ) : ℤ :=
  A056537.P3331014331152516535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057028.P8117438138446753169

`A056023(n+1)+A092543(n+1)-A209279(n+1)`
-/

namespace A057028.P8117438138446753169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A092543 (n + 1) - A209279 (n + 1))

end

end A057028.P8117438138446753169

noncomputable section

/-- A057028: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form a decreasing sequence and the others an increasing sequence.

Offset 1, canonical program `A057028.P8117438138446753169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028 (n : ℕ) : ℤ :=
  A057028.P8117438138446753169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059076.P1559801332482280449

`(A000031(n)-A029744(n+1))/2`
-/

namespace A059076.P1559801332482280449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000031 n - A029744 (n + 1) : ℚ) / 2

end

end A059076.P1559801332482280449

noncomputable section

/-- A059076: Number of pairs of orientable necklaces with n beads and two colors; i.e., turning the necklace over does not leave it unchanged.

Offset 0, canonical program `A059076.P1559801332482280449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059076.P1559801332482280449.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059481.P9969934564956536567

`abs(A027555(n))`
-/

namespace A059481.P9969934564956536567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027555 n|

end

end A059481.P9969934564956536567

noncomputable section

/-- A059481: Triangle read by rows. T(n, k) = binomial(n+k-1, k) for 0 <= k <= n.

Offset 0, canonical program `A059481.P9969934564956536567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059481 (n : ℕ) : ℤ :=
  A059481.P9969934564956536567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060510.P11373370070759543181

`1-A376583(n+1)`
-/

namespace A060510.P11373370070759543181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A376583 (n + 1)

end

end A060510.P11373370070759543181

noncomputable section

/-- A060510: Alternating with hexagonal stutters: if n is hexagonal (2k^2 - k, i.e., A000384) then a(n)=a(n-1), otherwise a(n) = 1 - a(n-1).

Offset 0, canonical program `A060510.P11373370070759543181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060510 (n : ℕ) : ℤ :=
  A060510.P11373370070759543181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060821.P14686981588061014072

`A059268(n)*A112227(n)`
-/

namespace A060821.P14686981588061014072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A112227 n

end

end A060821.P14686981588061014072

noncomputable section

/-- A060821: Triangle read by rows. T(n, k) are the coefficients of the Hermite polynomial of order n, for 0 <= k <= n.

Offset 0, canonical program `A060821.P14686981588061014072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5163 terms. -/
def A060821 (n : ℕ) : ℤ :=
  A060821.P14686981588061014072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5163 terms. -/
def A060821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061395.P8431317036300486107

`A029837(A087207(n+1)+1)`
-/

namespace A061395.P8431317036300486107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A087207 (n + 1) + 1).toNat

end

end A061395.P8431317036300486107

noncomputable section

/-- A061395: Let p be the largest prime factor of n; if p is the k-th prime then set a(n) = k; a(1) = 0 by convention.

Offset 1, canonical program `A061395.P8431317036300486107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061395 (n : ℕ) : ℤ :=
  A061395.P8431317036300486107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062354.P13583053230066252770

`∑{d}[n+1, A386624(#)]`
-/

namespace A062354.P13583053230066252770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A386624 d

end

end A062354.P13583053230066252770

noncomputable section

/-- A062354: a(n) = sigma(n)*phi(n).

Offset 1, canonical program `A062354.P13583053230066252770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062354 (n : ℕ) : ℤ :=
  A062354.P13583053230066252770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063725.P12741089044414848106

`Δ[A237526(abs(1-n))]`
-/

namespace A063725.P12741089044414848106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063725.P12741089044414848106

noncomputable section

/-- A063725: Number of ordered pairs (x,y) of positive integers such that x^2 + y^2 = n.

Offset 0, canonical program `A063725.P12741089044414848106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063725 (n : ℕ) : ℤ :=
  A063725.P12741089044414848106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063776.P939957080839248717

`∑{d}[n+1, A059841(#-1)*A064355((n+1)/#)]`
-/

namespace A063776.P939957080839248717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A064355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063776.P939957080839248717

noncomputable section

/-- A063776: Number of subsets of {1,2,...,n} which sum to 0 modulo n.

Offset 1, canonical program `A063776.P939957080839248717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A063776 (n : ℕ) : ℤ :=
  A063776.P939957080839248717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A063776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064767.P3059737301395273929

`Δ[A002088(n)]*A011785(n+1)`
-/

namespace A064767.P3059737301395273929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011785 (n + 1)

end

end A064767.P3059737301395273929

noncomputable section

/-- A064767: Order of automorphism group of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A064767.P3059737301395273929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064767 (n : ℕ) : ℤ :=
  A064767.P3059737301395273929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065931.P6308883333468479651

`A000217(A094727(n+1))*A001498(n)`
-/

namespace A065931.P6308883333468479651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A094727 (n + 1)).toNat * A001498 n

end

end A065931.P6308883333468479651

noncomputable section

/-- A065931: Triangle of coefficients of Bessel polynomials {y_n(x)}'.

Offset 1, canonical program `A065931.P6308883333468479651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1827 terms. -/
def A065931 (n : ℕ) : ℤ :=
  A065931.P6308883333468479651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1827 terms. -/
def A065931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066656.P10645985252166079910

`A000031(n)-A001037(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066656.P10645985252166079910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A001037 n

end

end A066656.P10645985252166079910

noncomputable section

/-- A066656: a(n) = A000031(n) - A001037(n).

Offset 0, canonical program `A066656.P10645985252166079910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066656 (n : ℕ) : ℤ :=
  A066656.P10645985252166079910.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068719.P2366540382688133709

`A319684(2*(n+1))-A319683(2*(n+1))`
-/

namespace A068719.P2366540382688133709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (2 * (n + 1)) - A319683 (2 * (n + 1))

end

end A068719.P2366540382688133709

noncomputable section

/-- A068719: Arithmetic derivative of even numbers: a(n) = n+2*A003415(n).

Offset 1, canonical program `A068719.P2366540382688133709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068719 (n : ℕ) : ℤ :=
  A068719.P2366540382688133709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070176.P12484260426223726726

`A166687(∑[char[A166687(n+1)]]+1)-(n+1)`
-/

namespace A070176.P12484260426223726726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)

end

end A070176.P12484260426223726726

noncomputable section

/-- A070176: Let s(n) be smallest number >= n which is a sum of two squares (A001481); sequence gives s(n) - n.

Offset 0, canonical program `A070176.P12484260426223726726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070176 (n : ℕ) : ℤ :=
  A070176.P12484260426223726726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070229.P5792893597916963980

`A028815(A061395(n+1))+n`
-/

namespace A070229.P5792893597916963980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A061395 (n + 1)).toNat + (n : ℤ)

end

end A070229.P5792893597916963980

noncomputable section

/-- A070229: Next m>n such that m is divisible by lpf(n), lpf=A006530 largest prime factor.

Offset 1, canonical program `A070229.P5792893597916963980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070229 (n : ℕ) : ℤ :=
  A070229.P5792893597916963980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070943.P14364430333234565674

`A000252(n+1)*A062354(n+1)`
-/

namespace A070943.P14364430333234565674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1) * A062354 (n + 1)

end

end A070943.P14364430333234565674

noncomputable section

/-- A070943: Commuting elements: number of ordered pairs g, h in the group GL(2,Z_n) such that gh = hg.

Offset 1, canonical program `A070943.P14364430333234565674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943 (n : ℕ) : ℤ :=
  A070943.P14364430333234565674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072438.P8372132607125939071

`∏{d}[n+1, A392055(#)]`
-/

namespace A072438.P8372132607125939071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A392055 d

end

end A072438.P8372132607125939071

noncomputable section

/-- A072438: Remove prime factors of form 4*k+1.

Offset 1, canonical program `A072438.P8372132607125939071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072438 (n : ℕ) : ℤ :=
  A072438.P8372132607125939071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073675.P5905341681042066843

`A065883(2*(n+1))*A234957(n+1)`
-/

namespace A073675.P5905341681042066843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (2 * (n + 1)) * A234957 (n + 1)

end

end A073675.P5905341681042066843

noncomputable section

/-- A073675: Rearrangement of natural numbers such that a(n) is the smallest proper divisor of n not included earlier but if no such divisor exists then a(n) is the smallest proper multiple of n not included earlier, subject always to the condition that a(n) is not equal to n.

Offset 1, canonical program `A073675.P5905341681042066843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073675 (n : ℕ) : ℤ :=
  A073675.P5905341681042066843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077478.P13653691619814893632

`∏{e}[A003989(n+1), #+1]`
-/

namespace A077478.P13653691619814893632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077478.P13653691619814893632

noncomputable section

/-- A077478: Rectangular array R read by antidiagonals: R(i,j) is the number of integers k that divide both i and j (i >= 1, j >= 1).

Offset 1, canonical program `A077478.P13653691619814893632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077478 (n : ℕ) : ℤ :=
  (A077478.P13653691619814893632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077770.P15877172202221039210

`Δ[A000328(n)-A349538(n)]`
-/

namespace A077770.P15877172202221039210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A349538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077770.P15877172202221039210

noncomputable section

/-- A077770: Number of ordered pairs of integers (x,y) with n^2 < x^2 + y^2 < (n+1)^2; number of lattice points between circles of radii n and n+1.

Offset 0, canonical program `A077770.P15877172202221039210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2475 terms. -/
def A077770 (n : ℕ) : ℤ :=
  A077770.P15877172202221039210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2475 terms. -/
def A077770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083911.P7693470357739100101

`A001876(A000265(n+1))`
-/

namespace A083911.P7693470357739100101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A000265 (n + 1)).toNat

end

end A083911.P7693470357739100101

noncomputable section

/-- A083911: Number of divisors of n that are congruent to 1 modulo 10.

Offset 1, canonical program `A083911.P7693470357739100101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083911 (n : ℕ) : ℤ :=
  A083911.P7693470357739100101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083913.P9028729068411083889

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083913.P9028729068411083889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083913.P9028729068411083889

noncomputable section

/-- A083913: Number of divisors of n that are congruent to 3 modulo 10.

Offset 1, canonical program `A083913.P9028729068411083889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913 (n : ℕ) : ℤ :=
  A083913.P9028729068411083889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085357.P3258697467278337073

`A008966(A005940(1+n))`
-/

namespace A085357.P3258697467278337073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A005940 (1 + n)).toNat

end

end A085357.P3258697467278337073

noncomputable section

/-- A085357: Common residues of binomial(3n,n)/(2n+1) modulo 2: relates ternary trees (A001764) to the infinite Fibonacci word (A003849).

Offset 0, canonical program `A085357.P3258697467278337073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085357 (n : ℕ) : ℤ :=
  A085357.P3258697467278337073.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085731.P8528371143439502418

`gcd(A068719(n+1), A073675(n+1))`
-/

namespace A085731.P8528371143439502418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068719 (n + 1)) (A073675 (n + 1))

end

end A085731.P8528371143439502418

noncomputable section

/-- A085731: Greatest common divisor of n and its arithmetic derivative.

Offset 1, canonical program `A085731.P8528371143439502418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085731 (n : ℕ) : ℤ :=
  (A085731.P8528371143439502418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091696.P489980825638931010

`A059076(n+1)+A052955(n)`
-/

namespace A091696.P489980825638931010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + A052955 n

end

end A091696.P489980825638931010

noncomputable section

/-- A091696: Number of classes of compositions of n equivalent under reflection or cycling.

Offset 1, canonical program `A091696.P489980825638931010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A091696 (n : ℕ) : ℤ :=
  A091696.P489980825638931010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A091696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096010.P4903496547079153273

`A063776(n+1)/2+1`
-/

namespace A096010.P4903496547079153273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (n + 1) : ℚ) / 2 + 1

end

end A096010.P4903496547079153273

noncomputable section

/-- A096010: Number of different cycles computed with the generalized 3x+1 problem using C=2, B=Cn+m, A=C^m.

Offset 1, canonical program `A096010.P4903496547079153273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A096010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096010.P4903496547079153273.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A096010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096281.P9870488552655544131

`A014574(A008619(n+1))+A014574(A008619(n))`
-/

namespace A096281.P9870488552655544131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A008619 (n + 1)).toNat + A014574 (A008619 n).toNat

end

end A096281.P9870488552655544131

noncomputable section

/-- A096281: Sums of successive twin primes of order 1.

Offset 1, canonical program `A096281.P9870488552655544131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096281 (n : ℕ) : ℤ :=
  A096281.P9870488552655544131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097269.P5694133736295637479

`8*A020756(n+1)+2`
-/

namespace A097269.P5694133736295637479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A020756 (n + 1) + 2

end

end A097269.P5694133736295637479

noncomputable section

/-- A097269: Numbers that are the sum of two nonzero squares but not the difference of two nonzero squares.

Offset 1, canonical program `A097269.P5694133736295637479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097269 (n : ℕ) : ℤ :=
  A097269.P5694133736295637479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098365.P15550866543655754186

`∑[17*A256435(n+1)]`
-/

namespace A098365.P15550866543655754186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A256435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098365.P15550866543655754186

noncomputable section

/-- A098365: Sums of two squares and divisible by 17.

Offset 1, canonical program `A098365.P15550866543655754186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098365 (n : ℕ) : ℤ :=
  A098365.P15550866543655754186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099545.P3555190586653278803

`A010873(A000265(n+1))`
-/

namespace A099545.P3555190586653278803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000265 (n + 1)).toNat

end

end A099545.P3555190586653278803

noncomputable section

/-- A099545: Odd part of n, modulo 4.

Offset 1, canonical program `A099545.P3555190586653278803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099545 (n : ℕ) : ℤ :=
  A099545.P3555190586653278803.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099545.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100449.P13498763257578754956

`1+4*A002088(n)`
-/

namespace A100449.P13498763257578754956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A002088 n

end

end A100449.P13498763257578754956

noncomputable section

/-- A100449: Number of ordered pairs (i,j) with |i| + |j| <= n and gcd(i,j) <= 1.

Offset 0, canonical program `A100449.P13498763257578754956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100449 (n : ℕ) : ℤ :=
  A100449.P13498763257578754956.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106737.P18148642187660912627

`A000005(A005940(1+n))`
-/

namespace A106737.P18148642187660912627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005940 (1 + n)).toNat

end

end A106737.P18148642187660912627

noncomputable section

/-- A106737: a(n) = Sum_{k=0..n} ({binomial(n+k,n-k)*binomial(n,k)} mod 2).

Offset 0, canonical program `A106737.P18148642187660912627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106737 (n : ℕ) : ℤ :=
  A106737.P18148642187660912627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106737.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111123.P4994184408905448114

`A001083(n+4)-A001083(n+3)`
-/

namespace A111123.P4994184408905448114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 4) - A001083 (n + 3)

end

end A111123.P4994184408905448114

noncomputable section

/-- A111123: Number of 2's in n-th "Kolakoski" string defined in A054349.

Offset 0, canonical program `A111123.P4994184408905448114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123 (n : ℕ) : ℤ :=
  A111123.P4994184408905448114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114699.P8287388229855982445

`A000799(n+1)-A064355(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114699.P8287388229855982445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A064355 (n + 1)

end

end A114699.P8287388229855982445

noncomputable section

/-- A114699: A000799(n) - A064355(n).

Offset 0, canonical program `A114699.P8287388229855982445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000799, A064355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114699 (n : ℕ) : ℤ :=
  A114699.P8287388229855982445.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000799, A064355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115226.P2780584315718374276

`A064767(n+1)/A000056(n+1)`
-/

namespace A115226.P2780584315718374276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ)

end

end A115226.P2780584315718374276

noncomputable section

/-- A115226: Order of the group of invertible 3 X 3 symmetric matrices over Z(n).

Offset 1, canonical program `A115226.P2780584315718374276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A064767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115226.P2780584315718374276.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A064767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120389.P9934020293201342363

`A053683(n+1)-1`
-/

namespace A120389.P9934020293201342363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 1) - 1

end

end A120389.P9934020293201342363

noncomputable section

/-- A120389: a(n) is such that the a(n)-th composite number is (n-th prime)^2.

Offset 1, canonical program `A120389.P9934020293201342363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120389 (n : ℕ) : ℤ :=
  A120389.P9934020293201342363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129950.P15295767996041627134

`2*A164292(n+1)-A010051(n+1)`
-/

namespace A129950.P15295767996041627134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164292 (n + 1) - A010051 (n + 1)

end

end A129950.P15295767996041627134

noncomputable section

/-- A129950: Indicator function of twin primes: 1 if n is a twin prime member, 0 if not prime, -1 else (isolated prime or 2).

Offset 1, canonical program `A129950.P15295767996041627134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A164292, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129950 (n : ℕ) : ℤ :=
  A129950.P15295767996041627134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A164292, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130446.P13627366910175115370

`A111123(C(floor((n+1)/2), 64))+n`
-/

namespace A130446.P13627366910175115370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 (Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 64) + (n : ℤ)

end

end A130446.P13627366910175115370

noncomputable section

/-- A130446: Integers in [1, 425] expressible as a difference of the terms of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130446.P13627366910175115370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446 (n : ℕ) : ℤ :=
  A130446.P13627366910175115370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132740.P14773751524268080553

`A000265((n+1)/A060904(n+1))`
-/

namespace A132740.P14773751524268080553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A132740.P14773751524268080553

noncomputable section

/-- A132740: Largest divisor of n coprime to 10.

Offset 1, canonical program `A132740.P14773751524268080553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132740 (n : ℕ) : ℤ :=
  A132740.P14773751524268080553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132971.P9197609016375066540

`A085357(n)*A106400(n)`
-/

namespace A132971.P9197609016375066540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n * A106400 n

end

end A132971.P9197609016375066540

noncomputable section

/-- A132971: a(2*n) = a(n), a(4*n+1) = -a(n), a(4*n+3) = 0, with a(0) = 1.

Offset 0, canonical program `A132971.P9197609016375066540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132971 (n : ℕ) : ℤ :=
  A132971.P9197609016375066540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133670.P186027561368392954

`∑[A063776(A233583(n+1))/2]`
-/

namespace A133670.P186027561368392954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (A233583 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133670.P186027561368392954

noncomputable section

/-- A133670: Partial sums of A000016.

Offset 0, canonical program `A133670.P186027561368392954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133670.P186027561368392954.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A133670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135785.P11510960012154170062

`∪[A000430(n+1), A037074(n+1)]`
-/

namespace A135785.P11510960012154170062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135785.P11510960012154170062

noncomputable section

/-- A135785: Union of A000040, A001248 and A037074.

Offset 1, canonical program `A135785.P11510960012154170062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135785 (n : ℕ) : ℤ :=
  (A135785.P11510960012154170062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137794.P4088568533380436255

`A287170(n+1)!%2`
-/

namespace A137794.P4088568533380436255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287170 (n + 1)).toNat % 2

end

end A137794.P4088568533380436255

noncomputable section

/-- A137794: Characteristic function of numbers having no prime gaps in their factorization.

Offset 1, canonical program `A137794.P4088568533380436255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794 (n : ℕ) : ℤ :=
  (A137794.P4088568533380436255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140213.P4834195896681918348

`∏{d}[A000265(n+1), A000265(A078689(#))]`
-/

namespace A140213.P4834195896681918348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000265 (A078689 d).toNat

end

end A140213.P4834195896681918348

noncomputable section

/-- A140213: Product_{h|n and h mod 6 = 1} h; product of divisors of n of the form 6*k + 1.

Offset 1, canonical program `A140213.P4834195896681918348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140213 (n : ℕ) : ℤ :=
  A140213.P4834195896681918348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156242.P9698129666356527585

`A156243(n+1)+A100429(n+1)`
-/

namespace A156242.P9698129666356527585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + A100429 (n + 1)

end

end A156242.P9698129666356527585

noncomputable section

/-- A156242: Bisection of A054353.

Offset 1, canonical program `A156242.P9698129666356527585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156242 (n : ℕ) : ℤ :=
  A156242.P9698129666356527585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165621.P2440575893113926756

`2*A061554(n)-A335322(n+1)`
-/

namespace A165621.P2440575893113926756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061554 n - A335322 (n + 1)

end

end A165621.P2440575893113926756

noncomputable section

/-- A165621: Riordan array (c(x^2)*(1+xc(x^2)), xc(x^2)).

Offset 0, canonical program `A165621.P2440575893113926756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165621 (n : ℕ) : ℤ :=
  A165621.P2440575893113926756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166527.P3407768485719253100

`eq[1, A077478(n+1)]+1`
-/

namespace A166527.P3407768485719253100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166527.P3407768485719253100

noncomputable section

/-- A166527: Complement of A076537.

Offset 1, canonical program `A166527.P3407768485719253100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527 (n : ℕ) : ℤ :=
  (A166527.P3407768485719253100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170818.P6502870037101137272

`A000265((n+1)/A097706(n+1))`
-/

namespace A170818.P6502870037101137272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A170818.P6502870037101137272

noncomputable section

/-- A170818: a(n) is the product of primes (with multiplicity) of form 4*k+1 that divide n.

Offset 1, canonical program `A170818.P6502870037101137272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170818 (n : ℕ) : ℤ :=
  A170818.P6502870037101137272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170824.P11297377801870063513

`∏{p}[n+1, A140213(#)]`
-/

namespace A170824.P11297377801870063513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A140213 p

end

end A170824.P11297377801870063513

noncomputable section

/-- A170824: a(n) = product of distinct primes of form 6k+1 that divide n.

Offset 1, canonical program `A170824.P11297377801870063513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170824 (n : ℕ) : ℤ :=
  A170824.P11297377801870063513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172186.P17237444168487211502

`(A179017(n+1)-1)/2`
-/

namespace A172186.P17237444168487211502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179017 (n + 1) - 1 : ℚ) / 2

end

end A172186.P17237444168487211502

noncomputable section

/-- A172186: Numbers k such that k, k+1 and 2*k+1 are squarefree.

Offset 1, canonical program `A172186.P17237444168487211502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172186.P17237444168487211502.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188666.P9499919298409577918

`A000015(∑[n%2]+1)`
-/

namespace A188666.P9499919298409577918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188666.P9499919298409577918

noncomputable section

/-- A188666: Largest m <= n such that lcm(m, m+1, ..., n) = lcm(1, 2, ..., n).

Offset 1, canonical program `A188666.P9499919298409577918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188666 (n : ℕ) : ℤ :=
  A188666.P9499919298409577918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193800.P17352765723987985871

`(A379705(n+1)-(n+1))/2`
-/

namespace A193800.P17352765723987985871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379705 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A193800.P17352765723987985871

noncomputable section

/-- A193800: Least m > 0 such that (n+m)^2 - m^2 (= n^2 + 2*m*n) is a square.

Offset 1, canonical program `A193800.P17352765723987985871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193800.P17352765723987985871.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209278.P9064405990168728965

`A002260(A057028(n+1))`
-/

namespace A209278.P9064405990168728965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A057028 (n + 1)).toNat

end

end A209278.P9064405990168728965

noncomputable section

/-- A209278: Second inverse function (numbers of rows) for pairing function A185180.

Offset 1, canonical program `A209278.P9064405990168728965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209278 (n : ℕ) : ℤ :=
  A209278.P9064405990168728965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209970.P62417713944158277

`2^n-A000031(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209970.P62417713944158277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000031 n

end

end A209970.P62417713944158277

noncomputable section

/-- A209970: a(n) = 2^n - A000031(n).

Offset 0, canonical program `A209970.P62417713944158277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209970 (n : ℕ) : ℤ :=
  A209970.P62417713944158277.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214526.P1775941300151216315

`abs(A174344(n+1))+abs(A274923(n+1))`
-/

namespace A214526.P1775941300151216315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174344 (n + 1)| + |A274923 (n + 1)|

end

end A214526.P1775941300151216315

noncomputable section

/-- A214526: Manhattan distances between n and 1 in a square spiral with positive integers and 1 at the center.

Offset 1, canonical program `A214526.P1775941300151216315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174344, A274923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A214526 (n : ℕ) : ℤ :=
  A214526.P1775941300151216315.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174344, A274923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A214526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216282.P5463168406655024554

`A363037(n+1)-A374061(n+1)`
-/

namespace A216282.P5463168406655024554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A374061 (n + 1)

end

end A216282.P5463168406655024554

noncomputable section

/-- A216282: Number of nonnegative solutions to the equation x^2 + 2*y^2 = n.

Offset 1, canonical program `A216282.P5463168406655024554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216282 (n : ℕ) : ℤ :=
  A216282.P5463168406655024554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244154.P3337909700138725317

`ceil(A005940(2*n+1)/2)`
-/

namespace A244154.P3337909700138725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005940 (2 * n + 1) : ℚ) / 2⌉

end

end A244154.P3337909700138725317

noncomputable section

/-- A244154: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A254049(a(n)), a(2n+1) = 3*a(n)-1; composition of A048673 and A005940.

Offset 0, canonical program `A244154.P3337909700138725317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244154 (n : ℕ) : ℤ :=
  A244154.P3337909700138725317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246694.P8696891911788978763

`A209278(A204164(n+1)+A161680(n))`
-/

namespace A246694.P8696891911788978763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A204164 (n + 1) + A161680 n).toNat

end

end A246694.P8696891911788978763

noncomputable section

/-- A246694: Triangle read by rows: T(n,k) = T(n,k-2) + 1 if n > 1 and 2 <= k <= n; T(0,0) = 1, T(1,0) = 1, T(1,1) = 2; if n > 1 is odd, then T(n,0) = T(n-1,n-2) + 1 and T(n,1) = T(n-1,n-1) + 1; if n > 1 is even, then T(n,0) = T(n-1,n-1) + 1 and T(n,1) = T(n-1,n-2) + 1.

Offset 0, canonical program `A246694.P8696891911788978763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A246694 (n : ℕ) : ℤ :=
  A246694.P8696891911788978763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A246694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248909.P15195140989030119244

`gcd(A170824(n+1)²², A000217(n))`
-/

namespace A248909.P15195140989030119244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A170824 (n + 1) ^ 2) ^ 2) (A000217 n)

end

end A248909.P15195140989030119244

noncomputable section

/-- A248909: Completely multiplicative with a(p) = p if p = 6k+1 and a(p) = 1 otherwise.

Offset 1, canonical program `A248909.P15195140989030119244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248909 (n : ℕ) : ℤ :=
  (A248909.P15195140989030119244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251723.P8283630235415226138

`A054272(n+2)-A054272(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251723.P8283630235415226138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 2) - A054272 (n + 1)

end

end A251723.P8283630235415226138

noncomputable section

/-- A251723: First differences of A054272, A250473 and A250474: a(n) = A054272(n+1) - A054272(n).

Offset 1, canonical program `A251723.P8283630235415226138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251723 (n : ℕ) : ℤ :=
  A251723.P8283630235415226138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252464.P11274602121942962009

`A061395(n+1)+A252736(n+1)`
-/

namespace A252464.P11274602121942962009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + A252736 (n + 1)

end

end A252464.P11274602121942962009

noncomputable section

/-- A252464: a(1) = 0, a(2n) = 1 + a(n), a(2n+1) = 1 + a(A064989(2n+1)); also binary width of terms of A156552 and A243071.

Offset 1, canonical program `A252464.P11274602121942962009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A252736, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252464 (n : ℕ) : ℤ :=
  A252464.P11274602121942962009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A252736, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254733.P14404969716886412013

`A019555(n+1)+1+n`
-/

namespace A254733.P14404969716886412013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) + 1 + (n : ℤ)

end

end A254733.P14404969716886412013

noncomputable section

/-- A254733: a(n) is the least k > n such that n divides k^3.

Offset 1, canonical program `A254733.P14404969716886412013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254733 (n : ℕ) : ℤ :=
  A254733.P14404969716886412013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254734.P5864895102281337725

`A053166(n+1)+1+n`
-/

namespace A254734.P5864895102281337725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) + 1 + (n : ℤ)

end

end A254734.P5864895102281337725

noncomputable section

/-- A254734: a(n) is the least k > n such that n divides k^4.

Offset 1, canonical program `A254734.P5864895102281337725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A254734 (n : ℕ) : ℤ :=
  A254734.P5864895102281337725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A254734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258746.P2299638018967577583

`xor(n+1, A292600(A092323(n+1)))`
-/

namespace A258746.P2299638018967577583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A292600 (A092323 (n + 1)).toNat)

end

end A258746.P2299638018967577583

noncomputable section

/-- A258746: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A007305/A047679 (Stern-Brocot) into the enumeration system A162909/A162910 (Bird), and vice versa.

Offset 1, canonical program `A258746.P2299638018967577583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258746 (n : ℕ) : ℤ :=
  A258746.P2299638018967577583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275925.P1014596103965212206

`7-gcd(4, A003796(n+1))`
-/

namespace A275925.P1014596103965212206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Int.gcd 4 (A003796 (n + 1)) : ℤ)

end

end A275925.P1014596103965212206

noncomputable section

/-- A275925: Trajectory of 3 under repeated application of the morphism sigma: 3 -> 3656, 5 -> 365656, 6 -> 3656656.

Offset 1, canonical program `A275925.P1014596103965212206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275925 (n : ℕ) : ℤ :=
  A275925.P1014596103965212206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276791.P3840458042607645209

`C(3, A275925(n+1))`
-/

namespace A276791.P3840458042607645209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A275925 (n + 1)).toNat

end

end A276791.P3840458042607645209

noncomputable section

/-- A276791: Indicator function of (A003146 prefixed with 0).

Offset 0, canonical program `A276791.P3840458042607645209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276791 (n : ℕ) : ℤ :=
  (A276791.P3840458042607645209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297167.P13113550866660970867

`A252464(n+1)-A001221(n+1)`
-/

namespace A297167.P13113550866660970867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A001221 (n + 1)

end

end A297167.P13113550866660970867

noncomputable section

/-- A297167: a(1) = 0, for n > 1, a(n) = -1 + the excess of n (A046660) + the index of the largest prime factor (A061395).

Offset 1, canonical program `A297167.P13113550866660970867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A252464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297167 (n : ℕ) : ℤ :=
  A297167.P13113550866660970867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A252464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300251.P13750012435361977920

`∑{d}[n+1, A007427(#)*A319684((n+1)/#)]`
-/

namespace A300251.P13750012435361977920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P13750012435361977920

noncomputable section

/-- A300251: Möbius transform of arithmetic derivative (A003415).

Offset 1, canonical program `A300251.P13750012435361977920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251 (n : ℕ) : ℤ :=
  A300251.P13750012435361977920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305809.P1603223688838508842

`∑{d}[n+1, A300251(#)*A319684((n+1)/#)]`
-/

namespace A305809.P1603223688838508842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P1603223688838508842

noncomputable section

/-- A305809: Dirichlet convolution of A003415 (Arithmetic derivative) with itself.

Offset 1, canonical program `A305809.P1603223688838508842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809 (n : ℕ) : ℤ :=
  A305809.P1603223688838508842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309395.P9707816084324438001

`ceil((n+1)/A193800(n+1))-1`
-/

namespace A309395.P9707816084324438001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A193800 (n + 1) : ℚ)⌉ - 1

end

end A309395.P9707816084324438001

noncomputable section

/-- A309395: Number of integer-sided triangles with sides a,b,c, max(a,b) < c, a + c = n that are right triangles.

Offset 1, canonical program `A309395.P9707816084324438001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A309395 (n : ℕ) : ℤ :=
  A309395.P9707816084324438001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A309395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319442.P11992192506322077877

`A002265(A054584(n+1)*A054584(A248909(n+1)))`
-/

namespace A319442.P11992192506322077877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A054584 (n + 1) * A054584 (A248909 (n + 1)).toNat).toNat

end

end A319442.P11992192506322077877

noncomputable section

/-- A319442: Number of divisors of n over the Eisenstein integers.

Offset 1, canonical program `A319442.P11992192506322077877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319442 (n : ℕ) : ℤ :=
  A319442.P11992192506322077877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319997.P3728645225630001544

`A043529(n)*A349444(n+1)`
-/

namespace A319997.P3728645225630001544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A349444 (n + 1)

end

end A319997.P3728645225630001544

noncomputable section

/-- A319997: a(n) = Sum_{d|n, d is odd} mu(n/d)*d, where mu(n) is Moebius function A008683.

Offset 1, canonical program `A319997.P3728645225630001544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319997 (n : ℕ) : ℤ :=
  A319997.P3728645225630001544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319998.P4025482794031375230

`A000010(n+1)-A319997(n+1)`
-/

namespace A319998.P4025482794031375230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A319997 (n + 1)

end

end A319998.P4025482794031375230

noncomputable section

/-- A319998: a(n) = Sum_{d|n, d is even} mu(n/d)*d, where mu(n) is Moebius function A008683.

Offset 1, canonical program `A319998.P4025482794031375230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319998 (n : ℕ) : ℤ :=
  A319998.P4025482794031375230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325134.P8946370293622767949

`A252464(n+1)+1`
-/

namespace A325134.P8946370293622767949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + 1

end

end A325134.P8946370293622767949

noncomputable section

/-- A325134: a(1) = 1; a(n) = number of prime factors of n counted with multiplicity plus the largest prime index of n.

Offset 1, canonical program `A325134.P8946370293622767949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325134 (n : ℕ) : ℤ :=
  A325134.P8946370293622767949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327471.P11969612927539878657

`A000051(n)-A133670(n)`
-/

namespace A327471.P11969612927539878657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A133670 n

end

end A327471.P11969612927539878657

noncomputable section

/-- A327471: Number of subsets of {1..n} not containing their mean.

Offset 0, canonical program `A327471.P11969612927539878657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327471 (n : ℕ) : ℤ :=
  A327471.P11969612927539878657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327477.P17478202587199191785

`Δ[A327471(abs(1-n))]`
-/

namespace A327477.P17478202587199191785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327471 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327477.P17478202587199191785

noncomputable section

/-- A327477: Number of subsets of {1..n} containing n whose mean is not an element.

Offset 0, canonical program `A327477.P17478202587199191785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477 (n : ℕ) : ℤ :=
  A327477.P17478202587199191785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327570.P12500919374031446701

`A000010(n+1)*A002618(n+1)`
-/

namespace A327570.P12500919374031446701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A002618 (n + 1)

end

end A327570.P12500919374031446701

noncomputable section

/-- A327570: a(n) = n*phi(n)^2, phi = A000010.

Offset 1, canonical program `A327570.P12500919374031446701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327570 (n : ℕ) : ℤ :=
  A327570.P12500919374031446701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328901.P982208090738083972

`A059481(n)/gcd(A003056(n), A059481(n))`
-/

namespace A328901.P982208090738083972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059481 n : ℚ) / (Int.gcd (A003056 n) (A059481 n) : ℚ)

end

end A328901.P982208090738083972

noncomputable section

/-- A328901: Triangle T(n, k) read by rows: T(n, k) is the numerator of the rational Catalan number defined as binomial(n + k, n)/(n + k) for n > 0 and T(0, 0) = 1.

Offset 0, canonical program `A328901.P982208090738083972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328901.P982208090738083972.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331281.P996979535116224856

`A057427(C(A086436(n+1), A061395(n+1)))`
-/

namespace A331281.P996979535116224856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A086436 (n + 1)).toNat (A061395 (n + 1)).toNat)

end

end A331281.P996979535116224856

noncomputable section

/-- A331281: If A061395(n) <= A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331281.P996979535116224856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281 (n : ℕ) : ℤ :=
  A331281.P996979535116224856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333573.P2070379244315738537

`∪[A036698(n), A036711(n)]`
-/

namespace A333573.P2070379244315738537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036711 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333573.P2070379244315738537

noncomputable section

/-- A333573: a(n) = A333572(n)/4.

Offset 1, canonical program `A333573.P2070379244315738537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333573 (n : ℕ) : ℤ :=
  (A333573.P2070379244315738537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338432.P16966980610441652879

`A056203(n+1)-A098352(n+1)`
-/

namespace A338432.P16966980610441652879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) - A098352 (n + 1)

end

end A338432.P16966980610441652879

noncomputable section

/-- A338432: Triangle read by rows: T(n, k) = (n - k + 1)^2 + 2*k^2, for n >= 1, and k = 1, 2, ..., n.

Offset 1, canonical program `A338432.P16966980610441652879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338432 (n : ℕ) : ℤ :=
  A338432.P16966980610441652879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341629.P10620741224943255080

`A331281(∏{p}[n+1, #])`
-/

namespace A341629.P10620741224943255080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A341629.P10620741224943255080

noncomputable section

/-- A341629: Characteristic function of A055932: a(n) = 1 if n is a number all of whose prime divisors are consecutive primes starting at 2, otherwise 0.

Offset 1, canonical program `A341629.P10620741224943255080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341629 (n : ℕ) : ℤ :=
  A341629.P10620741224943255080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349137.P16480862393533510272

`A067541(A000265(n+1))`
-/

namespace A349137.P16480862393533510272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A000265 (n + 1)).toNat

end

end A349137.P16480862393533510272

noncomputable section

/-- A349137: a(n) = phi(A003602(n)), where A003602 is Kimberling's paraphrase of the binary number system, and phi is Euler totient function.

Offset 1, canonical program `A349137.P16480862393533510272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349137 (n : ℕ) : ℤ :=
  A349137.P16480862393533510272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353202.P16479654457777802616

`lt[A070176(n), 2]+1`
-/

namespace A353202.P16479654457777802616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353202.P16479654457777802616

noncomputable section

/-- A353202: Positive integers which can be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

Offset 1, canonical program `A353202.P16479654457777802616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202 (n : ℕ) : ℤ :=
  (A353202.P16479654457777802616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355263.P11720169353840914261

`A053150(n+1)*A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355263.P11720169353840914261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1) * A007947 (n + 1)

end

end A355263.P11720169353840914261

noncomputable section

/-- A355263: a(n) = largest-nth-power(n, 3) * radical(n) = A053150(n) * A007947(n), where the largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

Offset 1, canonical program `A355263.P11720169353840914261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A053150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355263 (n : ℕ) : ℤ :=
  A355263.P11720169353840914261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A053150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359552.P1693999533399603662

`C(A085731(n+1), n+1)`
-/

namespace A359552.P1693999533399603662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085731 (n + 1)).toNat (n + 1)

end

end A359552.P1693999533399603662

noncomputable section

/-- A359552: Multiplicative with a(p^e) = 1 if e == 0 mod p, otherwise 0.

Offset 1, canonical program `A359552.P1693999533399603662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552 (n : ℕ) : ℤ :=
  (A359552.P1693999533399603662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361148.P11997387026738742793

`A349137(Δ[n²])²²`
-/

namespace A361148.P11997387026738742793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A361148.P11997387026738742793

noncomputable section

/-- A361148: a(n) = phi(n)^4.

Offset 1, canonical program `A361148.P11997387026738742793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361148 (n : ℕ) : ℤ :=
  A361148.P11997387026738742793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364557.P16113127302810243144

`2^A297167(n+1)`
-/

namespace A364557.P16113127302810243144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A297167 (n + 1) : ℤ)

end

end A364557.P16113127302810243144

noncomputable section

/-- A364557: Möbius transform of A005941.

Offset 1, canonical program `A364557.P16113127302810243144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297167, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364557.P16113127302810243144.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297167, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365632.P6636790932743859901

`∑{d}[n+1, A359552(#)]`
-/

namespace A365632.P6636790932743859901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359552 d

end

end A365632.P6636790932743859901

noncomputable section

/-- A365632: The number of divisors of n that are terms of A072873.

Offset 1, canonical program `A365632.P6636790932743859901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365632 (n : ℕ) : ℤ :=
  A365632.P6636790932743859901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369008.P206606723966136315

`A085731(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369008.P206606723966136315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085731 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A369008.P206606723966136315

noncomputable section

/-- A369008: a(n) = A085731(n) / A003557(n).

Offset 1, canonical program `A369008.P206606723966136315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A085731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369008.P206606723966136315.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A085731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377780.P12783059637083081395

`Δ[A000015(n+1)]%(n+1)`
-/

namespace A377780.P12783059637083081395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A377780.P12783059637083081395

noncomputable section

/-- A377780: First differences of A000015 (smallest prime-power >= n).

Offset 1, canonical program `A377780.P12783059637083081395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A377780 (n : ℕ) : ℤ :=
  A377780.P12783059637083081395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A377780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378370.P12947003761999164007

`A000015(n+1)-(n+1)`
-/

namespace A378370.P12947003761999164007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - (n + 1 : ℤ)

end

end A378370.P12947003761999164007

noncomputable section

/-- A378370: Distance between n and the least prime power >= n, allowing 1.

Offset 1, canonical program `A378370.P12947003761999164007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378370 (n : ℕ) : ℤ :=
  A378370.P12947003761999164007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390754.P5128108036385649680

`A053191(A019555(n+1))`
-/

namespace A390754.P5128108036385649680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (A019555 (n + 1)).toNat

end

end A390754.P5128108036385649680

noncomputable section

/-- A390754: The Euler totient of the smallest cube divisible by n.

Offset 1, canonical program `A390754.P5128108036385649680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P5128108036385649680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000016.P4834367987804555054

`A096010(A000007(n)+n)-1`
-/

namespace A000016.P4834367987804555054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (A000007 n + (n : ℤ)).toNat - 1

end

end A000016.P4834367987804555054

noncomputable section

/-- A000016: a(n) is the number of distinct (infinite) output sequences from binary n-stage shift register which feeds back the complement of the last stage.

Offset 0, canonical program `A000016.P4834367987804555054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000016 (n : ℕ) : ℤ :=
  A000016.P4834367987804555054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000029.P13945956715463538310

`A059076(n)+A029744(n+1)`
-/

namespace A000029.P13945956715463538310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 n + A029744 (n + 1)

end

end A000029.P13945956715463538310

noncomputable section

/-- A000029: Number of necklaces with n beads of 2 colors, allowing turning over (these are also called bracelets).

Offset 0, canonical program `A000029.P13945956715463538310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000029 (n : ℕ) : ℤ :=
  A000029.P13945956715463538310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000114.P10789346743923345405

`A001766(n+2)/(n+2)`
-/

namespace A000114.P10789346743923345405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001766 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A000114.P10789346743923345405

noncomputable section

/-- A000114: Number of cusps of principal congruence subgroup Gamma^{hat}(n).

Offset 2, canonical program `A000114.P10789346743923345405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000114.P10789346743923345405.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000116.P1543949268755805293

`A056295(A004277(n))+1`
-/

namespace A000116.P1543949268755805293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (A004277 n).toNat + 1

end

end A000116.P1543949268755805293

noncomputable section

/-- A000116: Number of even sequences with period 2n (bisection of A000013).

Offset 0, canonical program `A000116.P1543949268755805293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000116 (n : ℕ) : ℤ :=
  A000116.P1543949268755805293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000161.P12733227588245460575

`ceil((A063725(n)+char[(n+1)²]+char[n²])/2)`
-/

namespace A000161.P12733227588245460575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) : ℚ) / 2⌉

end

end A000161.P12733227588245460575

noncomputable section

/-- A000161: Number of partitions of n into 2 squares.

Offset 0, canonical program `A000161.P12733227588245460575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161 (n : ℕ) : ℤ :=
  A000161.P12733227588245460575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000190.P2108716071587575808

`(n+1)/A053166(n+1)`
-/

namespace A000190.P2108716071587575808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053166 (n + 1) : ℚ)

end

end A000190.P2108716071587575808

noncomputable section

/-- A000190: Number of solutions to x^4 == 0 (mod n).

Offset 1, canonical program `A000190.P2108716071587575808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000190.P2108716071587575808.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000404.P2881668745635022014

`∪[A000415(n+1), A004431(n+1)]`
-/

namespace A000404.P2881668745635022014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P2881668745635022014

noncomputable section

/-- A000404: Numbers that are the sum of 2 nonzero squares.

Offset 1, canonical program `A000404.P2881668745635022014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404 (n : ℕ) : ℤ :=
  (A000404.P2881668745635022014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000443.P2477946098226311991

`eq[3, A000161(n)]`
-/

namespace A000443.P2477946098226311991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P2477946098226311991

noncomputable section

/-- A000443: Numbers that are the sum of 2 squares in exactly 3 ways.

Offset 1, canonical program `A000443.P2477946098226311991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A000443 (n : ℕ) : ℤ :=
  (A000443.P2477946098226311991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A000443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000742.P13490306228597101565

`Δ[A015627(n+3)+∑[∑[n]]]`
-/

namespace A000742.P13490306228597101565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015627 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000742.P13490306228597101565

noncomputable section

/-- A000742: Number of compositions of n into 4 ordered relatively prime parts.

Offset 4, canonical program `A000742.P13490306228597101565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742 (n : ℕ) : ℤ :=
  A000742.P13490306228597101565.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. -/
def A000742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000743.P6553726784885921065

`Δ[A015640(n+4)]`
-/

namespace A000743.P6553726784885921065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000743.P6553726784885921065

noncomputable section

/-- A000743: Number of compositions of n into 5 ordered relatively prime parts.

Offset 5, canonical program `A000743.P6553726784885921065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743 (n : ℕ) : ℤ :=
  A000743.P6553726784885921065.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A000743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000925.P15779309076395075492

`2*A000161(n)-A379480(n)`
-/

namespace A000925.P15779309076395075492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000161 n - A379480 n

end

end A000925.P15779309076395075492

noncomputable section

/-- A000925: Number of ordered ways of writing n as a sum of 2 squares of nonnegative integers.

Offset 0, canonical program `A000925.P15779309076395075492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000925 (n : ℕ) : ℤ :=
  A000925.P15779309076395075492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001392.P16410395510823087273

`∑[A026015(n+3)]`
-/

namespace A001392.P16410395510823087273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026015 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001392.P16410395510823087273

noncomputable section

/-- A001392: a(n) = 9*binomial(2n,n-4)/(n+5).

Offset 4, canonical program `A001392.P16410395510823087273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A001392 (n : ℕ) : ℤ :=
  A001392.P16410395510823087273.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A001392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003415.P9326043729983995739

`∑{d}[n, A300251(#)]`
-/

namespace A003415.P9326043729983995739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A003415.P9326043729983995739

noncomputable section

/-- A003415: a(n) = n' = arithmetic derivative of n: a(0) = a(1) = 0, a(prime) = 1, a(m*n) = m*a(n) + n*a(m).

Offset 0, canonical program `A003415.P9326043729983995739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003415 (n : ℕ) : ℤ :=
  A003415.P9326043729983995739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003519.P17675522830301751494

`A001392(n+5)-A003518(n+4)`
-/

namespace A003519.P17675522830301751494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001392 (n + 5) - A003518 (n + 4)

end

end A003519.P17675522830301751494

noncomputable section

/-- A003519: a(n) = 10*binomial(2*n + 1, n - 4)/(n + 6).

Offset 4, canonical program `A003519.P17675522830301751494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A003519 (n : ℕ) : ℤ :=
  A003519.P17675522830301751494.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A003519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003984.P8615453586607429040

`(A003056(n)+A049581(n))/2`
-/

namespace A003984.P8615453586607429040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n + A049581 n : ℚ) / 2

end

end A003984.P8615453586607429040

noncomputable section

/-- A003984: Table of max(x,y), where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

Offset 0, canonical program `A003984.P8615453586607429040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003984.P8615453586607429040.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004439.P13435589376260114249

`comp[A055096(n+2)-1]+1`
-/

namespace A004439.P13435589376260114249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004439.P13435589376260114249

noncomputable section

/-- A004439: Numbers that are not the sum of 2 distinct nonzero squares.

Offset 1, canonical program `A004439.P13435589376260114249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004439 (n : ℕ) : ℤ :=
  (A004439.P13435589376260114249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005941.P9595689460679922607

`∑{d}[n+1, A364557(#)]`
-/

namespace A005941.P9595689460679922607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A364557 d

end

end A005941.P9595689460679922607

noncomputable section

/-- A005941: Inverse of the Doudna sequence A005940.

Offset 1, canonical program `A005941.P9595689460679922607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A005941 (n : ℕ) : ℤ :=
  A005941.P9595689460679922607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A005941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006530.P13372528560459906635

`A070229(n+1)-(n+1)`
-/

namespace A006530.P13372528560459906635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (n + 1 : ℤ)

end

end A006530.P13372528560459906635

noncomputable section

/-- A006530: Gpf(n): greatest prime dividing n, for n >= 2; a(1)=1.

Offset 1, canonical program `A006530.P13372528560459906635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006530 (n : ℕ) : ℤ :=
  A006530.P13372528560459906635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008834.P17208951749117866926

`A053150(n+1)^3`
-/

namespace A008834.P17208951749117866926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1) ^ 3

end

end A008834.P17208951749117866926

noncomputable section

/-- A008834: Largest cube dividing n.

Offset 1, canonical program `A008834.P17208951749117866926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834 (n : ℕ) : ℤ :=
  A008834.P17208951749117866926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008835.P9834256045396494153

`A053167(A062379(n+1))`
-/

namespace A008835.P9834256045396494153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (A062379 (n + 1)).toNat

end

end A008835.P9834256045396494153

noncomputable section

/-- A008835: Largest 4th power dividing n.

Offset 1, canonical program `A008835.P9834256045396494153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008835 (n : ℕ) : ℤ :=
  A008835.P9834256045396494153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008965.P3100097894371980371

`A056295(n+1)+A000016(n+1)`
-/

namespace A008965.P3100097894371980371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (n + 1) + A000016 (n + 1)

end

end A008965.P3100097894371980371

noncomputable section

/-- A008965: Number of necklaces of sets of beads containing a total of n beads.

Offset 1, canonical program `A008965.P3100097894371980371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A008965 (n : ℕ) : ℤ :=
  A008965.P3100097894371980371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A008965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011260.P16571897072566913412

`A053287(n+1)/(n+1)`
-/

namespace A011260.P16571897072566913412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A011260.P16571897072566913412

noncomputable section

/-- A011260: Number of primitive polynomials of degree n over GF(2).

Offset 1, canonical program `A011260.P16571897072566913412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A011260 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011260.P16571897072566913412.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A011260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013947.P11385183315367073616

`∪[A156242(n+1)+1, A156243(n+1)]`
-/

namespace A013947.P11385183315367073616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013947.P11385183315367073616

noncomputable section

/-- A013947: Positions of 1's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013947.P11385183315367073616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947 (n : ℕ) : ℤ :=
  (A013947.P11385183315367073616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015053.P7212782911095139929

`A019555(A019554(n+1))`
-/

namespace A015053.P7212782911095139929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019554 (n + 1)).toNat

end

end A015053.P7212782911095139929

noncomputable section

/-- A015053: Smallest positive integer for which n divides a(n)^6.

Offset 1, canonical program `A015053.P7212782911095139929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015053 (n : ℕ) : ℤ :=
  A015053.P7212782911095139929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020652.P12873781580618070316

`A002260(A166527(n+1))`
-/

namespace A020652.P12873781580618070316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A166527 (n + 1)).toNat

end

end A020652.P12873781580618070316

noncomputable section

/-- A020652: Numerators in canonical bijection from positive integers to positive rationals.

Offset 1, canonical program `A020652.P12873781580618070316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652 (n : ℕ) : ℤ :=
  A020652.P12873781580618070316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020653.P13896194492571762582

`A038567(n+1)-A020652(n+1)`
-/

namespace A020653.P13896194492571762582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A020652 (n + 1)

end

end A020653.P13896194492571762582

noncomputable section

/-- A020653: Denominators in a certain bijection from positive integers to positive rationals.

Offset 1, canonical program `A020653.P13896194492571762582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653 (n : ℕ) : ℤ :=
  A020653.P13896194492571762582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025284.P7403956482281687192

`eq[1, ceil(A063725(n)/2)]`
-/

namespace A025284.P7403956482281687192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P7403956482281687192

noncomputable section

/-- A025284: Numbers that are the sum of 2 nonzero squares in exactly 1 way.

Offset 1, canonical program `A025284.P7403956482281687192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284 (n : ℕ) : ℤ :=
  (A025284.P7403956482281687192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025426.P9414248645359162695

`ceil(A063725(n)/2)`
-/

namespace A025426.P9414248645359162695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / 2⌉

end

end A025426.P9414248645359162695

noncomputable section

/-- A025426: Number of partitions of n into 2 nonzero squares.

Offset 0, canonical program `A025426.P9414248645359162695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025426 (n : ℕ) : ℤ :=
  A025426.P9414248645359162695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025435.P3024463487466648612

`A000161(n)-A010052(2*n)`
-/

namespace A025435.P3024463487466648612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - A010052 (2 * n)

end

end A025435.P3024463487466648612

noncomputable section

/-- A025435: Number of partitions of n into 2 distinct squares.

Offset 0, canonical program `A025435.P3024463487466648612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025435 (n : ℕ) : ℤ :=
  A025435.P3024463487466648612.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025441.P2356104381513953852

`A000161(n)-A093709(n)`
-/

namespace A025441.P2356104381513953852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - A093709 n

end

end A025441.P2356104381513953852

noncomputable section

/-- A025441: Number of partitions of n into 2 distinct nonzero squares.

Offset 0, canonical program `A025441.P2356104381513953852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A093709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025441 (n : ℕ) : ℤ :=
  A025441.P2356104381513953852.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A093709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026119.P15036635504786690639

`A056295(Δ[n²])+1`
-/

namespace A026119.P15036635504786690639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A026119.P15036635504786690639

noncomputable section

/-- A026119: Bisection of A000016 (also of A000013).

Offset 0, canonical program `A026119.P15036635504786690639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A026119 (n : ℕ) : ℤ :=
  A026119.P15036635504786690639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A026119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029079.P4491243665832951518

`A029187(abs(1-n))+A029187(n)`
-/

namespace A029079.P4491243665832951518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 |1 - (n : ℤ)|.toNat + A029187 n

end

end A029079.P4491243665832951518

noncomputable section

/-- A029079: Expansion of 1/((1-x)*(1-x^4)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029079.P4491243665832951518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029079 (n : ℕ) : ℤ :=
  A029079.P4491243665832951518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034947.P12901732433088194458

`2-A099545(n+1)`
-/

namespace A034947.P12901732433088194458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099545 (n + 1)

end

end A034947.P12901732433088194458

noncomputable section

/-- A034947: Jacobi (or Kronecker) symbol (-1/n).

Offset 1, canonical program `A034947.P12901732433088194458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034947 (n : ℕ) : ℤ :=
  A034947.P12901732433088194458.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037474.P6444879889403224104

`lt[A006530(A338881(n)), 6]`
-/

namespace A037474.P6444879889403224104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338881 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037474.P6444879889403224104

noncomputable section

/-- A037474: a(n) = Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is the base 7 representation of n.

Offset 0, canonical program `A037474.P6444879889403224104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037474 (n : ℕ) : ℤ :=
  (A037474.P6444879889403224104.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046854.P6336279902607506651

`A102426(A246694(n))`
-/

namespace A046854.P6336279902607506651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A246694 n).toNat

end

end A046854.P6336279902607506651

noncomputable section

/-- A046854: Triangle read by rows: T(n, k) = binomial(floor((n+k)/2), k), n >= k >= 0.

Offset 0, canonical program `A046854.P6336279902607506651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046854 (n : ℕ) : ℤ :=
  A046854.P6336279902607506651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047749.P16878488090282076310

`A328901(A213037(n+1))`
-/

namespace A047749.P16878488090282076310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328901 (A213037 (n + 1)).toNat

end

end A047749.P16878488090282076310

noncomputable section

/-- A047749: If n = 2*m then a(n) = binomial(3*m, m)/(2*m+1), if n=2*m+1 then a(n) = binomial(3*m+1, m+1)/(2*m+1).

Offset 0, canonical program `A047749.P16878488090282076310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A047749 (n : ℕ) : ℤ :=
  A047749.P16878488090282076310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A047749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050216.P18243411776574111140

`A251723(A028310(n))+1`
-/

namespace A050216.P18243411776574111140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A028310 n).toNat + 1

end

end A050216.P18243411776574111140

noncomputable section

/-- A050216: Number of primes between (prime(n))^2 and (prime(n+1))^2, with a(0) = 2 by convention.

Offset 0, canonical program `A050216.P18243411776574111140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A050216 (n : ℕ) : ℤ :=
  A050216.P18243411776574111140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A050216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052823.P12858488528447412848

`A008965(A028310(n))-1`
-/

namespace A052823.P12858488528447412848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (A028310 n).toNat - 1

end

end A052823.P12858488528447412848

noncomputable section

/-- A052823: A simple grammar: cycles of pairs of sequences.

Offset 0, canonical program `A052823.P12858488528447412848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052823 (n : ℕ) : ℤ :=
  A052823.P12858488528447412848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053121.P10596287014634708780

`lcm(A165621(n), A369736(n))`
-/

namespace A053121.P10596287014634708780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165621 n) (A369736 n)

end

end A053121.P10596287014634708780

noncomputable section

/-- A053121: Catalan triangle (with 0's) read by rows.

Offset 0, canonical program `A053121.P10596287014634708780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053121 (n : ℕ) : ℤ :=
  (A053121.P10596287014634708780.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053164.P6072530198200345480

`A008835(n+1)^(1/4)`
-/

namespace A053164.P6072530198200345480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008835 (n + 1) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A053164.P6072530198200345480

noncomputable section

/-- A053164: 4th root of largest 4th power dividing n.

Offset 1, canonical program `A053164.P6072530198200345480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053164 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053164.P6072530198200345480.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054155.P7253950207557350807

`∑{d}[n+1, A000029(#-1)]`
-/

namespace A054155.P7253950207557350807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000029 (d - 1)

end

end A054155.P7253950207557350807

noncomputable section

/-- A054155: Inverse Moebius transform of A000029 (starting at term 0).

Offset 0, canonical program `A054155.P7253950207557350807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054155 (n : ℕ) : ℤ :=
  A054155.P7253950207557350807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A054155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054539.P18146575541717922731

`A000016(n+3)/2`
-/

namespace A054539.P18146575541717922731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000016 (n + 3) : ℚ) / 2

end

end A054539.P18146575541717922731

noncomputable section

/-- A054539: A000016 / 2.

Offset 3, canonical program `A054539.P18146575541717922731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A054539 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054539.P18146575541717922731.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A054539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056536.P15475188742304027796

`A091995(A056537(A091995(n+1)))`
-/

namespace A056536.P15475188742304027796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (A056537 (A091995 (n + 1)).toNat).toNat

end

end A056536.P15475188742304027796

noncomputable section

/-- A056536: Mapping from half-antidiagonal reading of the triangle (as used in A028297) to the column-by-column reading of the triangular tables.

Offset 1, canonical program `A056536.P15475188742304027796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A056536 (n : ℕ) : ℤ :=
  A056536.P15475188742304027796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A056536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057653.P8862115344835850100

`A097269(n+1)/2`
-/

namespace A057653.P8862115344835850100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097269 (n + 1) : ℚ) / 2

end

end A057653.P8862115344835850100

noncomputable section

/-- A057653: Odd numbers of form x^2 + y^2.

Offset 1, canonical program `A057653.P8862115344835850100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057653 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057653.P8862115344835850100.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063014.P2435970929241132637

`A000161(n²)`
-/

namespace A063014.P2435970929241132637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (n ^ 2)

end

end A063014.P2435970929241132637

noncomputable section

/-- A063014: Number of solutions to n^2 = b^2 + c^2 (with c >= b >= 0).

Offset 0, canonical program `A063014.P2435970929241132637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063014 (n : ℕ) : ℤ :=
  A063014.P2435970929241132637.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066311.P18093835353172043603

`eq[1, A137794(n+2)]+2`
-/

namespace A066311.P18093835353172043603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066311.P18093835353172043603

noncomputable section

/-- A066311: All distinct primes dividing n are consecutive.

Offset 1, canonical program `A066311.P18093835353172043603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5656 terms. -/
def A066311 (n : ℕ) : ℤ :=
  (A066311.P18093835353172043603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5656 terms. -/
def A066311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070204.P13892288922647958106

`A000035(n)*A309395(A000189(n+1))`
-/

namespace A070204.P13892288922647958106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A309395 (A000189 (n + 1)).toNat

end

end A070204.P13892288922647958106

noncomputable section

/-- A070204: Number of isosceles integer triangles with perimeter n having integral inradius.

Offset 1, canonical program `A070204.P13892288922647958106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070204 (n : ℕ) : ℤ :=
  A070204.P13892288922647958106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073491.P6445803315451258056

`∪[A066311(n+1), A017284(n)]`
-/

namespace A073491.P6445803315451258056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073491.P6445803315451258056

noncomputable section

/-- A073491: Numbers having no prime gaps in their factorization.

Offset 1, canonical program `A073491.P6445803315451258056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073491 (n : ℕ) : ℤ :=
  (A073491.P6445803315451258056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077800.P16009445446139691322

`A096281(n)-a(n-1)` with `a(0)=3`
-/

namespace A077800.P16009445446139691322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A096281 n - a (n - 1)

end

end A077800.P16009445446139691322

noncomputable section

/-- A077800: List of twin primes {p, p+2}.

Offset 1, canonical program `A077800.P16009445446139691322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077800 (n : ℕ) : ℤ :=
  A077800.P16009445446139691322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078649.P18369770188371927822

`comp[A013947(n+1)-1]+1+n`
-/

namespace A078649.P18369770188371927822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A078649.P18369770188371927822

noncomputable section

/-- A078649: Numbers n such that A000002(n)=A000002(n+1) where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A078649.P18369770188371927822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649 (n : ℕ) : ℤ :=
  (A078649.P18369770188371927822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081061.P11142281922485975947

`filter[A073491(n+1), A340363(#)]`
-/

namespace A081061.P11142281922485975947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A081061.P11142281922485975947

noncomputable section

/-- A081061: Union of 3-smooth numbers and prime powers.

Offset 1, canonical program `A081061.P11142281922485975947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A081061 (n : ℕ) : ℤ :=
  A081061.P11142281922485975947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A081061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081324.P12063373289040437378

`2*eq[1, A063014(n)]²`
-/

namespace A081324.P12063373289040437378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A081324.P12063373289040437378

noncomputable section

/-- A081324: Twice a square but not the sum of 2 distinct squares.

Offset 1, canonical program `A081324.P12063373289040437378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A081324 (n : ℕ) : ℤ :=
  (A081324.P12063373289040437378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A081324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083346.P12627612333518549643

`(n+1)/A085731(n+1)`
-/

namespace A083346.P12627612333518549643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083346.P12627612333518549643

noncomputable section

/-- A083346: Denominator of r(n) = Sum(e/p: n=Product(p^e)).

Offset 1, canonical program `A083346.P12627612333518549643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083346.P12627612333518549643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085989.P6990637171742697713

`lt[A010052(n-A025426(n)), A025426(n)]`
-/

namespace A085989.P6990637171742697713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A025426 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P6990637171742697713

noncomputable section

/-- A085989: Numbers that can be expressed as a sum of two squares, each >=2.

Offset 1, canonical program `A085989.P6990637171742697713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A085989 (n : ℕ) : ℤ :=
  (A085989.P6990637171742697713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A085989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091018.P2259398009619809425

`A056536(n+1)-1`
-/

namespace A091018.P2259398009619809425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (n + 1) - 1

end

end A091018.P2259398009619809425

noncomputable section

/-- A091018: Numbers in n-th upward diagonal of triangle T : 0; 1, 2; 3, 4, 5; 6, 7, 8, 9; ...

Offset 0, canonical program `A091018.P2259398009619809425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091018 (n : ℕ) : ℤ :=
  A091018.P2259398009619809425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093074.P9471661206475887899

`A006530((n+2)*A006530(A060798(n+1)))`
-/

namespace A093074.P9471661206475887899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A006530 (A060798 (n + 1)).toNat).toNat

end

end A093074.P9471661206475887899

noncomputable section

/-- A093074: Greatest prime factor of n and its direct neighbors.

Offset 1, canonical program `A093074.P9471661206475887899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A093074 (n : ℕ) : ℤ :=
  A093074.P9471661206475887899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A093074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097268.P6222232716503931075

`filter[A000404(n+1), A152822(#)]`
-/

namespace A097268.P6222232716503931075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A097268.P6222232716503931075

noncomputable section

/-- A097268: Numbers that are both the sum of two nonzero squares and the difference of two nonzero squares.

Offset 1, canonical program `A097268.P6222232716503931075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A097268 (n : ℕ) : ℤ :=
  A097268.P6222232716503931075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A097268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100447.P9647154493003985025

`2*A026119(n)`
-/

namespace A100447.P9647154493003985025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026119 n

end

end A100447.P9647154493003985025

noncomputable section

/-- A100447: Bisection of A000031.

Offset 0, canonical program `A100447.P9647154493003985025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447 (n : ℕ) : ℤ :=
  A100447.P9647154493003985025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100829.P18026693143017884367

`A000404(eq[1, gcd(17, A000404(n+1))]+1)`
-/

namespace A100829.P18026693143017884367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 17 (A000404 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A100829.P18026693143017884367

noncomputable section

/-- A100829: Numbers that are a sum of two nonzero squares and not divisible by 17.

Offset 1, canonical program `A100829.P18026693143017884367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9279 terms. -/
def A100829 (n : ℕ) : ℤ :=
  A100829.P18026693143017884367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9279 terms. -/
def A100829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116637.P550715832201764144

`A036453(n+1)*A047749(n)`
-/

namespace A116637.P550715832201764144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A047749 n

end

end A116637.P550715832201764144

noncomputable section

/-- A116637: G.f. satisfies: A(x) = x/series_reversion(x/G(x)) where A(x) + A(-x) = 2*G(x^2) and G(x) is the g.f. of A046646.

Offset 0, canonical program `A116637.P550715832201764144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A116637 (n : ℕ) : ℤ :=
  A116637.P550715832201764144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A116637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135784.P13080440240153393537

`A000404(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135784.P13080440240153393537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 2

end

end A135784.P13080440240153393537

noncomputable section

/-- A135784: a(n) = A000404(n)^2.

Offset 1, canonical program `A135784.P13080440240153393537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135784 (n : ℕ) : ℤ :=
  A135784.P13080440240153393537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135786.P18159718606420573415

`A000404(n+1)^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135786.P18159718606420573415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 4

end

end A135786.P18159718606420573415

noncomputable section

/-- A135786: a(n) = A000404(n)^4.

Offset 1, canonical program `A135786.P18159718606420573415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135786 (n : ℕ) : ℤ :=
  A135786.P18159718606420573415.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135787.P5356217202802632134

`A000404(n+1)^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135787.P5356217202802632134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 5

end

end A135787.P5356217202802632134

noncomputable section

/-- A135787: a(n) = A000404(n)^5.

Offset 1, canonical program `A135787.P5356217202802632134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135787 (n : ℕ) : ℤ :=
  A135787.P5356217202802632134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135788.P18286084477707124522

`A000404(n+1)^6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135788.P18286084477707124522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 6

end

end A135788.P18286084477707124522

noncomputable section

/-- A135788: a(n) = A000404(n)^6.

Offset 1, canonical program `A135788.P18286084477707124522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135788 (n : ℕ) : ℤ :=
  A135788.P18286084477707124522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143574.P6219052309077414937

`n/2*A000925(n)`
-/

namespace A143574.P6219052309077414937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000925 n : ℚ)

end

end A143574.P6219052309077414937

noncomputable section

/-- A143574: Sum of all distinct squares occurring when partitioning n into two squares.

Offset 0, canonical program `A143574.P6219052309077414937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143574 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143574.P6219052309077414937.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154777.P4882271636205647765

`eq[1, char[A338432(n+1)]]`
-/

namespace A154777.P4882271636205647765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338432 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154777.P4882271636205647765

noncomputable section

/-- A154777: Numbers of the form x^2 + 2*y^2 with positive integers x and y.

Offset 1, canonical program `A154777.P4882271636205647765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3070 terms. -/
def A154777 (n : ℕ) : ℤ :=
  (A154777.P4882271636205647765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3070 terms. -/
def A154777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156552.P4268073137713085227

`A005941(n+1)-1`
-/

namespace A156552.P4268073137713085227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - 1

end

end A156552.P4268073137713085227

noncomputable section

/-- A156552: Unary-encoded compressed factorization of natural numbers.

Offset 1, canonical program `A156552.P4268073137713085227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005941, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156552 (n : ℕ) : ℤ :=
  A156552.P4268073137713085227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005941, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166265.P12558758465814392092

`A000404(n+1)+1`
-/

namespace A166265.P12558758465814392092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) + 1

end

end A166265.P12558758465814392092

noncomputable section

/-- A166265: Numbers of the form 1+x^2+y^2, x, y integers >= 1.

Offset 1, canonical program `A166265.P12558758465814392092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166265 (n : ℕ) : ℤ :=
  A166265.P12558758465814392092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191218.P4909588505082131463

`filter[A057653(n+1), A358678(#)]`
-/

namespace A191218.P4909588505082131463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A191218.P4909588505082131463

noncomputable section

/-- A191218: Odd numbers n such that sigma(n) is congruent to 2 modulo 4.

Offset 1, canonical program `A191218.P4909588505082131463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A191218 (n : ℕ) : ℤ :=
  A191218.P4909588505082131463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A191218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192015.P4229160100283672966

`A003415(A000961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192015.P4229160100283672966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000961 (n + 1)).toNat

end

end A192015.P4229160100283672966

noncomputable section

/-- A192015: Arithmetic derivative of prime powers: a(n) = A003415(A000961(n)).

Offset 1, canonical program `A192015.P4229160100283672966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192015 (n : ℕ) : ℤ :=
  A192015.P4229160100283672966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192134.P4831734951795111241

`A000961(n+1)-A192015(n+1)`
-/

namespace A192134.P4831734951795111241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A192015 (n + 1)

end

end A192134.P4831734951795111241

noncomputable section

/-- A192134: Difference between n-th prime power and its arithmetic derivative.

Offset 1, canonical program `A192134.P4831734951795111241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A192015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192134 (n : ℕ) : ℤ :=
  A192134.P4831734951795111241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A192015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230595.P9035268919760195541

`A008615(C(5, A305809(n+1)))`
-/

namespace A230595.P9035268919760195541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Nat.choose 5 (A305809 (n + 1)).toNat)

end

end A230595.P9035268919760195541

noncomputable section

/-- A230595: Number of ways to write n as n = x*y, where x and y are primes, 1 <= x <= n, 1 <= y <= n.

Offset 1, canonical program `A230595.P9035268919760195541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230595 (n : ℕ) : ℤ :=
  A230595.P9035268919760195541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245838.P16336548416415351114

`∑{d}[3*n+4, A300251(#)]`
-/

namespace A245838.P16336548416415351114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A245838.P16336548416415351114

noncomputable section

/-- A245838: Arithmetic derivative of (3*n + 1), n >= 1, (A016777)'.

Offset 1, canonical program `A245838.P16336548416415351114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245838 (n : ℕ) : ℤ :=
  A245838.P16336548416415351114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247367.P4275224030839815486

`A000196(n)+1-A000925(n)`
-/

namespace A247367.P4275224030839815486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (1 - A000925 n)

end

end A247367.P4275224030839815486

noncomputable section

/-- A247367: Number of ways to write n as a sum of a square and a nonsquare.

Offset 0, canonical program `A247367.P4275224030839815486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247367 (n : ℕ) : ℤ :=
  A247367.P4275224030839815486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258057.P7998122190271459586

`A003415(n+1)-A003415(n)`
-/

namespace A258057.P7998122190271459586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A003415 n

end

end A258057.P7998122190271459586

noncomputable section

/-- A258057: First differences of the arithmetic derivative sequence A003415.

Offset 0, canonical program `A258057.P7998122190271459586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258057 (n : ℕ) : ℤ :=
  A258057.P7998122190271459586.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262232.P26849987353357547

`A052823(n)-A004526(n)`
-/

namespace A262232.P26849987353357547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n - A004526 n

end

end A262232.P26849987353357547

noncomputable section

/-- A262232: Number of black and white n-bead necklaces with at least 3 white beads (turning over is not allowed); also number of clockwise arrangements of reflex and non-reflex angles that can form an n-gon.

Offset 0, canonical program `A262232.P26849987353357547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A262232 (n : ℕ) : ℤ :=
  A262232.P26849987353357547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A262232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263768.P15544365160536025506

`A054539(n+3)+A016116(n)-1`
-/

namespace A263768.P15544365160536025506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054539 (n + 3) + (A016116 n - 1)

end

end A263768.P15544365160536025506

noncomputable section

/-- A263768: Number of necklaces with n beads colored white or red, where the number of white beads is odd and at least three and turning over is allowed.

Offset 3, canonical program `A263768.P15544365160536025506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A263768 (n : ℕ) : ℤ :=
  A263768.P15544365160536025506.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A263768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333572.P17790517561337561290

`4*A333573(n+1)`
-/

namespace A333572.P17790517561337561290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A333573 (n + 1)

end

end A333572.P17790517561337561290

noncomputable section

/-- A333572: a(n) is the number of Gaussian integers z with 0 < |z| <= n/2.

Offset 1, canonical program `A333572.P17790517561337561290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333572 (n : ℕ) : ℤ :=
  A333572.P17790517561337561290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339273.P10031977836032368190

`4*A000404(n+1)`
-/

namespace A339273.P10031977836032368190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000404 (n + 1)

end

end A339273.P10031977836032368190

noncomputable section

/-- A339273: Sums of two nonzero even squares.

Offset 1, canonical program `A339273.P10031977836032368190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273 (n : ℕ) : ℤ :=
  A339273.P10031977836032368190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342001.P18261512935679556243

`∑[A258057(n)]/A003557(n+1)`
-/

namespace A342001.P18261512935679556243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342001.P18261512935679556243

noncomputable section

/-- A342001: Arithmetic derivative without its inherited divisor; the arithmetic derivative of n divided by A003557(n), which is a common divisor of both n and A003415(n).

Offset 1, canonical program `A342001.P18261512935679556243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342001.P18261512935679556243.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347954.P10515140487385531382

`∑{d}[n+1, A003602(#)*A342001((n+1)/#)]`
-/

namespace A347954.P10515140487385531382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347954.P10515140487385531382

noncomputable section

/-- A347954: Dirichlet convolution of A003602 with A342001.

Offset 1, canonical program `A347954.P10515140487385531382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347954 (n : ℕ) : ℤ :=
  A347954.P10515140487385531382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359551.P4733184215772970261

`∑{d}[n+1, A007427(#)*A365632((n+1)/#)]`
-/

namespace A359551.P4733184215772970261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A365632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359551.P4733184215772970261

noncomputable section

/-- A359551: Dirichlet inverse of A359550, which is multiplicative sequence with a(p^e) = 1 if e < p, otherwise 0.

Offset 1, canonical program `A359551.P4733184215772970261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551 (n : ℕ) : ℤ :=
  A359551.P4733184215772970261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381588.P6316090729294100752

`A005361(n+1)*A083346(n+1)`
-/

namespace A381588.P6316090729294100752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A083346 (n + 1)

end

end A381588.P6316090729294100752

noncomputable section

/-- A381588: If n = Product (p_j^k_j) then a(n) = Product (lcm(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381588.P6316090729294100752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588 (n : ℕ) : ℤ :=
  A381588.P6316090729294100752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390753.P837858288058759199

`A390754(n+1)/(A019555(n+1)*A019555(n+1))`
-/

namespace A390753.P837858288058759199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390754 (n + 1) : ℚ) / (A019555 (n + 1) * A019555 (n + 1) : ℚ)

end

end A390753.P837858288058759199

noncomputable section

/-- A390753: The Euler totient of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A390753.P837858288058759199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390753 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390753.P837858288058759199.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393562.P13338399434190979828

`A247367(n)+A000196(n)`
-/

namespace A393562.P13338399434190979828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 n + A000196 n

end

end A393562.P13338399434190979828

noncomputable section

/-- A393562: a(n) is the number of unit squares in the square lattice, divided by 4, that have at least one vertex strictly inside and at least one vertex strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393562.P13338399434190979828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393562 (n : ℕ) : ℤ :=
  A393562.P13338399434190979828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000020.P13856012455953723901

`A011260(n+1)+C(2, n+2)`
-/

namespace A000020.P13856012455953723901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A000020.P13856012455953723901

noncomputable section

/-- A000020: Number of primitive polynomials of degree n over GF(2) (version 2).

Offset 1, canonical program `A000020.P13856012455953723901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020 (n : ℕ) : ℤ :=
  A000020.P13856012455953723901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000589.P12166055581901707499

`A003519(n+5)-A001392(n+5)`
-/

namespace A000589.P12166055581901707499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003519 (n + 5) - A001392 (n + 5)

end

end A000589.P12166055581901707499

noncomputable section

/-- A000589: a(n) = 11*binomial(2n,n-5)/(n+6).

Offset 5, canonical program `A000589.P12166055581901707499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A000589 (n : ℕ) : ℤ :=
  A000589.P12166055581901707499.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A000589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000943.P14876099365519847051

`A263768(n+5)-(A004526(n)+2)`
-/

namespace A000943.P14876099365519847051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263768 (n + 5) - (A004526 n + 2)

end

end A000943.P14876099365519847051

noncomputable section

/-- A000943: Number of combinatorial types of simplicial n-dimensional polytopes with n+3 nodes.

Offset 1, canonical program `A000943.P14876099365519847051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A000943 (n : ℕ) : ℤ :=
  A000943.P14876099365519847051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A000943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001222.P17036940500499972134

`A000120(A156552(n+1))`
-/

namespace A001222.P17036940500499972134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A156552 (n + 1)).toNat

end

end A001222.P17036940500499972134

noncomputable section

/-- A001222: Number of prime divisors of n counted with multiplicity (also called big omega of n, bigomega(n) or Omega(n)).

Offset 1, canonical program `A001222.P17036940500499972134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001222 (n : ℕ) : ℤ :=
  A001222.P17036940500499972134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001359.P8865495035699438537

`A077800(2*n+1)`
-/

namespace A001359.P8865495035699438537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1)

end

end A001359.P8865495035699438537

noncomputable section

/-- A001359: Lesser of twin primes.

Offset 1, canonical program `A001359.P8865495035699438537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001359 (n : ℕ) : ℤ :=
  A001359.P8865495035699438537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002479.P5051516851553002121

`∪[A154777(n+1), A083854(n)]`
-/

namespace A002479.P5051516851553002121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P5051516851553002121

noncomputable section

/-- A002479: Numbers of the form x^2 + 2*y^2.

Offset 1, canonical program `A002479.P5051516851553002121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479 (n : ℕ) : ℤ :=
  (A002479.P5051516851553002121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003963.P6853423646423809573

`A243499(A156552(n+1))`
-/

namespace A003963.P6853423646423809573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A156552 (n + 1)).toNat

end

end A003963.P6853423646423809573

noncomputable section

/-- A003963: Fully multiplicative with a(p) = k if p is the k-th prime.

Offset 1, canonical program `A003963.P6853423646423809573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A243499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003963 (n : ℕ) : ℤ :=
  A003963.P6853423646423809573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A243499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004144.P17382156593889680767

`sqrt(A081324(n+2)/2)`
-/

namespace A004144.P17382156593889680767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A081324 (n + 2) : ℚ) / 2 : ℝ)

end

end A004144.P17382156593889680767

noncomputable section

/-- A004144: Nonhypotenuse numbers (indices of positive squares that are not the sums of 2 distinct nonzero squares).

Offset 1, canonical program `A004144.P17382156593889680767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004144.P17382156593889680767.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004435.P8512248828130465738

`filter[A004439(n+1), A049240(#)]`
-/

namespace A004435.P8512248828130465738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A004435.P8512248828130465738

noncomputable section

/-- A004435: Positive integers that are not the sum of 2 distinct square integers.

Offset 1, canonical program `A004435.P8512248828130465738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A004435 (n : ℕ) : ℤ :=
  A004435.P8512248828130465738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A004435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008683.P18254306604665478110

`A132971(A156552(n+1))`
-/

namespace A008683.P18254306604665478110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A156552 (n + 1)).toNat

end

end A008683.P18254306604665478110

noncomputable section

/-- A008683: Möbius (or Moebius) function mu(n). mu(1) = 1; mu(n) = (-1)^k if n is the product of k different primes; otherwise mu(n) = 0.

Offset 1, canonical program `A008683.P18254306604665478110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132971, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008683 (n : ℕ) : ℤ :=
  A008683.P18254306604665478110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132971, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A008683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013948.P3339504944308927508

`A078649(n+1)-n`
-/

namespace A013948.P3339504944308927508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - (n : ℤ)

end

end A013948.P3339504944308927508

noncomputable section

/-- A013948: Positions of 2's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013948.P3339504944308927508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948 (n : ℕ) : ℤ :=
  A013948.P3339504944308927508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015052.P7462831031410711660

`A053166((n+1)/A053164(n+1))`
-/

namespace A015052.P7462831031410711660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053164 (n + 1) : ℚ))).toNat

end

end A015052.P7462831031410711660

noncomputable section

/-- A015052: a(n) is the smallest positive integer m such that m^5 is divisible by n.

Offset 1, canonical program `A015052.P7462831031410711660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015052 (n : ℕ) : ℤ :=
  A015052.P7462831031410711660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037471.P8190266980563573188

`record[A008585(A037474(n))-A037474(2*n)]`
-/

namespace A037471.P8190266980563573188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A037474 n).toNat - A037474 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037471.P8190266980563573188

noncomputable section

/-- A037471: a(n)=Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*6^i: i=0,1,...,m} is the base 6 representation of n.

Offset 0, canonical program `A037471.P8190266980563573188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2722 terms. -/
def A037471 (n : ℕ) : ℤ :=
  A037471.P8190266980563573188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2722 terms. -/
def A037471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037909.P10473967481418289923

`A037911(A037471(n+1))`
-/

namespace A037909.P10473967481418289923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A037471 (n + 1)).toNat

end

end A037909.P10473967481418289923

noncomputable section

/-- A037909: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

Offset 1, canonical program `A037909.P10473967481418289923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. -/
def A037909 (n : ℕ) : ℤ :=
  A037909.P10473967481418289923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. -/
def A037909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048673.P7237737816866648562

`A244154(A156552(n+1))`
-/

namespace A048673.P7237737816866648562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 (A156552 (n + 1)).toNat

end

end A048673.P7237737816866648562

noncomputable section

/-- A048673: Permutation of natural numbers: a(n) = (A003961(n)+1) / 2 [where A003961(n) shifts the prime factorization of n one step towards larger primes].

Offset 1, canonical program `A048673.P7237737816866648562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048673 (n : ℕ) : ℤ :=
  A048673.P7237737816866648562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050804.P602634809057237247

`A081324(n+2)`
-/

namespace A050804.P602634809057237247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081324 (n + 2)

end

end A050804.P602634809057237247

noncomputable section

/-- A050804: Numbers n such that n^3 is the sum of two nonzero squares in exactly one way.

Offset 1, canonical program `A050804.P602634809057237247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050804 (n : ℕ) : ℤ :=
  A050804.P602634809057237247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052173.P12402089057864539642

`gcd(3, A005897(n))*A053121(A061579(n))`
-/

namespace A052173.P12402089057864539642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A005897 n) : ℤ) * A053121 (A061579 n).toNat

end

end A052173.P12402089057864539642

noncomputable section

/-- A052173: Another version of the Catalan triangle A008315.

Offset 0, canonical program `A052173.P12402089057864539642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052173 (n : ℕ) : ℤ :=
  A052173.P12402089057864539642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056239.P11316688788989965672

`A161511(A156552(n+1))`
-/

namespace A056239.P11316688788989965672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A156552 (n + 1)).toNat

end

end A056239.P11316688788989965672

noncomputable section

/-- A056239: If n = Product_{k >= 1} (p_k)^(c_k) where p_k is k-th prime and c_k >= 0 then a(n) = Sum_{k >= 1} k*c_k.

Offset 1, canonical program `A056239.P11316688788989965672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056239 (n : ℕ) : ℤ :=
  A056239.P11316688788989965672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072613.P13158909735510187267

`∑[C(A230595(n+1), 2)]`
-/

namespace A072613.P13158909735510187267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A230595 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P13158909735510187267

noncomputable section

/-- A072613: Number of numbers of the form p*q (p, q distinct primes) less than or equal to n.

Offset 1, canonical program `A072613.P13158909735510187267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072613 (n : ℕ) : ℤ :=
  (A072613.P13158909735510187267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090749.P4958545489785694175

`A000589(n+6)-(A001392(n+5)+A000589(n+5))`
-/

namespace A090749.P4958545489785694175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000589 (n + 6) - (A001392 (n + 5) + A000589 (n + 5))

end

end A090749.P4958545489785694175

noncomputable section

/-- A090749: a(n) = 12 * C(2n+1,n-5) / (n+7).

Offset 5, canonical program `A090749.P4958545489785694175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A090749 (n : ℕ) : ℤ :=
  A090749.P4958545489785694175.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A090749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092152.P12315494469493917720

`A212793(n+1)*A359551(n+1)`
-/

namespace A092152.P12315494469493917720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A359551 (n + 1)

end

end A092152.P12315494469493917720

noncomputable section

/-- A092152: Sign of A092673(n).

Offset 1, canonical program `A092152.P12315494469493917720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092152 (n : ℕ) : ℤ :=
  A092152.P12315494469493917720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153218.P3785772997736358194

`eq[1, A245838(2*(n+1))]`
-/

namespace A153218.P3785772997736358194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153218.P3785772997736358194

noncomputable section

/-- A153218: Numbers k such that 6k + 7 is prime.

Offset 1, canonical program `A153218.P3785772997736358194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218 (n : ℕ) : ℤ :=
  (A153218.P3785772997736358194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034936.P1115765045630556781

`2*A153218(n+1)+1`
-/

namespace A034936.P1115765045630556781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) + 1

end

end A034936.P1115765045630556781

noncomputable section

/-- A034936: Numbers k such that 3*k + 4 is prime.

Offset 1, canonical program `A034936.P1115765045630556781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936 (n : ℕ) : ℤ :=
  A034936.P1115765045630556781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072000.P3706059858088101648

`A072613(n+1)+A056811(n+1)`
-/

namespace A072000.P3706059858088101648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) + A056811 (n + 1)

end

end A072000.P3706059858088101648

noncomputable section

/-- A072000: Number of semiprimes (A001358) <= n.

Offset 1, canonical program `A072000.P3706059858088101648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056811, A072613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072000 (n : ℕ) : ℤ :=
  A072000.P3706059858088101648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056811, A072613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100493.P3342029395979233194

`comp[A072000(n+1)+n]+2`
-/

namespace A100493.P3342029395979233194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A100493.P3342029395979233194

noncomputable section

/-- A100493: a(n) = n + n-th semiprime.

Offset 1, canonical program `A100493.P3342029395979233194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100493 (n : ℕ) : ℤ :=
  (A100493.P3342029395979233194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024892.P16415756405401507162

`A034936(n+1)+1`
-/

namespace A024892.P16415756405401507162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 1

end

end A024892.P16415756405401507162

noncomputable section

/-- A024892: Numbers k such that 3*k+1 is prime.

Offset 1, canonical program `A024892.P16415756405401507162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024892 (n : ℕ) : ℤ :=
  A024892.P16415756405401507162.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024899.P11184081980913290394

`A024892(n+1)/2`
-/

namespace A024899.P11184081980913290394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024892 (n + 1) : ℚ) / 2

end

end A024899.P11184081980913290394

noncomputable section

/-- A024899: Numbers k such that 6*k + 1 is prime.

Offset 1, canonical program `A024899.P11184081980913290394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024899.P11184081980913290394.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088707.P7291141647877559993

`A100493(n+1)-n`
-/

namespace A088707.P7291141647877559993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n : ℤ)

end

end A088707.P7291141647877559993

noncomputable section

/-- A088707: Semiprimes + 1.

Offset 1, canonical program `A088707.P7291141647877559993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088707 (n : ℕ) : ℤ :=
  A088707.P7291141647877559993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001358.P632087320844056370

`A088707(n+1)-1`
-/

namespace A001358.P632087320844056370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

end

end A001358.P632087320844056370

noncomputable section

/-- A001358: Semiprimes (or biprimes): products of two primes.

Offset 1, canonical program `A001358.P632087320844056370`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001358 (n : ℕ) : ℤ :=
  A001358.P632087320844056370.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002476.P3741233015524542667

`6*A024899(n+1)+1`
-/

namespace A002476.P3741233015524542667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A024899 (n + 1) + 1

end

end A002476.P3741233015524542667

noncomputable section

/-- A002476: Primes of the form 6m + 1.

Offset 1, canonical program `A002476.P3741233015524542667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002476 (n : ℕ) : ℤ :=
  A002476.P3741233015524542667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002476.provenance : SequenceMachineLib.Provenance := .conditional

