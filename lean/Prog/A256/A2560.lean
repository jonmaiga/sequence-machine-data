import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A256002: Odd numbers n divisible by 3 such that for all k >= 1 the numbers n*4^k + 1 are composite.

The programs for A256002, there is no canonical definition to state claims against.
-/

/-! ## A256002.P1105092219351265784

`A251057(A336413(n+1)+n)`
-/

namespace A256002.P1105092219351265784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251057 (A336413 (n + 1) + (n : ℤ)).toNat

end

end A256002.P1105092219351265784

/-!
# A256003: 0 followed by numerators of 2*A176327(n-1)/A176289(n-1).

The programs for A256003, there is no canonical definition to state claims against.
-/

/-! ## A256003.P10778605404616275257

`A027641((n-1)^(n%2))+∏{d}[1-n, #%2]`
-/

namespace A256003.P10778605404616275257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (((n : ℤ) - 1) ^ (n % 2)).toNat + ((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℤ)

end

end A256003.P10778605404616275257

/-! ## A256003.P16493142709075800790

`A176327(xor(1, n))+A084928(n+1)`
-/

namespace A256003.P16493142709075800790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 (Nat.xor 1 n) + A084928 (n + 1)

end

end A256003.P16493142709075800790

/-! ## A256003.P7438722602228324521

`A000367(A004526(n))-A027641(n)`
-/

namespace A256003.P7438722602228324521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 (A004526 n).toNat - A027641 n

end

end A256003.P7438722602228324521

/-! ## A256003.P1490231008926254369

`A027642(n)*A176327(A004442(n))`
-/

namespace A256003.P1490231008926254369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A176327 (A004442 n).toNat

end

end A256003.P1490231008926254369

/-! ## A256003.P2030301095316409356

`A141044(n)*A176327(A004442(n))`
-/

namespace A256003.P2030301095316409356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A176327 (A004442 n).toNat

end

end A256003.P2030301095316409356

/-!
# A256005: Numbers m such that the result of prepending a zero digit to m, removing the least significant digit D, and prepending D, is divisible by m.

The programs for A256005, there is no canonical definition to state claims against.
-/

/-! ## A256005.P5029765840649121273

`∑[A158951(∑[n-1]+C(3, n²)+1)]`
-/

namespace A256005.P5029765840649121273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158951 (∑ j ∈ Finset.range (n + 1), f2 j + (Nat.choose 3 (n ^ 2) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256005.P5029765840649121273

/-! ## A256005.P3466478760916875127

`eq[1, A049597(A017896(n))]`
-/

namespace A256005.P3466478760916875127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049597 (A017896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256005.P3466478760916875127

/-! ## A256005.P8460425496496569576

`A327148(A037954(n))+n`
-/

namespace A256005.P8460425496496569576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327148 (A037954 n).toNat + (n : ℤ)

end

end A256005.P8460425496496569576

/-! ## A256005.P6151272393953309026

`∑[A212994(A348524(n)!)]`
-/

namespace A256005.P6151272393953309026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212994 (Nat.factorial (A348524 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256005.P6151272393953309026

/-! ## A256005.P7190429850501913397

`filter[A334601(n+1), A114213(#)]`
-/

namespace A256005.P7190429850501913397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A256005.P7190429850501913397

/-!
# A256006: Recurrence: a(n) = Sum_{k=0..n-1} a(k)*C(n+1,k), a(0)=1.

The programs for A256006, there is no canonical definition to state claims against.
-/

/-! ## A256006.P567186249209569696

`A032852(A121681(n))-A225606(n)`
-/

namespace A256006.P567186249209569696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032852 (A121681 n).toNat - A225606 n

end

end A256006.P567186249209569696

/-!
# A256007: Numbers k satisfying |k + 1 - 2F| <= 1 for some positive Fibonacci number F.

The programs for A256007, the canonical program `A256007.P10036314069292314353` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256007 has offset 0).

The definition of A256007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256007.P10036314069292314353

`record[A019274(floor(n/3)+1)+A010872(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256007

/-- `record[A019274(floor(n/3)+1)+A010872(n)]` -/
def P10036314069292314353.Spec : Prop :=
  ∀ n, P10036314069292314353.a n = A256007 n

theorem P10036314069292314353.correct : P10036314069292314353.Spec := by
  intro n
  simp only [A256007]

end A256007

/-! ## A256007.P2471476501757360064

`record[A004523(n*A010056(A008611(n)))]`
-/

namespace A256007.P2471476501757360064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ((n : ℤ) * A010056 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256007.P2471476501757360064

namespace A256007

/-- `record[A004523(n*A010056(A008611(n)))]` -/
def P2471476501757360064.Spec : Prop :=
  ∀ n, P2471476501757360064.a n = A256007 n

end A256007

/-! ## A256007.P15980557237958122165

`record[A004526(n*A010056(A008624(n)))]`
-/

namespace A256007.P15980557237958122165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * A010056 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256007.P15980557237958122165

namespace A256007

/-- `record[A004526(n*A010056(A008624(n)))]` -/
def P15980557237958122165.Spec : Prop :=
  ∀ n, P15980557237958122165.a n = A256007 n

end A256007

/-! ## A256007.P12369763085183406418

`record[A110654(n)/A003603(A008621(n))]`
-/

namespace A256007.P12369763085183406418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 n : ℚ) / (A003603 (A008621 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256007.P12369763085183406418

namespace A256007

/-- `record[A110654(n)/A003603(A008621(n))]` -/
def P12369763085183406418.Spec : Prop :=
  ∀ n, P12369763085183406418.a n = (A256007 n : ℚ)

end A256007

/-! ## A256007.P1700882792468349655

`record[n*A010056(A008624(n))-A004525(n)]`
-/

namespace A256007.P1700882792468349655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010056 (A008624 n).toNat - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256007.P1700882792468349655

namespace A256007

/-- `record[n*A010056(A008624(n))-A004525(n)]` -/
def P1700882792468349655.Spec : Prop :=
  ∀ n, P1700882792468349655.a n = A256007 n

end A256007

/-!
# A256008: Self-inverse permutation of positive integers: 4k+1 is swapped with 4k+3, and 4k+2 with 4k+4.

The programs for A256008, the canonical program `A256008.P1000358461102358413` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256008 has offset 1).

The definition of A256008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256008.P1000358461102358413

`xor(n, 2)+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256008

/-- `xor(n, 2)+1` -/
def P1000358461102358413.Spec : Prop :=
  ∀ n, (P1000358461102358413.a n : ℤ) = A256008 (n + 1)

theorem P1000358461102358413.correct : P1000358461102358413.Spec := by
  intro n
  simp only [A256008, Nat.add_sub_cancel]

end A256008

/-! ## A256008.P6860065931656993852

`n+1-2*(-1)^((2*(n+1)+1-(-1)^(n+1))/4)`
-/

namespace A256008.P6860065931656993852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - 2 * (-1 : ℝ) ^ (((2 * (n + 1) + 1 : ℤ) - (-1) ^ (n + 1) : ℚ) / 4 : ℝ)

end

end A256008.P6860065931656993852

namespace A256008

/-- `n+1-2*(-1)^((2*(n+1)+1-(-1)^(n+1))/4)` -/
def P6860065931656993852.Spec : Prop :=
  ∀ n, P6860065931656993852.a n = (A256008 (n + 1) : ℝ)

end A256008

/-! ## A256008.P7040996781434566683

`abs(xor(n, -3))`
-/

namespace A256008.P7040996781434566683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-3)|

end

end A256008.P7040996781434566683

namespace A256008

/-- `abs(xor(n, -3))` -/
def P7040996781434566683.Spec : Prop :=
  ∀ n, P7040996781434566683.a n = A256008 (n + 1)

end A256008

/-! ## A256008.P7760512711613324676

`-xor(n, -3)`
-/

namespace A256008.P7760512711613324676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-3)

end

end A256008.P7760512711613324676

namespace A256008

/-- `-xor(n, -3)` -/
def P7760512711613324676.Spec : Prop :=
  ∀ n, P7760512711613324676.a n = A256008 (n + 1)

end A256008

/-! ## A256008.P13227080881692707245

`ceil(xor(5, 2*n)/2)`
-/

namespace A256008.P13227080881692707245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 5 (2 * n) : ℚ) / 2⌉

end

end A256008.P13227080881692707245

namespace A256008

/-- `ceil(xor(5, 2*n)/2)` -/
def P13227080881692707245.Spec : Prop :=
  ∀ n, P13227080881692707245.a n = A256008 (n + 1)

end A256008

/-! ## A256008.P15381705728669076654

`round(xor(5, 2*n)/2)`
-/

namespace A256008.P15381705728669076654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 5 (2 * n) : ℚ) / 2)

end

end A256008.P15381705728669076654

namespace A256008

/-- `round(xor(5, 2*n)/2)` -/
def P15381705728669076654.Spec : Prop :=
  ∀ n, P15381705728669076654.a n = A256008 (n + 1)

end A256008

/-! ## A256008.P16672081899547409666

`ceil(cosh(log(xor(5, 2*n))))`
-/

namespace A256008.P16672081899547409666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Nat.xor 5 (2 * n) : ℝ))⌉

end

end A256008.P16672081899547409666

namespace A256008

/-- `ceil(cosh(log(xor(5, 2*n))))` -/
def P16672081899547409666.Spec : Prop :=
  ∀ n, P16672081899547409666.a n = A256008 (n + 1)

end A256008

/-! ## A256008.P5104264797738654067

`round(cosh(log(xor(5, 2*n))))`
-/

namespace A256008.P5104264797738654067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.xor 5 (2 * n) : ℝ)))

end

end A256008.P5104264797738654067

namespace A256008

/-- `round(cosh(log(xor(5, 2*n))))` -/
def P5104264797738654067.Spec : Prop :=
  ∀ n, P5104264797738654067.a n = A256008 (n + 1)

end A256008

/-!
# A256009: Triangle read by rows: Largest cardinality of a set of Hamming diameter <= k in {0,1}^n, k <= n.

The programs for A256009, there is no canonical definition to state claims against.
-/

/-! ## A256009.P53928706278898462

`A331383(A174544(n))+A059268(n)`
-/

namespace A256009.P53928706278898462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A174544 n).toNat + A059268 n

end

end A256009.P53928706278898462

/-! ## A256009.P18304025788648564595

`or(A059268(n), A309785(A144463(n)))`
-/

namespace A256009.P18304025788648564595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059268 n) (A309785 (A144463 n).toNat)

end

end A256009.P18304025788648564595

/-!
# A256010: Product of n and the total number of parts in all partitions of n. Also, product of n and the sum of largest parts of all partitions of n.

The programs for A256010, there is no canonical definition to state claims against.
-/

/-! ## A256010.P2775154521518765055

`n*A006128(n)`
-/

namespace A256010.P2775154521518765055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006128 n

end

end A256010.P2775154521518765055

/-! ## A256010.P5782803503287926017

`n/2*A211978(n)`
-/

namespace A256010.P5782803503287926017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A211978 n : ℚ)

end

end A256010.P5782803503287926017

/-! ## A256010.P2405767000301827359

`n/4*A278355(n)`
-/

namespace A256010.P2405767000301827359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A278355 n : ℚ)

end

end A256010.P2405767000301827359

/-! ## A256010.P12855045567867290332

`n*(A225596(n)-n)`
-/

namespace A256010.P12855045567867290332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A225596 n - (n : ℤ))

end

end A256010.P12855045567867290332

/-! ## A256010.P6826809442059131695

`∑{d}[n, n*A085410(#)]`
-/

namespace A256010.P6826809442059131695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A085410 d

end

end A256010.P6826809442059131695

/-! ## A256010.P13980035731262948950

`n/4*∑[A278602(n)]`
-/

namespace A256010.P13980035731262948950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278602 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A256010.P13980035731262948950

/-! ## A256010.P2963080185577327747

`n*(A076276(n)+A000041(n))`
-/

namespace A256010.P2963080185577327747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A076276 n + A000041 n)

end

end A256010.P2963080185577327747

/-! ## A256010.P14407138030278106088

`n*(A093694(n)-A000041(n))`
-/

namespace A256010.P14407138030278106088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A093694 n - A000041 n)

end

end A256010.P14407138030278106088

/-! ## A256010.P1956610953177979642

`n*A093694(n)-A066186(n)`
-/

namespace A256010.P1956610953177979642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093694 n - A066186 n

end

end A256010.P1956610953177979642

/-! ## A256010.P1335264829940781339

`n*(A296010(n)-A094533(n))`
-/

namespace A256010.P1335264829940781339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A296010 n - A094533 n)

end

end A256010.P1335264829940781339

/-! ## A256010.P2290067105695584680

`n*(A194452(n)+A024786(n+1))`
-/

namespace A256010.P2290067105695584680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A194452 n + A024786 (n + 1))

end

end A256010.P2290067105695584680

/-! ## A256010.P9672161499823566586

`n*(A093694(n)-A035363(2*n))`
-/

namespace A256010.P9672161499823566586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A093694 n - A035363 (2 * n))

end

end A256010.P9672161499823566586

/-! ## A256010.P13600364222280520421

`n*(A222048(n)+A222047(n))`
-/

namespace A256010.P13600364222280520421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A222048 n + A222047 n)

end

end A256010.P13600364222280520421

/-! ## A256010.P15894688797541433538

`n*A079025(∑[n]+1)`
-/

namespace A256010.P15894688797541433538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079025 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256010.P15894688797541433538

/-! ## A256010.P14724607130349117048

`n*A181187(C(n, 2)+1)`
-/

namespace A256010.P14724607130349117048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181187 (Nat.choose n 2 + 1)

end

end A256010.P14724607130349117048

/-! ## A256010.P3641749666843918787

`n*A181187(A000124(n)-n)`
-/

namespace A256010.P3641749666843918787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181187 (A000124 n - (n : ℤ)).toNat

end

end A256010.P3641749666843918787

/-! ## A256010.P10525871381143178320

`n*A256193(∑[n]+1)`
-/

namespace A256010.P10525871381143178320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A256193 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256010.P10525871381143178320

/-! ## A256010.P11612537139579507983

`n*A210485(∑[n]+n)`
-/

namespace A256010.P11612537139579507983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210485 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A256010.P11612537139579507983

/-! ## A256010.P3326259292214822667

`n*record[A210485(n)/A210535(n+1)]`
-/

namespace A256010.P3326259292214822667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210485 n : ℚ) / (A210535 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256010.P3326259292214822667

/-! ## A256010.P16308690577926235014

`n*A327618(A027379(n)+1)`
-/

namespace A256010.P16308690577926235014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327618 (A027379 n + 1).toNat

end

end A256010.P16308690577926235014

/-!
# A256011: Integers k with the property that the largest prime factor of k^2 + 1 is less than k.

The programs for A256011, the canonical program `A256011.P18111847139691471961` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256011 has offset 1).

The definition of A256011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256011.P1892875762172562710

`lt[2, A242012(n+1)]+1`
-/

namespace A256011.P1892875762172562710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A256011.P1892875762172562710

namespace A256011

/-- `lt[2, A242012(n+1)]+1` -/
def P1892875762172562710.Spec : Prop :=
  ∀ n, (P1892875762172562710.a n : ℤ) = A256011 (n + 1)

end A256011

/-! ## A256011.P15191007311296496462

`lt[2, A252890(n+1)]+1`
-/

namespace A256011.P15191007311296496462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A256011.P15191007311296496462

namespace A256011

/-- `lt[2, A252890(n+1)]+1` -/
def P15191007311296496462.Spec : Prop :=
  ∀ n, (P15191007311296496462.a n : ℤ) = A256011 (n + 1)

end A256011

/-! ## A256011.P10315617040823229065

`lt[A014442(n+1), n]+1`
-/

namespace A256011.P10315617040823229065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A256011.P10315617040823229065

namespace A256011

/-- `lt[A014442(n+1), n]+1` -/
def P10315617040823229065.Spec : Prop :=
  ∀ n, (P10315617040823229065.a n : ℤ) = A256011 (n + 1)

end A256011

/-! ## A256011.P2116425868367646989

`lt[A250069(n+1), n]+1`
-/

namespace A256011.P2116425868367646989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A256011.P2116425868367646989

namespace A256011

/-- `lt[A250069(n+1), n]+1` -/
def P2116425868367646989.Spec : Prop :=
  ∀ n, (P2116425868367646989.a n : ℤ) = A256011 (n + 1)

end A256011

/-! ## A256011.P13477212413911452609

`lt[2, A242012(A028310(n))]`
-/

namespace A256011.P13477212413911452609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256011.P13477212413911452609

namespace A256011

/-- `lt[2, A242012(A028310(n))]` -/
def P13477212413911452609.Spec : Prop :=
  ∀ n, (P13477212413911452609.a n : ℤ) = A256011 (n + 1)

end A256011

/-! ## A256011.P17922942417879937710

`A262564(lt[2, A252890(n+1)])`
-/

namespace A256011.P17922942417879937710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A256011.P17922942417879937710

namespace A256011

/-- `A262564(lt[2, A252890(n+1)])` -/
def P17922942417879937710.Spec : Prop :=
  ∀ n, P17922942417879937710.a n = A256011 (n + 1)

end A256011

/-! ## A256011.P1532963002784401904

`A065475(lt[A014442(n+1), n])`
-/

namespace A256011.P1532963002784401904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A256011.P1532963002784401904

namespace A256011

/-- `A065475(lt[A014442(n+1), n])` -/
def P1532963002784401904.Spec : Prop :=
  ∀ n, P1532963002784401904.a n = A256011 (n + 1)

end A256011

/-! ## A256011.P674252174364545521

`A262564(lt[A014442(n+1), n])`
-/

namespace A256011.P674252174364545521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A256011.P674252174364545521

namespace A256011

/-- `A262564(lt[A014442(n+1), n])` -/
def P674252174364545521.Spec : Prop :=
  ∀ n, P674252174364545521.a n = A256011 (n + 1)

end A256011

/-! ## A256011.P18111847139691471961

`lt[A281793(n), A184985(n+1)+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A256011

/-- `lt[A281793(n), A184985(n+1)+1]` -/
def P18111847139691471961.Spec : Prop :=
  ∀ n, (P18111847139691471961.a n : ℤ) = A256011 (n + 1)

theorem P18111847139691471961.correct : P18111847139691471961.Spec := by
  intro n
  simp only [A256011, Nat.add_sub_cancel]

end A256011

/-! ## A256011.P1178882131704585139

`lt[A014442(A233583(n+1)), n]`
-/

namespace A256011.P1178882131704585139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256011.P1178882131704585139

namespace A256011

/-- `lt[A014442(A233583(n+1)), n]` -/
def P1178882131704585139.Spec : Prop :=
  ∀ n, (P1178882131704585139.a n : ℤ) = A256011 (n + 1)

end A256011

/-!
# A256012: Number of partitions of n into distinct parts that are not squarefree.

The programs for A256012, there is no canonical definition to state claims against.
-/

/-! ## A256012.P7435830805913484620

`A003056(A114374(n))^A027642(∑[n+1])`
-/

namespace A256012.P7435830805913484620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A114374 n).toNat : ℚ) ^ (A027642 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A256012.P7435830805913484620

/-! ## A256012.P4584280170202201683

`A003056(A114374(n))^A141459(∑[n+1])`
-/

namespace A256012.P4584280170202201683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A114374 n).toNat : ℚ) ^ (A141459 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A256012.P4584280170202201683

/-! ## A256012.P16192814347046928466

`A100196(A114374(n)%A322121(2*n+5))`
-/

namespace A256012.P16192814347046928466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.tmod (A114374 n) (A322121 (2 * n + 5))).toNat

end

end A256012.P16192814347046928466

/-! ## A256012.P885196861151236363

`A078128(A005843(3*n+4))%A145988(n+1)`
-/

namespace A256012.P885196861151236363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078128 (A005843 (3 * n + 4)).toNat) (A145988 (n + 1))

end

end A256012.P885196861151236363

/-! ## A256012.P6765857182845969268

`A334029(8*A114374(n))`
-/

namespace A256012.P6765857182845969268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (8 * A114374 n).toNat

end

end A256012.P6765857182845969268

/-!
# A256014: Expansion of phi(-q^3)^4 / (phi(-q) * phi(-q^9)) in powers of q where phi() is a Ramanujan theta function.

The programs for A256014, there is no canonical definition to state claims against.
-/

/-! ## A256014.P13187552715186880793

`(-1)^n*A256280(n)`
-/

namespace A256014.P13187552715186880793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256280 n

end

end A256014.P13187552715186880793

/-! ## A256014.P2737010811661586086

`A132954(n)*A258256(n)`
-/

namespace A256014.P2737010811661586086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A258256 n

end

end A256014.P2737010811661586086

/-! ## A256014.P14348725379437300883

`A132367(n)*A259761(n)`
-/

namespace A256014.P14348725379437300883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132367 n * A259761 n

end

end A256014.P14348725379437300883

/-! ## A256014.P2326911208006970991

`A004018(n)/A057079(n)`
-/

namespace A256014.P2326911208006970991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A057079 n : ℚ)

end

end A256014.P2326911208006970991

/-! ## A256014.P3751933919991809510

`A104794(n)/A131713(n)`
-/

namespace A256014.P3751933919991809510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (A131713 n : ℚ)

end

end A256014.P3751933919991809510

/-! ## A256014.P7904962479218031361

`A132367(n)²*A258279(n)`
-/

namespace A256014.P7904962479218031361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132367 n ^ 2 * A258279 n

end

end A256014.P7904962479218031361

/-! ## A256014.P2223663422757408011

`A256280(n)*A309873(n+1)`
-/

namespace A256014.P2223663422757408011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256280 n * A309873 (n + 1)

end

end A256014.P2223663422757408011

/-! ## A256014.P17545398292273274882

`A104794(n)/(2-A057079(n)²)`
-/

namespace A256014.P17545398292273274882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A256014.P17545398292273274882

/-! ## A256014.P5652898708317975883

`A256280(n)/A163649(Δ[A008619(n)])`
-/

namespace A256014.P5652898708317975883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 n : ℚ) / (A163649 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A256014.P5652898708317975883

/-! ## A256014.P2323270242553447491

`A057079(n+2)²*A258279(n)`
-/

namespace A256014.P2323270242553447491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) ^ 2 * A258279 n

end

end A256014.P2323270242553447491

/-! ## A256014.P17023553594868175986

`A131713(n+2)²*A258279(n)`
-/

namespace A256014.P17023553594868175986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) ^ 2 * A258279 n

end

end A256014.P17023553594868175986

/-! ## A256014.P9416174525170109623

`A132954(n)*A256282(2*n)`
-/

namespace A256014.P9416174525170109623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A256282 (2 * n)

end

end A256014.P9416174525170109623

/-! ## A256014.P6528702334260639936

`A104794(2*n)/A057079(n)`
-/

namespace A256014.P6528702334260639936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 (2 * n) : ℚ) / (A057079 n : ℚ)

end

end A256014.P6528702334260639936

/-! ## A256014.P858770996035820490

`2*A258279(2*n)/A057079(n+1)`
-/

namespace A256014.P858770996035820490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A258279 (2 * n) : ℚ) / (A057079 (n + 1) : ℚ))

end

end A256014.P858770996035820490

/-! ## A256014.P3091043680331293844

`2*A258292(2*n)/A057079(n+1)`
-/

namespace A256014.P3091043680331293844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A258292 (2 * n) : ℚ) / (A057079 (n + 1) : ℚ))

end

end A256014.P3091043680331293844

/-! ## A256014.P15972039075084587652

`2*A256280(2*n)/A132954(n+1)`
-/

namespace A256014.P15972039075084587652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A256280 (2 * n) : ℚ) / (A132954 (n + 1) : ℚ))

end

end A256014.P15972039075084587652

/-!
# A256015: Triangle read by rows: n-th row contains all distinct primes which are representable as the sum of some subset of the set of first n primes.

The programs for A256015, there is no canonical definition to state claims against.
-/

/-! ## A256015.P14691272341802536061

`p?[n-A000225(A178786(n))]`
-/

namespace A256015.P14691272341802536061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000225 (A178786 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256015.P14691272341802536061

/-! ## A256015.P9747441353315822225

`p?[A077168(A352883(n+3))]`
-/

namespace A256015.P9747441353315822225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A352883 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256015.P9747441353315822225

/-!
# A256016: a(n) = n! * Sum_{k=0..n} k^n/k!.

The programs for A256016, there is no canonical definition to state claims against.
-/

/-! ## A256016.P18361263350728881117

`A337085(∑[4*n])`
-/

namespace A256016.P18361263350728881117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337085 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256016.P18361263350728881117

/-! ## A256016.P2295297758672935958

`A337085(A046092(n))+A165090(n)`
-/

namespace A256016.P2295297758672935958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337085 (A046092 n).toNat + A165090 n

end

end A256016.P2295297758672935958

/-!
# A256017: Least integer k > n such that all divisors of n are exactly the first divisors of k in increasing order.

The programs for A256017, there is no canonical definition to state claims against.
-/

/-! ## A256017.P2640174883037646291

`(n+1)*A256267(n+1)`
-/

namespace A256017.P2640174883037646291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A256267 (n + 1)

end

end A256017.P2640174883037646291

/-! ## A256017.P15373807744970778037

`floor(A256267(n+1)/acot(A000027(n+1)))`
-/

namespace A256017.P15373807744970778037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256267 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋

end

end A256017.P15373807744970778037

/-! ## A256017.P11763645911466788467

`A256267(A328399(2*n))*A328399(2*n)`
-/

namespace A256017.P11763645911466788467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A256017.P11763645911466788467

/-! ## A256017.P16633938249667857631

`A256267(n+1)+lcm(A038608(n), A256267(n+1))`
-/

namespace A256017.P16633938249667857631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1) + (Int.lcm (A038608 n) (A256267 (n + 1)) : ℤ)

end

end A256017.P16633938249667857631

/-! ## A256017.P8474649991324163537

`(n+1)*A088387(A006530(n+1)*A053024(n+1))`
-/

namespace A256017.P8474649991324163537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088387 (A006530 (n + 1) * A053024 (n + 1)).toNat

end

end A256017.P8474649991324163537

/-!
# A256018: a(n) = Sum_{k=1..n} k^2*Bernoulli(k-1)*C(2*n-1,k)*Stirling2(2*n-k,n).

The programs for A256018, there is no canonical definition to state claims against.
-/

/-! ## A256018.P8866288436718949501

`A047211(A187647(n))-A208301(n+1)`
-/

namespace A256018.P8866288436718949501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (A187647 n).toNat - A208301 (n + 1)

end

end A256018.P8866288436718949501

/-!
# A256019: a(n) = Sum_{i=1..n-1} (i^3 * a(i)), a(1)=1.

The programs for A256019, there is no canonical definition to state claims against.
-/

/-! ## A256019.P6154526661678533997

`∏[n^3-(char[1]-1)]`
-/

namespace A256019.P6154526661678533997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256019.P6154526661678533997

/-! ## A256019.P6971017565383489930

`(n^3+1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A256019.P6971017565383489930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n ^ 3 + 1) * a (n - 1)

end

end A256019.P6971017565383489930

/-! ## A256019.P7898045292135264882

`∏[n^3+1]/(ceil(sin(n)²)+1)`
-/

namespace A256019.P7898045292135264882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (⌈Real.sin (n : ℝ) ^ 2⌉ + 1 : ℚ)

end

end A256019.P7898045292135264882

/-! ## A256019.P5985379656991070169

`abs((n*n²+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A256019.P5985379656991070169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n * n ^ 2 + 1) * a (n - 1)

end

end A256019.P5985379656991070169

/-! ## A256019.P17690248701145870889

`floor((n*n²+1)*a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A256019.P17690248701145870889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n * n ^ 2 + 1) * a (n - 1)

end

end A256019.P17690248701145870889

/-!
# A256020: a(n) = Sum_{i=1..n-1} (i^4 * a(i)), a(1)=1.

The programs for A256020, there is no canonical definition to state claims against.
-/

/-! ## A256020.P12934168661368295409

`round(∏[n²²+1]/2)`
-/

namespace A256020.P12934168661368295409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A256020.P12934168661368295409

/-! ## A256020.P5209522078105049664

`(n^4+1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A256020.P5209522078105049664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n ^ 4 + 1) * a (n - 1)

end

end A256020.P5209522078105049664

/-! ## A256020.P16478931280483466658

`floor((n²²+1)*a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A256020.P16478931280483466658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n ^ 2) ^ 2 + 1) * a (n - 1)

end

end A256020.P16478931280483466658

/-! ## A256020.P2157424216751347568

`ceil((n²²+1)*a(n-1))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A256020.P2157424216751347568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n ^ 2) ^ 2 + 1) * a (n - 1)

end

end A256020.P2157424216751347568

/-! ## A256020.P9710847521283658533

`∏[n^4+1]/(ceil(sin(n)²)+1)`
-/

namespace A256020.P9710847521283658533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (⌈Real.sin (n : ℝ) ^ 2⌉ + 1 : ℚ)

end

end A256020.P9710847521283658533

/-!
# A256021: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256021, there is no canonical definition to state claims against.
-/

/-! ## A256021.P12830981844166144140

`A256029(∑[4*n]+1)`
-/

namespace A256021.P12830981844166144140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256021.P12830981844166144140

/-! ## A256021.P14643535390897116101

`record[A003982(n)*A256029(n+1)]`
-/

namespace A256021.P14643535390897116101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A256029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256021.P14643535390897116101

/-! ## A256021.P11895246924832009235

`record[gcd(A008482(n), A256029(n+1))]`
-/

namespace A256021.P11895246924832009235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A256029 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256021.P11895246924832009235

/-! ## A256021.P538348847107691359

`record[or(-A049581(n), A256029(n+1))]`
-/

namespace A256021.P538348847107691359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A049581 n) (A256029 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256021.P538348847107691359

/-! ## A256021.P12725205140376669084

`record[root(A256029(n+1), A280172(n+1))]`
-/

namespace A256021.P12725205140376669084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256029 (n + 1) : ℝ) ^ (1 / (A280172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256021.P12725205140376669084

/-!
# A256022: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256022, there is no canonical definition to state claims against.
-/

/-! ## A256022.P3823001908999717260

`A256029(∑[n]+1)`
-/

namespace A256022.P3823001908999717260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256022.P3823001908999717260

/-! ## A256022.P17008429324985552598

`record[A256029(A056534(n+1))]`
-/

namespace A256022.P17008429324985552598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256022.P17008429324985552598

/-! ## A256022.P11107131545992841116

`record[root(A256029(n+1), A123162(n))]`
-/

namespace A256022.P11107131545992841116
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256029 (n + 1) : ℝ) ^ (1 / (A123162 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256022.P11107131545992841116

/-! ## A256022.P15135099899103455848

`record[root(A256029(n+1), A144303(n))]`
-/

namespace A256022.P15135099899103455848
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256029 (n + 1) : ℝ) ^ (1 / (A144303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256022.P15135099899103455848

/-! ## A256022.P489093595428411888

`record[root(A256029(n+1), A340968(n))]`
-/

namespace A256022.P489093595428411888
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256029 (n + 1) : ℝ) ^ (1 / (A340968 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256022.P489093595428411888

/-!
# A256023: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256023, there is no canonical definition to state claims against.
-/

/-! ## A256023.P15395478772452996377

`A256029(∑[n+1]+2)`
-/

namespace A256023.P15395478772452996377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256023.P15395478772452996377

/-! ## A256023.P14251605462363107404

`lcm(2, A256029(A000096(n)+3))`
-/

namespace A256023.P14251605462363107404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A256029 (A000096 n + 3).toNat)

end

end A256023.P14251605462363107404

/-! ## A256023.P8335137500674842970

`A256029(A000096(n)+3)+A000038(n+1)`
-/

namespace A256023.P8335137500674842970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A000096 n + 3).toNat + A000038 (n + 1)

end

end A256023.P8335137500674842970

/-! ## A256023.P2588307761524726286

`A007318(A000217(n))*A256029(A000096(n)+3)`
-/

namespace A256023.P2588307761524726286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A256029 (A000096 n + 3).toNat

end

end A256023.P2588307761524726286

/-! ## A256023.P16037112710371414486

`record[A256029(A056534(n+4)-1)]`
-/

namespace A256023.P16037112710371414486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A056534 (n + 4) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256023.P16037112710371414486

/-!
# A256024: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256024, there is no canonical definition to state claims against.
-/

/-! ## A256024.P11034424827949785253

`A256029(∑[n+2]+4)`
-/

namespace A256024.P11034424827949785253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A256024.P11034424827949785253

/-! ## A256024.P9637178412708504610

`or(char[2], A256029(A167614(n+1)))`
-/

namespace A256024.P9637178412708504610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A256029 (A167614 (n + 1)).toNat)

end

end A256024.P9637178412708504610

/-! ## A256024.P14200154163347183160

`lcm(A033999(n), A256029(A167614(n+1)))`
-/

namespace A256024.P14200154163347183160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A256029 (A167614 (n + 1)).toNat)

end

end A256024.P14200154163347183160

/-! ## A256024.P11836749764297104643

`A256029(A167614(n+1))%A256025(n+1)`
-/

namespace A256024.P11836749764297104643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256029 (A167614 (n + 1)).toNat) (A256025 (n + 1))

end

end A256024.P11836749764297104643

/-! ## A256024.P312033265839368980

`A256029(A167499(n)+n)%A256025(n+1)`
-/

namespace A256024.P312033265839368980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256029 (A167499 n + (n : ℤ)).toNat) (A256025 (n + 1))

end

end A256024.P312033265839368980

/-!
# A256025: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256025, there is no canonical definition to state claims against.
-/

/-! ## A256025.P5806289408062683550

`A256029(A374004(n+1))`
-/

namespace A256025.P5806289408062683550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A374004 (n + 1)).toNat

end

end A256025.P5806289408062683550

/-! ## A256025.P14724673136160150772

`A256029(A141214(n)+7)`
-/

namespace A256025.P14724673136160150772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A141214 n + 7).toNat

end

end A256025.P14724673136160150772

/-! ## A256025.P12194554680258826896

`A256029(A055999(n)+10)`
-/

namespace A256025.P12194554680258826896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A055999 n + 10).toNat

end

end A256025.P12194554680258826896

/-! ## A256025.P9683273487091898203

`A256029(A167614(n+2)+1)`
-/

namespace A256025.P9683273487091898203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A167614 (n + 2) + 1).toNat

end

end A256025.P9683273487091898203

/-! ## A256025.P1944783001176821618

`A256029(A112355(n+1)+4)`
-/

namespace A256025.P1944783001176821618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A112355 (n + 1) + 4).toNat

end

end A256025.P1944783001176821618

/-!
# A256026: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256026, there is no canonical definition to state claims against.
-/

/-! ## A256026.P12697513425811339464

`A256029(A374005(n+1))`
-/

namespace A256026.P12697513425811339464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A374005 (n + 1)).toNat

end

end A256026.P12697513425811339464

/-! ## A256026.P14922928159944918495

`A256029(A167499(n+3))`
-/

namespace A256026.P14922928159944918495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A167499 (n + 3)).toNat

end

end A256026.P14922928159944918495

/-! ## A256026.P10131231486154734727

`A256029(A167614(n+2)+n+6)`
-/

namespace A256026.P10131231486154734727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A256026.P10131231486154734727

/-! ## A256026.P9429392100323983456

`A256029(A046691(n+3))`
-/

namespace A256026.P9429392100323983456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A046691 (n + 3)).toNat

end

end A256026.P9429392100323983456

/-! ## A256026.P10818240572414070344

`A256029(A060577(n+4))`
-/

namespace A256026.P10818240572414070344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A060577 (n + 4)).toNat

end

end A256026.P10818240572414070344

/-!
# A256027: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256027, there is no canonical definition to state claims against.
-/

/-! ## A256027.P6200002975670842825

`A256029(∑[n+5]+16)`
-/

namespace A256027.P6200002975670842825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A256027.P6200002975670842825

/-! ## A256027.P17770704492272338310

`A015082(n)*A256029(A000124(n+5)+5)`
-/

namespace A256027.P17770704492272338310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 n * A256029 (A000124 (n + 5) + 5).toNat

end

end A256027.P17770704492272338310

/-! ## A256027.P9932017473513685084

`and(1, A055580(n))*A256029(A056115(n)+21)`
-/

namespace A256027.P9932017473513685084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055580 n) * A256029 (A056115 n + 21).toNat

end

end A256027.P9932017473513685084

/-! ## A256027.P15565850227441880994

`A256029(A000124(n+5)+5)+A000007(n+1)`
-/

namespace A256027.P15565850227441880994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A000124 (n + 5) + 5).toNat + A000007 (n + 1)

end

end A256027.P15565850227441880994

/-! ## A256027.P10324072172987817263

`A007318(A000217(n))*A256029(A000124(n+5)+5)`
-/

namespace A256027.P10324072172987817263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A256029 (A000124 (n + 5) + 5).toNat

end

end A256027.P10324072172987817263

/-!
# A256028: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 1 and no column sum 1.

The programs for A256028, there is no canonical definition to state claims against.
-/

/-! ## A256028.P5334432917281157959

`A256029(A374008(n+1))`
-/

namespace A256028.P5334432917281157959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A374008 (n + 1)).toNat

end

end A256028.P5334432917281157959

/-! ## A256028.P183002895758897764

`A256029(eq[8, A131818(n+1)])`
-/

namespace A256028.P183002895758897764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256028.P183002895758897764

/-! ## A256028.P6386168477234468855

`A256029(A055999(n+4))`
-/

namespace A256028.P6386168477234468855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A055999 (n + 4)).toNat

end

end A256028.P6386168477234468855

/-! ## A256028.P1334622476260614378

`A256029(eq[6, A193592(n)])`
-/

namespace A256028.P1334622476260614378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256028.P1334622476260614378

/-! ## A256028.P18395291084538052774

`A256029(A000217(n+7)-6)`
-/

namespace A256028.P18395291084538052774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256029 (A000217 (n + 7) - 6).toNat

end

end A256028.P18395291084538052774

/-!
# A256030: a(n) = A255502(n)/2.

The programs for A256030, there is no canonical definition to state claims against.
-/

/-! ## A256030.P12917773557301883079

`A255502(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256030.P12917773557301883079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255502 (n + 1) : ℚ) / 2

end

end A256030.P12917773557301883079

/-! ## A256030.P5723070216866525794

`Δ[∑[A255502(n)]/2]`
-/

namespace A256030.P5723070216866525794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255502 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256030.P5723070216866525794

/-! ## A256030.P3818826602444501127

`record[A255502(ceil(xor(1, n)/2))/2]`
-/

namespace A256030.P3818826602444501127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255502 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256030.P3818826602444501127

/-! ## A256030.P16897661775530521299

`A014682(A255502(n+1))`
-/

namespace A256030.P16897661775530521299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A255502 (n + 1)).toNat

end

end A256030.P16897661775530521299

/-! ## A256030.P822851361848860413

`∑[A273943(Δ[A255502(n)])]`
-/

namespace A256030.P822851361848860413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255502 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256030.P822851361848860413

/-!
# A256031: Number of irreducible idempotents in partial Brauer monoid PB_n.

The programs for A256031, there is no canonical definition to state claims against.
-/

/-! ## A256031.P14508417591104018844

`or(1, n)!+(n+1)!`
-/

namespace A256031.P14508417591104018844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.lor 1 n) + Nat.factorial (n + 1)

end

end A256031.P14508417591104018844

/-! ## A256031.P16100106793417097320

`(n*gcd(2, n)+2)*n!`
-/

namespace A256031.P16100106793417097320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.gcd 2 n + 2) * Nat.factorial n

end

end A256031.P16100106793417097320

/-! ## A256031.P3432400327422792502

`∏[n+2]/(lcm(2, n)/2+1)`
-/

namespace A256031.P3432400327422792502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((Nat.lcm 2 n : ℚ) / 2 + 1)

end

end A256031.P3432400327422792502

/-! ## A256031.P12939337765149668278

`(n*char[2*n]+n+2)*n!`
-/

namespace A256031.P12939337765149668278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (if ∃ j, f1 j = n then 1 else 0) + n + 2) * Nat.factorial n

end

end A256031.P12939337765149668278

/-! ## A256031.P18000061070942593129

`n!*A043547(n+2)`
-/

namespace A256031.P18000061070942593129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A043547 (n + 2)

end

end A256031.P18000061070942593129

/-!
# A256032: Number of idempotents in partial Brauer monoid PB_n.

The programs for A256032, there is no canonical definition to state claims against.
-/

/-! ## A256032.P13067662466299307635

`A070868((n+3)^n)`
-/

namespace A256032.P13067662466299307635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 ((n + 3) ^ n)

end

end A256032.P13067662466299307635

/-!
# A256033: Number of idempotents of rank 1 in partition monoid P_n.

The programs for A256033, there is no canonical definition to state claims against.
-/

/-! ## A256033.P3976078027672566194

`A256034(n+1)-A060639(n+1)`
-/

namespace A256033.P3976078027672566194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256034 (n + 1) - A060639 (n + 1)

end

end A256033.P3976078027672566194

/-! ## A256033.P9971827666793960280

`record[A256042(n)]`
-/

namespace A256033.P9971827666793960280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256033.P9971827666793960280

/-! ## A256033.P17310928083053122127

`A256042(∑[n+1]+1)`
-/

namespace A256033.P17310928083053122127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256042 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256033.P17310928083053122127

/-! ## A256033.P11335862391076038151

`or(1, A256042(A134869(n+1)))`
-/

namespace A256033.P11335862391076038151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256042 (A134869 (n + 1)).toNat)

end

end A256033.P11335862391076038151

/-! ## A256033.P10769585238899568562

`A256034(n+1)-record[A318392(n+1)]`
-/

namespace A256033.P10769585238899568562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256034 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256033.P10769585238899568562

/-!
# A256034: Number of irreducible idempotents in partition monoid P_n.

The programs for A256034, there is no canonical definition to state claims against.
-/

/-! ## A256034.P6473445371715908024

`A060639(n+1)+A256033(n+1)`
-/

namespace A256034.P6473445371715908024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060639 (n + 1) + A256033 (n + 1)

end

end A256034.P6473445371715908024

/-! ## A256034.P525160166188950607

`record[A318392(n+1)]+record[A256042(n)]`
-/

namespace A256034.P525160166188950607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A256034.P525160166188950607

/-! ## A256034.P17040135578514024408

`A256033(n+1)+record[A318392(n+1)]`
-/

namespace A256034.P17040135578514024408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256033 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256034.P17040135578514024408

/-! ## A256034.P5857602460639120246

`A256042(∑[n+1]+1)+A060639(n+1)`
-/

namespace A256034.P5857602460639120246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256042 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A060639 (n + 1)

end

end A256034.P5857602460639120246

/-! ## A256034.P8533183781298405924

`A318392(A000124(n))+record[A256042(n)]`
-/

namespace A256034.P8533183781298405924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318392 (A000124 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256034.P8533183781298405924

/-!
# A256035: Number of idempotent basis elements in partition monoid P_n.

The programs for A256035, there is no canonical definition to state claims against.
-/

/-! ## A256035.P6481294890026542241

`A113293((1-2^n)*(1-n)+1)+round(cos(n%6))`
-/

namespace A256035.P6481294890026542241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113293 ((1 - (2 ^ n : ℤ)) * (1 - (n : ℤ)) + 1).toNat + SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

end

end A256035.P6481294890026542241

/-!
# A256036: Triangle read by rows: number of idempotents of rank k in Brauer monoid B_n.

The programs for A256036, there is no canonical definition to state claims against.
-/

/-! ## A256036.P9915353300826339325

`A099174(n)*A256037(n)`
-/

namespace A256036.P9915353300826339325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A256037 n

end

end A256036.P9915353300826339325

/-! ## A256036.P12613776391847506056

`abs(A066325(n)*A256037(n))`
-/

namespace A256036.P12613776391847506056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066325 n * A256037 n|

end

end A256036.P12613776391847506056

/-! ## A256036.P16152978957102854786

`abs(A073278(A061579(n))*A256037(n))`
-/

namespace A256036.P16152978957102854786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073278 (A061579 n).toNat * A256037 n|

end

end A256036.P16152978957102854786

/-! ## A256036.P15998296150794887497

`A066325(n)*A106470(n)*A256037(n)`
-/

namespace A256036.P15998296150794887497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A106470 n * A256037 n

end

end A256036.P15998296150794887497

/-! ## A256036.P6075847671160939866

`A066325(n)*A117568(n)*A256037(n)`
-/

namespace A256036.P6075847671160939866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A117568 n * A256037 n

end

end A256036.P6075847671160939866

/-! ## A256036.P10554663512262286075

`gcd(A000038(n), A066325(n))*A256037(n)`
-/

namespace A256036.P10554663512262286075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A066325 n) : ℤ) * A256037 n

end

end A256036.P10554663512262286075

/-! ## A256036.P14429074916867214699

`lcm(A007318(n), A066325(n))*A256037(n)`
-/

namespace A256036.P14429074916867214699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007318 n) (A066325 n) : ℤ) * A256037 n

end

end A256036.P14429074916867214699

/-! ## A256036.P12349512000285185259

`∑{d}[A066325(n), A000010(#)*A256037(n)]`
-/

namespace A256036.P12349512000285185259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d * A256037 n

end

end A256036.P12349512000285185259

/-! ## A256036.P11619468807107081645

`A130194(n+1)*A256037(n)*A066325(n)`
-/

namespace A256036.P11619468807107081645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A256037 n * A066325 n

end

end A256036.P11619468807107081645

/-! ## A256036.P15663165196084024314

`sqrt(A066325(n)²%A000032(n))*A256037(n)`
-/

namespace A256036.P15663165196084024314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A066325 n ^ 2) (A000032 n) : ℝ) * (A256037 n : ℝ)

end

end A256036.P15663165196084024314

/-!
# A256037: Triangle read by rows: number of R-class idempotents of rank k in Brauer monoid B_n.

The programs for A256037, there is no canonical definition to state claims against.
-/

/-! ## A256037.P13149334921605676981

`ceil(A256036(n)/(abs(A066325(n))+1))`
-/

namespace A256037.P13149334921605676981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A256036 n : ℚ) / (|A066325 n| + 1 : ℚ)⌉

end

end A256037.P13149334921605676981

/-! ## A256037.P3163355581436544725

`A256036(n)/A028310(A099174(n))`
-/

namespace A256037.P3163355581436544725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256036 n : ℚ) / (A028310 (A099174 n).toNat : ℚ)

end

end A256037.P3163355581436544725

/-! ## A256037.P16269252290918625083

`A256036(n)/A028310(abs(A066325(n)))`
-/

namespace A256037.P16269252290918625083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256036 n : ℚ) / (A028310 |A066325 n|.toNat : ℚ)

end

end A256037.P16269252290918625083

/-! ## A256037.P17827420683642278908

`A120565(A242653(n)²)`
-/

namespace A256037.P17827420683642278908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A242653 n ^ 2).toNat

end

end A256037.P17827420683642278908

/-! ## A256037.P13617538984955083338

`A160552(A099174(n)^A273866(n+1))`
-/

namespace A256037.P13617538984955083338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (SequenceMachineLib.roundAway ((A099174 n : ℚ) ^ (A273866 (n + 1) : ℤ))).toNat

end

end A256037.P13617538984955083338

/-!
# A256038: Triangle read by rows: number of R-class idempotent basis elements of rank k in Brauer monoid B_n.

The programs for A256038, there is no canonical definition to state claims against.
-/

/-! ## A256038.P1238468698317420601

`A001227(A119502(n))*A329918(n)`
-/

namespace A256038.P1238468698317420601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A119502 n).toNat * A329918 n

end

end A256038.P1238468698317420601

/-! ## A256038.P16911847895109739245

`A130527(round(sqrt(A256041(n))))`
-/

namespace A256038.P16911847895109739245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130527 (SequenceMachineLib.roundAway (Real.sqrt (A256041 n : ℝ))).toNat

end

end A256038.P16911847895109739245

/-! ## A256038.P17609482093572781711

`A281442(n)+A198317(A281442(n))`
-/

namespace A256038.P17609482093572781711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281442 n + A198317 (A281442 n).toNat

end

end A256038.P17609482093572781711

/-! ## A256038.P381456501622794545

`A005136(A140997(n))*A329918(n)`
-/

namespace A256038.P381456501622794545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A140997 n).toNat * A329918 n

end

end A256038.P381456501622794545

/-!
# A256041: Triangle read by rows: number of idempotent basis elements of rank k in Brauer monoid B_n.

The programs for A256041, the canonical program `A256041.P8102863058900449500` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256041 has offset 0).

The definition of A256041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256041.P8102863058900449500

`A129684(n)*A329918(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A256041

/-- `A129684(n)*A329918(n)` -/
def P8102863058900449500.Spec : Prop :=
  ∀ n, P8102863058900449500.a n = A256041 n

theorem P8102863058900449500.correct : P8102863058900449500.Spec := by
  intro n
  simp only [A256041]

end A256041

/-! ## A256041.P4185582839274351770

`(A256038(A099174(n))+A099174(n))*A256038(n)`
-/

namespace A256041.P4185582839274351770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A256038 (A099174 n).toNat + A099174 n) * A256038 n

end

end A256041.P4185582839274351770

namespace A256041

/-- `(A256038(A099174(n))+A099174(n))*A256038(n)` -/
def P4185582839274351770.Spec : Prop :=
  ∀ n, P4185582839274351770.a n = A256041 n

end A256041

/-! ## A256041.P14453827793062893814

`A067147(n)*A124768(A135814(n))`
-/

namespace A256041.P14453827793062893814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 n * A124768 (A135814 n).toNat

end

end A256041.P14453827793062893814

namespace A256041

/-- `A067147(n)*A124768(A135814(n))` -/
def P14453827793062893814.Spec : Prop :=
  ∀ n, P14453827793062893814.a n = A256041 n

end A256041

/-! ## A256041.P1374223970852998634

`A176077(A026769(n))*A281442(n)`
-/

namespace A256041.P1374223970852998634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176077 (A026769 n).toNat * A281442 n

end

end A256041.P1374223970852998634

namespace A256041

/-- `A176077(A026769(n))*A281442(n)` -/
def P1374223970852998634.Spec : Prop :=
  ∀ n, P1374223970852998634.a n = A256041 n

end A256041

/-! ## A256041.P14178126516013390090

`A134413(A136621(n+2))*A136630(n)`
-/

namespace A256041.P14178126516013390090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134413 (A136621 (n + 2)).toNat * A136630 n

end

end A256041.P14178126516013390090

namespace A256041

/-- `A134413(A136621(n+2))*A136630(n)` -/
def P14178126516013390090.Spec : Prop :=
  ∀ n, P14178126516013390090.a n = A256041 n

end A256041

/-!
# A256043: Order of all-2s configuration on the 2n X 2n sandpile grid graph.

The programs for A256043, there is no canonical definition to state claims against.
-/

/-! ## A256043.P16506034572109264669

`A256046(2*n)`
-/

namespace A256043.P16506034572109264669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256046 (2 * n)

end

end A256043.P16506034572109264669

/-! ## A256043.P15661791802755252274

`A376607(2*n+1-and(1, a(and(n, n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A256043.P15661791802755252274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A376607 ((2 * n + 1 : ℤ) - Int.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)).toNat

end

end A256043.P15661791802755252274

/-! ## A256043.P6458692886781943804

`A376607(A028310(2*n))`
-/

namespace A256043.P6458692886781943804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376607 (A028310 (2 * n)).toNat

end

end A256043.P6458692886781943804

/-! ## A256043.P4012809702475199333

`A376607(A028310(n)+n)`
-/

namespace A256043.P4012809702475199333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376607 (A028310 n + (n : ℤ)).toNat

end

end A256043.P4012809702475199333

/-! ## A256043.P6536416300071784056

`A376607(A000007(n)+2*n)`
-/

namespace A256043.P6536416300071784056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376607 (A000007 n + (2 * n : ℤ)).toNat

end

end A256043.P6536416300071784056

/-!
# A256044: 6th row of array in A099390.

The programs for A256044, there is no canonical definition to state claims against.
-/

/-! ## A256044.P10075822168490541807

`A028468(2*n)`
-/

namespace A256044.P10075822168490541807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028468 (2 * n)

end

end A256044.P10075822168490541807

/-! ## A256044.P7368332846556226230

`record[A028468(n)/A033999(n)]`
-/

namespace A256044.P7368332846556226230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028468 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256044.P7368332846556226230

/-! ## A256044.P8918557160251423479

`record[A028468(n)/A266072(n)]`
-/

namespace A256044.P8918557160251423479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028468 n : ℚ) / (A266072 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256044.P8918557160251423479

/-! ## A256044.P9891511771903043950

`gcd(A000038(n), A028468(A004277(n)))`
-/

namespace A256044.P9891511771903043950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A028468 (A004277 n).toNat)

end

end A256044.P9891511771903043950

/-! ## A256044.P11756359169949416702

`A187617(∑[n+3]+6)`
-/

namespace A256044.P11756359169949416702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187617 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A256044.P11756359169949416702

/-!
# A256047: a(n) = A256046(2n+1): order of all-2s configuration on the (2n+1) X (2n+1) sandpile grid graph.

The programs for A256047, there is no canonical definition to state claims against.
-/

/-! ## A256047.P3236869313405939992

`A256046(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256047.P3236869313405939992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256046 (2 * n + 1)

end

end A256047.P3236869313405939992

/-! ## A256047.P5099049566818734149

`record[A256046(A000265(n+1))]`
-/

namespace A256047.P5099049566818734149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256046 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256047.P5099049566818734149

/-! ## A256047.P4607104087612505331

`A368039(A376607(n+1))*A376607(2*n+1)`
-/

namespace A256047.P4607104087612505331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368039 (A376607 (n + 1)).toNat * A376607 (2 * n + 1)

end

end A256047.P4607104087612505331

/-!
# A256051: Coefficients of mock modular form H_1^(4) (divided by 2).

The programs for A256051, there is no canonical definition to state claims against.
-/

/-! ## A256051.P3578776792422033966

`4*A006304(2*n)-A006306(2*n)`
-/

namespace A256051.P3578776792422033966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006304 (2 * n) - A006306 (2 * n)

end

end A256051.P3578776792422033966

/-! ## A256051.P2830681802105511259

`record[A256059(n)]`
-/

namespace A256051.P2830681802105511259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256051.P2830681802105511259

/-! ## A256051.P12652975468167537236

`A256059(2*n)`
-/

namespace A256051.P12652975468167537236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256059 (2 * n)

end

end A256051.P12652975468167537236

/-! ## A256051.P9877435369725687357

`record[A256058(n)/2]`
-/

namespace A256051.P9877435369725687357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256058 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256051.P9877435369725687357

/-! ## A256051.P10246360817266067287

`A256058(2*n)/2`
-/

namespace A256051.P10246360817266067287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256058 (2 * n) : ℚ) / 2

end

end A256051.P10246360817266067287

/-!
# A256052: Coefficients of mock modular form H_2^(4) (divided by 2).

The programs for A256052, there is no canonical definition to state claims against.
-/

/-! ## A256052.P14492800810434360076

`8*A256209(n)`
-/

namespace A256052.P14492800810434360076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A256209 n

end

end A256052.P14492800810434360076

/-! ## A256052.P3876788285389633225

`A000005(A238501(n+1))*A153176(4*n+3)`
-/

namespace A256052.P3876788285389633225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A238501 (n + 1)).toNat * A153176 (4 * n + 3)

end

end A256052.P3876788285389633225

/-!
# A256053: Coefficients of mock modular form H_3^(4) (divided by 2).

The programs for A256053, there is no canonical definition to state claims against.
-/

/-! ## A256053.P3450653918610508099

`A006306(2*n+1)+4*A006304(2*n+1)`
-/

namespace A256053.P3450653918610508099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006306 (2 * n + 1) + 4 * A006304 (2 * n + 1)

end

end A256053.P3450653918610508099

/-! ## A256053.P6760671789580199684

`abs(A256059(Δ[n²]))`
-/

namespace A256053.P6760671789580199684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A256053.P6760671789580199684

/-! ## A256053.P15466119492400245315

`record[-A256059(n+1)]`
-/

namespace A256053.P15466119492400245315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A256059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256053.P15466119492400245315

/-! ## A256053.P1163098869818617570

`-A256059(comp[2*n])`
-/

namespace A256053.P1163098869818617570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A256059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A256053.P1163098869818617570

/-! ## A256053.P10387775357275736372

`record[Δ[-∑[A256059(n)]]]`
-/

namespace A256053.P10387775357275736372
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256053.P10387775357275736372

/-!
# A256055: A256056(n)/2.

The programs for A256055, there is no canonical definition to state claims against.
-/

/-! ## A256055.P1350775621131310885

`A256056(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256055.P1350775621131310885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256056 n : ℚ) / 2

end

end A256055.P1350775621131310885

/-! ## A256055.P4401286338190812923

`A265062(n)-A001222(A298960(n+4))`
-/

namespace A256055.P4401286338190812923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265062 n - A001222 (A298960 (n + 4)).toNat

end

end A256055.P4401286338190812923

/-! ## A256055.P7189116999191031435

`A305148(2*n+3)-A260254(A099003(n+1))`
-/

namespace A256055.P7189116999191031435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305148 (2 * n + 3) - A260254 (A099003 (n + 1)).toNat

end

end A256055.P7189116999191031435

/-!
# A256056: Coefficients of mock modular form H_1^(7) of type 1A.

The programs for A256056, there is no canonical definition to state claims against.
-/

/-! ## A256056.P15056674263620017316

`2*A256055(n)`
-/

namespace A256056.P15056674263620017316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256055 n

end

end A256056.P15056674263620017316

/-! ## A256056.P4946106707717312566

`A256055(n)+record[A256055(A142150(n))]`
-/

namespace A256056.P4946106707717312566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256055 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256055 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256056.P4946106707717312566

/-! ## A256056.P15897062497919640127

`A256055(n)+record[A256055(A253580(n))]`
-/

namespace A256056.P15897062497919640127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256055 (A253580 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256055 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256056.P15897062497919640127

/-!
# A256057: Coefficients of mock modular form H_2^(7) of type 1A, divided by 4.

The programs for A256057, there is no canonical definition to state claims against.
-/

/-! ## A256057.P1965590999368102590

`A347588(2*(n+2))-A343387(A111119(n+1))`
-/

namespace A256057.P1965590999368102590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347588 (2 * (n + 2)) - A343387 (A111119 (n + 1)).toNat

end

end A256057.P1965590999368102590

/-! ## A256057.P2246902733258317484

`A226622(n)+Δ[A093697(A226622(n))]`
-/

namespace A256057.P2246902733258317484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A226622 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226622 n + (f1 (n + 1) - f1 n)

end

end A256057.P2246902733258317484

/-! ## A256057.P6500811932395423825

`A226622(n)+Δ[A279385(A279328(n))]`
-/

namespace A256057.P6500811932395423825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A279328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226622 n + (f1 (n + 1) - f1 n)

end

end A256057.P6500811932395423825

/-! ## A256057.P7701569822969054760

`A027383(A122624(n+1))-A054225(n)`
-/

namespace A256057.P7701569822969054760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (A122624 (n + 1)).toNat - A054225 n

end

end A256057.P7701569822969054760

/-!
# A256058: Coefficients of mock modular form H_1^(2) of type 2A.

The programs for A256058, there is no canonical definition to state claims against.
-/

/-! ## A256058.P5672566614465341055

`2*A256059(n)`
-/

namespace A256058.P5672566614465341055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256059 n

end

end A256058.P5672566614465341055

/-! ## A256058.P16805456812703677701

`-(A256059(abs(n/A033999(n)))/(1/2-1))`
-/

namespace A256058.P16805456812703677701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A256059 (SequenceMachineLib.roundAway |(n : ℚ) / (A033999 n : ℚ)|).toNat : ℚ) / ((1 : ℚ) / 2 - 1))

end

end A256058.P16805456812703677701

/-! ## A256058.P15393130419229586749

`A256059(A032513(n))+A256059(n)`
-/

namespace A256058.P15393130419229586749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256059 (A032513 n).toNat + A256059 n

end

end A256058.P15393130419229586749

/-! ## A256058.P16343337247343244694

`A256059(A055643(n))+A256059(n)`
-/

namespace A256058.P16343337247343244694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256059 (A055643 n).toNat + A256059 n

end

end A256058.P16343337247343244694

/-! ## A256058.P2786493507948683933

`A256059(A118759(n))+A256059(n)`
-/

namespace A256058.P2786493507948683933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256059 (A118759 n).toNat + A256059 n

end

end A256058.P2786493507948683933

/-!
# A256059: Coefficients of mock modular form H_1^(2) of type 2A, divided by 2.

The programs for A256059, there is no canonical definition to state claims against.
-/

/-! ## A256059.P3225458584240717016

`A256058(n)/2`
-/

namespace A256059.P3225458584240717016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256058 n : ℚ) / 2

end

end A256059.P3225458584240717016

/-!
# A256061: Number T(n,k) of 2n-length strings of balanced parentheses of exactly k different types; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A256061, there is no canonical definition to state claims against.
-/

/-! ## A256061.P4374303968947799052

`A131689(n)*A168256(n)`
-/

namespace A256061.P4374303968947799052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A168256 n

end

end A256061.P4374303968947799052

/-! ## A256061.P2748705176991740924

`A233543(n)*A253180(n)`
-/

namespace A256061.P2748705176991740924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A253180 n

end

end A256061.P2748705176991740924

/-! ## A256061.P12529813219385651174

`A002262(n)!*A253180(n)`
-/

namespace A256061.P12529813219385651174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A253180 n

end

end A256061.P12529813219385651174

/-! ## A256061.P14828682433142295123

`A144328(n+1)!*A253180(n)`
-/

namespace A256061.P14828682433142295123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A253180 n

end

end A256061.P14828682433142295123

/-! ## A256061.P6265809430665158671

`A000108(A003056(n))*A131689(n)`
-/

namespace A256061.P6265809430665158671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A003056 n).toNat * A131689 n

end

end A256061.P6265809430665158671

/-! ## A256061.P10412240578906187839

`A089408(A131507(n))*A131689(n)`
-/

namespace A256061.P10412240578906187839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A131507 n).toNat * A131689 n

end

end A256061.P10412240578906187839

/-! ## A256061.P6870325724380682820

`A120588(A123578(n))*A131689(n)`
-/

namespace A256061.P6870325724380682820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A123578 n).toNat * A131689 n

end

end A256061.P6870325724380682820

/-! ## A256061.P1806782785736354300

`A131689(n)*A286784(A057944(n))`
-/

namespace A256061.P1806782785736354300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A286784 (A057944 n).toNat

end

end A256061.P1806782785736354300

/-! ## A256061.P2314738927389788601

`A120588(A002024(n+1))*A131689(n)`
-/

namespace A256061.P2314738927389788601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A002024 (n + 1)).toNat * A131689 n

end

end A256061.P2314738927389788601

/-!
# A256062: a(1) = 1; for n>1, a(n) = smallest number > a(n-1) such that the pairwise differences of elements are distinct, and for 1

The programs for A256062, there is no canonical definition to state claims against.
-/

/-! ## A256062.P13076038954118139115

`∑[A256063(floor(acot(n)+n))]`
-/

namespace A256062.P13076038954118139115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256063 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256062.P13076038954118139115

/-! ## A256062.P8292236386053388850

`A256063(n)+a(n-1)` with `a(0)=1`
-/

namespace A256062.P8292236386053388850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256063 n + a (n - 1)

end

end A256062.P8292236386053388850

/-! ## A256062.P5611542191446254070

`∑[A256063(round(sqrt(n²+1)))]`
-/

namespace A256062.P5611542191446254070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256063 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256062.P5611542191446254070

/-! ## A256062.P3762456539891132341

`∑[A256063(n+1)]+1-A256063(n+1)`
-/

namespace A256062.P3762456539891132341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A256063 (n + 1))

end

end A256062.P3762456539891132341

/-!
# A256063: First differences of A256062.

The programs for A256063, there is no canonical definition to state claims against.
-/

/-! ## A256063.P13573522762617941454

`A256062(n+2)-A256062(n+1)`
-/

namespace A256063.P13573522762617941454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256062 (n + 2) - A256062 (n + 1)

end

end A256063.P13573522762617941454

/-! ## A256063.P4699620093203170023

`Δ[A256062(n+1)]`
-/

namespace A256063.P4699620093203170023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256063.P4699620093203170023

/-! ## A256063.P1016836977232361709

`Δ[record[A256062(A028920(n))]]`
-/

namespace A256063.P1016836977232361709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256062 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256063.P1016836977232361709

/-! ## A256063.P14925232642709564936

`Δ[record[A256062(A134478(n))]]`
-/

namespace A256063.P14925232642709564936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256062 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256063.P14925232642709564936

/-! ## A256063.P10675934965780693313

`Δ[record[A256062(A152271(n))]]`
-/

namespace A256063.P10675934965780693313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256062 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256063.P10675934965780693313

/-!
# A256064: Number T(n,k) of rooted trees with n nodes and colored non-root nodes using exactly k colors; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A256064, there is no canonical definition to state claims against.
-/

/-! ## A256064.P17418414285542339527

`A211402(n)+A083894(A046825(n))`
-/

namespace A256064.P17418414285542339527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n + A083894 (A046825 n).toNat

end

end A256064.P17418414285542339527

/-! ## A256064.P15473283905858234356

`A211402(n)+A102683(A051286(n))`
-/

namespace A256064.P15473283905858234356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n + A102683 (A051286 n).toNat

end

end A256064.P15473283905858234356

/-! ## A256064.P1774842561413156919

`A274846(A211402(n)+A043537(n+1))`
-/

namespace A256064.P1774842561413156919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274846 (A211402 n + A043537 (n + 1)).toNat

end

end A256064.P1774842561413156919

/-! ## A256064.P5034461218515852629

`A285495(A241171(n+1))+A211402(n)`
-/

namespace A256064.P5034461218515852629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285495 (A241171 (n + 1)).toNat + A211402 n

end

end A256064.P5034461218515852629

/-! ## A256064.P4248652220598328136

`A372552(A279066(n+1))+A211402(n)`
-/

namespace A256064.P4248652220598328136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372552 (A279066 (n + 1)).toNat + A211402 n

end

end A256064.P4248652220598328136

/-!
# A256065: Zeroless numbers that when incremented or decremented by the product of their digits produce a square.

The programs for A256065, there is no canonical definition to state claims against.
-/

/-! ## A256065.P17910479645265119148

`filter[A334542(2*(n+1)), A358769(#)]`
-/

namespace A256065.P17910479645265119148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334542 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A256065.P17910479645265119148

/-!
# A256067: Irregular table T(n,k): the number of partitions of n where the least common multiple of all parts equals k.

The programs for A256067, there is no canonical definition to state claims against.
-/

/-! ## A256067.P10375183294372887365

`A256554(n)%A145592(n+1)`
-/

namespace A256067.P10375183294372887365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256554 n) (A145592 (n + 1))

end

end A256067.P10375183294372887365

/-! ## A256067.P15874697671344262474

`A256554(A210709(n)+n)`
-/

namespace A256067.P15874697671344262474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256554 (A210709 n + (n : ℤ)).toNat

end

end A256067.P15874697671344262474

/-! ## A256067.P2154109319439168381

`A256554(n)%A062241(n)`
-/

namespace A256067.P2154109319439168381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256554 n) (A062241 n)

end

end A256067.P2154109319439168381

/-! ## A256067.P10206546758975150147

`and(A256554(n), A293466(n))`
-/

namespace A256067.P10206546758975150147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256554 n) (A293466 n)

end

end A256067.P10206546758975150147

/-! ## A256067.P10045622348345216143

`and(A256554(n), A333924(n))`
-/

namespace A256067.P10045622348345216143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256554 n) (A333924 n)

end

end A256067.P10045622348345216143

/-!
# A256068: Number T(n,k) of rooted identity trees with n nodes and colored non-root nodes using exactly k colors; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A256068, there is no canonical definition to state claims against.
-/

/-! ## A256068.P14681067653948227108

`A322670(n)+A001221(A340986(n)!)`
-/

namespace A256068.P14681067653948227108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322670 n + A001221 (Nat.factorial (A340986 n).toNat)

end

end A256068.P14681067653948227108

/-! ## A256068.P1810639762865924728

`A100143(A234813(n+1))%A055999(A002260(n+1))`
-/

namespace A256068.P1810639762865924728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100143 (A234813 (n + 1)).toNat) (A055999 (A002260 (n + 1)).toNat)

end

end A256068.P1810639762865924728

/-!
# A256069: Number T(n,k) of inequivalent n X n matrices with entry set {1,...,k}, where equivalence means permutations of rows or columns; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A256069, there is no canonical definition to state claims against.
-/

/-! ## A256069.P4896514380437618957

`A108376(A371994(n))`
-/

namespace A256069.P4896514380437618957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108376 (A371994 n).toNat

end

end A256069.P4896514380437618957

/-! ## A256069.P18046418491325959785

`A373624(A287697(n))`
-/

namespace A256069.P18046418491325959785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A287697 n).toNat

end

end A256069.P18046418491325959785

/-! ## A256069.P16337122543987364628

`A261081(A271699(n)²)`
-/

namespace A256069.P16337122543987364628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 (A271699 n ^ 2).toNat

end

end A256069.P16337122543987364628

/-! ## A256069.P2574662895274452142

`A061729(A291774(n+1))`
-/

namespace A256069.P2574662895274452142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061729 (A291774 (n + 1)).toNat

end

end A256069.P2574662895274452142

/-! ## A256069.P10029605234432044718

`A046800(A005811(n+2)*A278073(n))`
-/

namespace A256069.P10029605234432044718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A005811 (n + 2) * A278073 n).toNat

end

end A256069.P10029605234432044718

/-!
# A256070: Number of inequivalent n X n matrices with entry set {1,...,n}, where equivalence means permutations of rows or columns.

The programs for A256070, there is no canonical definition to state claims against.
-/

/-! ## A256070.P4892774484738804904

`A256069(∑[n]+n)`
-/

namespace A256070.P4892774484738804904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256069 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A256070.P4892774484738804904

/-!
# A256071: Number of ordered ways to write n = p + x*(3*x-1)/2, where p is prime or zero, and x is an integer.

The programs for A256071, there is no canonical definition to state claims against.
-/

/-! ## A256071.P13839115199304750720

`A001221(A240213(3*n+4)+A000537(n))`
-/

namespace A256071.P13839115199304750720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A240213 (3 * n + 4) + A000537 n).toNat

end

end A256071.P13839115199304750720

/-! ## A256071.P3202075743833051685

`A353376(A340788(3*n+5)+A279599(n))`
-/

namespace A256071.P3202075743833051685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (A340788 (3 * n + 5) + A279599 n).toNat

end

end A256071.P3202075743833051685

/-!
# A256072: Primes that cannot be represented as x*y + x + y, where x >= y > 1.

The programs for A256072, there is no canonical definition to state claims against.
-/

/-! ## A256072.P3248455404760211968

`p?[A007964(n+1)-1]`
-/

namespace A256072.P3248455404760211968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256072.P3248455404760211968

/-! ## A256072.P15206468835248106002

`eq[A053204(n), A174273(n+1)]`
-/

namespace A256072.P15206468835248106002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P15206468835248106002

/-! ## A256072.P14348917843846385338

`eq[A003415(n), A317145(n+1)]`
-/

namespace A256072.P14348917843846385338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P14348917843846385338

/-! ## A256072.P10612087758082424688

`eq[A018783(n), A317145(n+1)]`
-/

namespace A256072.P10612087758082424688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P10612087758082424688

/-! ## A256072.P5526854666747045222

`eq[A138808(n+1), A209295(n)]`
-/

namespace A256072.P5526854666747045222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P5526854666747045222

/-! ## A256072.P7649005679260693140

`eq[A053204(n), A299150(n+1)]`
-/

namespace A256072.P7649005679260693140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P7649005679260693140

/-! ## A256072.P567571742897257590

`eq[A003415(n), A353799(n+1)]`
-/

namespace A256072.P567571742897257590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P567571742897257590

/-! ## A256072.P12867383860211404014

`eq[A018783(n), A353799(n+1)]`
-/

namespace A256072.P12867383860211404014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P12867383860211404014

/-! ## A256072.P1500839425068300939

`eq[A003415(n), A378444(n+1)]`
-/

namespace A256072.P1500839425068300939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P1500839425068300939

/-! ## A256072.P6204987039381854268

`eq[A003415(n), A378544(n+1)]`
-/

namespace A256072.P6204987039381854268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256072.P6204987039381854268

/-!
# A256074: Squares representable as k*m + k + m, where k >= m > 1 are squares.

The programs for A256074, there is no canonical definition to state claims against.
-/

/-! ## A256074.P12549032234027764635

`A100498(A168252(2*n+3)+A000081(n))`
-/

namespace A256074.P12549032234027764635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100498 (A168252 (2 * n + 3) + A000081 n).toNat

end

end A256074.P12549032234027764635

/-!
# A256075: Non-palindromic balanced numbers (in base 10).

The programs for A256075, there is no canonical definition to state claims against.
-/

/-! ## A256075.P16466618472108027585

`A007095(A256089(n+1))*A059807(A330491(n+1))`
-/

namespace A256075.P16466618472108027585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A256089 (n + 1)).toNat * A059807 (A330491 (n + 1)).toNat

end

end A256075.P16466618472108027585

/-! ## A256075.P2589906045979116711

`A007095(A256089(n+1)^A055642(n))`
-/

namespace A256075.P2589906045979116711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A256089 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A256075.P2589906045979116711

/-! ## A256075.P12671646931147681281

`A007095(A256089(n+1)^A226273(n))`
-/

namespace A256075.P12671646931147681281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A256089 (n + 1) : ℚ) ^ (A226273 n : ℤ))).toNat

end

end A256075.P12671646931147681281

/-! ## A256075.P12862579362637307083

`A007095(C(A256089(n+1), A226273(n)))`
-/

namespace A256075.P12862579362637307083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A256089 (n + 1)).toNat (A226273 n).toNat)

end

end A256075.P12862579362637307083

/-! ## A256075.P14232055988307811966

`A007095(A256089(n+1)+A153761(n+1))`
-/

namespace A256075.P14232055988307811966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A256089 (n + 1) + A153761 (n + 1)).toNat

end

end A256075.P14232055988307811966

/-!
# A256076: Non-palindromic balanced primes.

The programs for A256076, there is no canonical definition to state claims against.
-/

/-! ## A256076.P4704571410390957897

`p?[A256075(n+1)]`
-/

namespace A256076.P4704571410390957897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256076.P4704571410390957897

/-! ## A256076.P12536329262121117400

`p?[record[A256075(A324346(n))]]`
-/

namespace A256076.P12536329262121117400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256076.P12536329262121117400

/-! ## A256076.P5069982789961466180

`p?[record[A256075(A328399(n))]]`
-/

namespace A256076.P5069982789961466180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256076.P5069982789961466180

/-! ## A256076.P8732465404984407977

`p?[record[A256075(A344180(n))]]`
-/

namespace A256076.P8732465404984407977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256076.P8732465404984407977

/-! ## A256076.P5581238013253337840

`p?[record[A256075(A246694(n))]]`
-/

namespace A256076.P5581238013253337840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256076.P5581238013253337840

/-! ## A256076.P7218796716990911403

`filter[A256075(n+1), A010051(#)]`
-/

namespace A256076.P7218796716990911403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A256076.P7218796716990911403

/-! ## A256076.P12990625850554438934

`filter[A256075(n+1), A174897(#)]`
-/

namespace A256076.P12990625850554438934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A256076.P12990625850554438934

/-! ## A256076.P13105158759956878387

`filter[A256075(n+1), A323152(#)]`
-/

namespace A256076.P13105158759956878387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A256076.P13105158759956878387

/-! ## A256076.P3066008486464392356

`filter[A256075(n+1), A323153(#)]`
-/

namespace A256076.P3066008486464392356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A256076.P3066008486464392356

/-! ## A256076.P1489879425998961952

`filter[A256075(n+1), A351957(#)]`
-/

namespace A256076.P1489879425998961952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A256076.P1489879425998961952

/-!
# A256077: Repeat 2^d times the repunit A002275(d); d = 1, 2, 3...

The programs for A256077, the canonical program `A256077.P10462771814391243740` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256077 has offset 1).

The definition of A256077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256077.P18070404769485621863

`A032810(n+1)-A007931(n+1)`
-/

namespace A256077.P18070404769485621863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) - A007931 (n + 1)

end

end A256077.P18070404769485621863

namespace A256077

/-- `A032810(n+1)-A007931(n+1)` -/
def P18070404769485621863.Spec : Prop :=
  ∀ n, P18070404769485621863.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P1017140833369092366

`A032834(n+1)-A032810(n+1)`
-/

namespace A256077.P1017140833369092366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) - A032810 (n + 1)

end

end A256077.P1017140833369092366

namespace A256077

/-- `A032834(n+1)-A032810(n+1)` -/
def P1017140833369092366.Spec : Prop :=
  ∀ n, P1017140833369092366.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P10462771814391243740

`A002275(A000523(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256077

/-- `A002275(A000523(n+2))` -/
def P10462771814391243740.Spec : Prop :=
  ∀ n, P10462771814391243740.a n = A256077 (n + 1)

theorem P10462771814391243740.correct : P10462771814391243740.Spec := by
  intro n
  simp only [A256077, Nat.add_sub_cancel]

end A256077

/-! ## A256077.P12038649383435933964

`A000042(floor(log2(n+2)))`
-/

namespace A256077.P12038649383435933964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (Nat.log 2 (n + 2))

end

end A256077.P12038649383435933964

namespace A256077

/-- `A000042(floor(log2(n+2)))` -/
def P12038649383435933964.Spec : Prop :=
  ∀ n, P12038649383435933964.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P5793651922062169524

`A002275(floor(log2(n+2)))`
-/

namespace A256077.P5793651922062169524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Nat.log 2 (n + 2))

end

end A256077.P5793651922062169524

namespace A256077

/-- `A002275(floor(log2(n+2)))` -/
def P5793651922062169524.Spec : Prop :=
  ∀ n, P5793651922062169524.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P16188743698069822853

`A007088(∑[A135416(n+1)])`
-/

namespace A256077.P16188743698069822853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256077.P16188743698069822853

namespace A256077

/-- `A007088(∑[A135416(n+1)])` -/
def P16188743698069822853.Spec : Prop :=
  ∀ n, P16188743698069822853.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P10975831899135670883

`A007931(∑[A135416(n+1)])`
-/

namespace A256077.P10975831899135670883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256077.P10975831899135670883

namespace A256077

/-- `A007931(∑[A135416(n+1)])` -/
def P10975831899135670883.Spec : Prop :=
  ∀ n, P10975831899135670883.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P8810310869472648448

`A072961(n+1)-A032822(n+1)`
-/

namespace A256077.P8810310869472648448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) - A032822 (n + 1)

end

end A256077.P8810310869472648448

namespace A256077

/-- `A072961(n+1)-A032822(n+1)` -/
def P8810310869472648448.Spec : Prop :=
  ∀ n, P8810310869472648448.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P3463487034642996516

`A256290(n+1)-A032834(n+1)`
-/

namespace A256077.P3463487034642996516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) - A032834 (n + 1)

end

end A256077.P3463487034642996516

namespace A256077

/-- `A256290(n+1)-A032834(n+1)` -/
def P3463487034642996516.Spec : Prop :=
  ∀ n, P3463487034642996516.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P2415760285403729418

`A284920(n+1)-A032917(n+1)`
-/

namespace A256077.P2415760285403729418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) - A032917 (n + 1)

end

end A256077.P2415760285403729418

namespace A256077

/-- `A284920(n+1)-A032917(n+1)` -/
def P2415760285403729418.Spec : Prop :=
  ∀ n, P2415760285403729418.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P2041116352794333766

`A284633(n+1)-A072961(n+1)`
-/

namespace A256077.P2041116352794333766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) - A072961 (n + 1)

end

end A256077.P2041116352794333766

namespace A256077

/-- `A284633(n+1)-A072961(n+1)` -/
def P2041116352794333766.Spec : Prop :=
  ∀ n, P2041116352794333766.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P113249085789891262

`A143967(n+1)-A284632(n+1)`
-/

namespace A256077.P113249085789891262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A284632 (n + 1)

end

end A256077.P113249085789891262

namespace A256077

/-- `A143967(n+1)-A284632(n+1)` -/
def P113249085789891262.Spec : Prop :=
  ∀ n, P113249085789891262.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P12171104860728622409

`A284972(n+1)-A143967(n+1)`
-/

namespace A256077.P12171104860728622409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A143967 (n + 1)

end

end A256077.P12171104860728622409

namespace A256077

/-- `A284972(n+1)-A143967(n+1)` -/
def P12171104860728622409.Spec : Prop :=
  ∀ n, P12171104860728622409.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P13799173431325775442

`A284923(n+1)-A213084(n+1)`
-/

namespace A256077.P13799173431325775442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A213084 (n + 1)

end

end A256077.P13799173431325775442

namespace A256077

/-- `A284923(n+1)-A213084(n+1)` -/
def P13799173431325775442.Spec : Prop :=
  ∀ n, P13799173431325775442.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P10142309882678003842

`A256291(n+1)-A256290(n+1)`
-/

namespace A256077.P10142309882678003842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) - A256290 (n + 1)

end

end A256077.P10142309882678003842

namespace A256077

/-- `A256291(n+1)-A256290(n+1)` -/
def P10142309882678003842.Spec : Prop :=
  ∀ n, P10142309882678003842.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P2190498593892711743

`A256292(n+1)-A256291(n+1)`
-/

namespace A256077.P2190498593892711743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1) - A256291 (n + 1)

end

end A256077.P2190498593892711743

namespace A256077

/-- `A256292(n+1)-A256291(n+1)` -/
def P2190498593892711743.Spec : Prop :=
  ∀ n, P2190498593892711743.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P6005694243823769153

`A256340(n+1)-A256292(n+1)`
-/

namespace A256077.P6005694243823769153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1) - A256292 (n + 1)

end

end A256077.P6005694243823769153

namespace A256077

/-- `A256340(n+1)-A256292(n+1)` -/
def P6005694243823769153.Spec : Prop :=
  ∀ n, P6005694243823769153.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P18157021767973082484

`A256341(n+1)-A256340(n+1)`
-/

namespace A256077.P18157021767973082484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1) - A256340 (n + 1)

end

end A256077.P18157021767973082484

namespace A256077

/-- `A256341(n+1)-A256340(n+1)` -/
def P18157021767973082484.Spec : Prop :=
  ∀ n, P18157021767973082484.a n = A256077 (n + 1)

end A256077

/-! ## A256077.P10103752241312501783

`A284632(n+1)-A276037(n+1)`
-/

namespace A256077.P10103752241312501783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) - A276037 (n + 1)

end

end A256077.P10103752241312501783

namespace A256077

/-- `A284632(n+1)-A276037(n+1)` -/
def P10103752241312501783.Spec : Prop :=
  ∀ n, P10103752241312501783.a n = A256077 (n + 1)

end A256077

/-!
# A256078: Write n in binary, exchange digits '0' <-> '1'.

The programs for A256078, the canonical program `A256078.P7966750837771448166` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256078 has offset 0).

The definition of A256078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256078.P7966750837771448166

`a(n%2)+10*a(floor(n/2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256078

/-- `a(n%2)+10*a(floor(n/2))` -/
def P7966750837771448166.Spec : Prop :=
  ∀ n, (P7966750837771448166.a n : ℤ) = A256078 n

theorem P7966750837771448166.correct : P7966750837771448166.Spec := by
  intro n
  simp only [A256078]

end A256078

/-! ## A256078.P8957017502314279992

`A007088(A035327(n))`
-/

namespace A256078.P8957017502314279992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035327 n).toNat

end

end A256078.P8957017502314279992

namespace A256078

/-- `A007088(A035327(n))` -/
def P8957017502314279992.Spec : Prop :=
  ∀ n, P8957017502314279992.a n = A256078 n

end A256078

/-! ## A256078.P9819224676459438409

`A007088(A000225(A070939(n))-n)`
-/

namespace A256078.P9819224676459438409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (A070939 n).toNat - (n : ℤ)).toNat

end

end A256078.P9819224676459438409

namespace A256078

/-- `A007088(A000225(A070939(n))-n)` -/
def P9819224676459438409.Spec : Prop :=
  ∀ n, P9819224676459438409.a n = A256078 n

end A256078

/-! ## A256078.P13402016073990636943

`A007088(A000079(A070939(n))-(n+1))`
-/

namespace A256078.P13402016073990636943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 (A070939 n).toNat - (n + 1 : ℤ)).toNat

end

end A256078.P13402016073990636943

namespace A256078

/-- `A007088(A000079(A070939(n))-(n+1))` -/
def P13402016073990636943.Spec : Prop :=
  ∀ n, P13402016073990636943.a n = A256078 n

end A256078

/-! ## A256078.P10388070732161872092

`A185544(2*A035327(n))`
-/

namespace A256078.P10388070732161872092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A035327 n).toNat

end

end A256078.P10388070732161872092

namespace A256078

/-- `A185544(2*A035327(n))` -/
def P10388070732161872092.Spec : Prop :=
  ∀ n, P10388070732161872092.a n = A256078 n

end A256078

/-! ## A256078.P12322215020363375767

`A256303(∑[and(n, -n)^log2(3)]+n)`
-/

namespace A256078.P12322215020363375767
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256303 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ))).toNat

end

end A256078.P12322215020363375767

namespace A256078

/-- `A256303(∑[and(n, -n)^log2(3)]+n)` -/
def P12322215020363375767.Spec : Prop :=
  ∀ n, P12322215020363375767.a n = A256078 n

end A256078

/-! ## A256078.P11339066510474390759

`A256303(A005823(n+1))`
-/

namespace A256078.P11339066510474390759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256303 (A005823 (n + 1)).toNat

end

end A256078.P11339066510474390759

namespace A256078

/-- `A256303(A005823(n+1))` -/
def P11339066510474390759.Spec : Prop :=
  ∀ n, P11339066510474390759.a n = A256078 n

end A256078

/-! ## A256078.P13148984315635999857

`A256304(2*∑[and(n, -n)²]+n)`
-/

namespace A256078.P13148984315635999857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A256078.P13148984315635999857

namespace A256078

/-- `A256304(2*∑[and(n, -n)²]+n)` -/
def P13148984315635999857.Spec : Prop :=
  ∀ n, P13148984315635999857.a n = A256078 n

end A256078

/-! ## A256078.P4202376547132439531

`A017281(a(floor(n/2)))-n%2` with `a(0)=1, a(1)=0`
-/

namespace A256078.P4202376547132439531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A017281 (a ⌊(n : ℚ) / 2⌋.toNat).toNat - ((n % 2 : ℕ) : ℤ)

end

end A256078.P4202376547132439531

namespace A256078

/-- `A017281(a(floor(n/2)))-n%2` -/
def P4202376547132439531.Spec : Prop :=
  ∀ n, P4202376547132439531.a n = A256078 n

end A256078

/-! ## A256078.P4340835362864272838

`A256304(A001196(n))`
-/

namespace A256078.P4340835362864272838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A001196 n).toNat

end

end A256078.P4340835362864272838

namespace A256078

/-- `A256304(A001196(n))` -/
def P4340835362864272838.Spec : Prop :=
  ∀ n, P4340835362864272838.a n = A256078 n

end A256078

/-!
# A256079: Increase each (decimal) digit of n by 1, with carry (i.e., '9' becomes '0' and a (further) increment of 1 of the digit to the left).

The programs for A256079, there is no canonical definition to state claims against.
-/

/-! ## A256079.P3916186817244238415

`A064770(A065031(n))+n`
-/

namespace A256079.P3916186817244238415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A065031 n).toNat + (n : ℤ)

end

end A256079.P3916186817244238415

/-!
# A256080: Non-palindromic balanced numbers in base 16.

The programs for A256080, there is no canonical definition to state claims against.
-/

/-! ## A256080.P6286941194642969895

`A102489(A251072(n)*A256075(n+1))`
-/

namespace A256080.P6286941194642969895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A251072 n * A256075 (n + 1)).toNat

end

end A256080.P6286941194642969895

/-! ## A256080.P2331049495521708259

`A102489(A250667(n)*A256075(n+1))`
-/

namespace A256080.P2331049495521708259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A250667 n * A256075 (n + 1)).toNat

end

end A256080.P2331049495521708259

/-! ## A256080.P6518071653645685840

`A102489(A256075(n+1)^A226273(n))`
-/

namespace A256080.P6518071653645685840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (SequenceMachineLib.roundAway ((A256075 (n + 1) : ℚ) ^ (A226273 n : ℤ))).toNat

end

end A256080.P6518071653645685840

/-! ## A256080.P3917023638452389496

`A102489(C(A256075(n+1), A226273(n)))`
-/

namespace A256080.P3917023638452389496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (Nat.choose (A256075 (n + 1)).toNat (A226273 n).toNat)

end

end A256080.P3917023638452389496

/-! ## A256080.P9234657084646850831

`A102489(C(A256075(n+1), A261675(n)))`
-/

namespace A256080.P9234657084646850831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (Nat.choose (A256075 (n + 1)).toNat (A261675 n).toNat)

end

end A256080.P9234657084646850831

/-!
# A256081: Non-palindromic balanced primes in base 2.

The programs for A256081, there is no canonical definition to state claims against.
-/

/-! ## A256081.P10952406887616691217

`p?[A256082(n+1)]`
-/

namespace A256081.P10952406887616691217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256081.P10952406887616691217

/-! ## A256081.P464309956310511726

`record[p?[A256082(A328399(n))]]`
-/

namespace A256081.P464309956310511726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256082 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256081.P464309956310511726

/-! ## A256081.P16560356154988616924

`record[p?[A256082(A246694(n))]]`
-/

namespace A256081.P16560356154988616924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256082 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256081.P16560356154988616924

/-! ## A256081.P8069864264711617640

`p?[A033999(n)*A256082(A328399(n))]`
-/

namespace A256081.P8069864264711617640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A256082 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256081.P8069864264711617640

/-!
# A256082: Non-palindromic balanced numbers in base 2.

The programs for A256082, there is no canonical definition to state claims against.
-/

/-! ## A256082.P18161959135755547445

`filter[A359402(n+1), A178226(#)]`
-/

namespace A256082.P18161959135755547445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A256082.P18161959135755547445

/-! ## A256082.P7062623507503061857

`filter[A359402(n+2), A059841(#)]`
-/

namespace A256082.P7062623507503061857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A256082.P7062623507503061857

/-! ## A256082.P12765666740424966269

`filter[A359402(n+2), A260393(#)]`
-/

namespace A256082.P12765666740424966269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A256082.P12765666740424966269

/-! ## A256082.P1693178626234421038

`filter[A359402(n+2), A260446(#)]`
-/

namespace A256082.P1693178626234421038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260446 (f1 j).toNat = 1) n)

end

end A256082.P1693178626234421038

/-! ## A256082.P10627324186906041118

`filter[A359402(n+2), A267043(#)]`
-/

namespace A256082.P10627324186906041118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A256082.P10627324186906041118

/-!
# A256084: Non-palindromic balanced numbers in base 4.

The programs for A256084, there is no canonical definition to state claims against.
-/

/-! ## A256084.P10669326228912927054

`eq[27, abs(A055949(n))]`
-/

namespace A256084.P10669326228912927054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055949 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256084.P10669326228912927054

/-!
# A256085: Non-palindromic balanced numbers in base 5.

The programs for A256085, there is no canonical definition to state claims against.
-/

/-! ## A256085.P2751388653389769719

`eq[64, abs(A055951(n))]`
-/

namespace A256085.P2751388653389769719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055951 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256085.P2751388653389769719

/-!
# A256087: Non-palindromic balanced numbers in base 7.

The programs for A256087, there is no canonical definition to state claims against.
-/

/-! ## A256087.P8193075439347064282

`A028902(A256075(n+1)^A222616(n+1))`
-/

namespace A256087.P8193075439347064282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (SequenceMachineLib.roundAway ((A256075 (n + 1) : ℚ) ^ (A222616 (n + 1) : ℤ))).toNat

end

end A256087.P8193075439347064282

/-!
# A256089: Non-palindromic balanced numbers in base 9.

The programs for A256089, there is no canonical definition to state claims against.
-/

/-! ## A256089.P159507617815415714

`A028904(∩[A256075(n+1), A007095(n)])`
-/

namespace A256089.P159507617815415714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A256089.P159507617815415714

/-! ## A256089.P12090861306459331362

`A028904(A256075(n+1))*A059807(A330491(n+1))`
-/

namespace A256089.P12090861306459331362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A256075 (n + 1)).toNat * A059807 (A330491 (n + 1)).toNat

end

end A256089.P12090861306459331362

/-! ## A256089.P13987115732381053436

`A028904(A256075(n+1)^A226273(n))`
-/

namespace A256089.P13987115732381053436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (SequenceMachineLib.roundAway ((A256075 (n + 1) : ℚ) ^ (A226273 n : ℤ))).toNat

end

end A256089.P13987115732381053436

/-! ## A256089.P1857375644208701360

`A028904(C(A256075(n+1), A226273(n)))`
-/

namespace A256089.P1857375644208701360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (Nat.choose (A256075 (n + 1)).toNat (A226273 n).toNat)

end

end A256089.P1857375644208701360

/-! ## A256089.P1230950849704819242

`A028904(A256075(n+1)+A153761(n+1))`
-/

namespace A256089.P1230950849704819242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A256075 (n + 1) + A153761 (n + 1)).toNat

end

end A256089.P1230950849704819242

/-!
# A256090: Non-palindromic balanced primes in base 16.

The programs for A256090, there is no canonical definition to state claims against.
-/

/-! ## A256090.P7932371873891487425

`p?[A256080(n+1)]`
-/

namespace A256090.P7932371873891487425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256090.P7932371873891487425

/-!
# A256092: G.f.: (2*x)/((1-(1-8*x)^(1/4))*(1-8*x)^(3/4)).

The programs for A256092, there is no canonical definition to state claims against.
-/

/-! ## A256092.P4833337603477492463

`xor(1, A054899(A163072(n)))`
-/

namespace A256092.P4833337603477492463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A054899 (A163072 n).toNat)

end

end A256092.P4833337603477492463

/-!
# A256093: G.f.: 2 - x*2/(1 - (1-8*x)^(1/4)).

The programs for A256093, there is no canonical definition to state claims against.
-/

/-! ## A256093.P9074905270319395405

`∑[A165190(A221174(n)²)]`
-/

namespace A256093.P9074905270319395405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A221174 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256093.P9074905270319395405

/-!
# A256094: Alternating row sums of array A255250.

The programs for A256094, there is no canonical definition to state claims against.
-/

/-! ## A256094.P4790462892315765174

`A185977(∑[∑[A055334(n+1)^n]])`
-/

namespace A256094.P4790462892315765174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055334 (n + 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256094.P4790462892315765174

/-! ## A256094.P939525616356747135

`A000120(A277646(n+1)+A084214(n))`
-/

namespace A256094.P939525616356747135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277646 (n + 1) + A084214 n).toNat

end

end A256094.P939525616356747135

/-! ## A256094.P16285152369318296862

`A076622(A236854(n+1)+A065856(n))`
-/

namespace A256094.P16285152369318296862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076622 (A236854 (n + 1) + A065856 n).toNat

end

end A256094.P16285152369318296862

/-! ## A256094.P6340073474696669006

`A115384(n+4)-A001285(A317100(n+1))`
-/

namespace A256094.P6340073474696669006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (n + 4) - A001285 (A317100 (n + 1)).toNat

end

end A256094.P6340073474696669006

/-! ## A256094.P2807827659301515712

`A000120(A054887(n+1)*A115092(n+1)+n+1)`
-/

namespace A256094.P2807827659301515712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A054887 (n + 1) * A115092 (n + 1) + (n + 1 : ℤ)).toNat

end

end A256094.P2807827659301515712

/-!
# A256095: Triangle of greatest common divisors of two triangular numbers (A000217).

The programs for A256095, the canonical program `A256095.P12103393017234258254` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256095 has offset 0).

The definition of A256095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256095.P12103393017234258254

`gcd(A049780(n), A057944(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A256095

/-- `gcd(A049780(n), A057944(n))` -/
def P12103393017234258254.Spec : Prop :=
  ∀ n, (P12103393017234258254.a n : ℤ) = A256095 n

theorem P12103393017234258254.correct : P12103393017234258254.Spec := by
  intro n
  simp only [A256095]

end A256095

/-! ## A256095.P15316749883263112121

`gcd(A112367(n), A367964(n))`
-/

namespace A256095.P15316749883263112121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112367 n) (A367964 n)

end

end A256095.P15316749883263112121

namespace A256095

/-- `gcd(A112367(n), A367964(n))` -/
def P15316749883263112121.Spec : Prop :=
  ∀ n, (P15316749883263112121.a n : ℤ) = A256095 n

end A256095

/-! ## A256095.P662100351273179198

`gcd(n-A061885(n), A000217(A061885(n)))`
-/

namespace A256095.P662100351273179198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A061885 n) (A000217 (A061885 n).toNat)

end

end A256095.P662100351273179198

namespace A256095

/-- `gcd(n-A061885(n), A000217(A061885(n)))` -/
def P662100351273179198.Spec : Prop :=
  ∀ n, (P662100351273179198.a n : ℤ) = A256095 n

end A256095

/-! ## A256095.P17638208486483180641

`gcd(n+1-A002260(n+1), A161680(A002260(n+1)))`
-/

namespace A256095.P17638208486483180641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A002260 (n + 1)) (A161680 (A002260 (n + 1)).toNat)

end

end A256095.P17638208486483180641

namespace A256095

/-- `gcd(n+1-A002260(n+1), A161680(A002260(n+1)))` -/
def P17638208486483180641.Spec : Prop :=
  ∀ n, (P17638208486483180641.a n : ℤ) = A256095 n

end A256095

/-! ## A256095.P2568719371083147248

`gcd(A002262(n)-n, A161680(A002262(n+1)))`
-/

namespace A256095.P2568719371083147248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n - (n : ℤ)) (A161680 (A002262 (n + 1)).toNat)

end

end A256095.P2568719371083147248

namespace A256095

/-- `gcd(A002262(n)-n, A161680(A002262(n+1)))` -/
def P2568719371083147248.Spec : Prop :=
  ∀ n, (P2568719371083147248.a n : ℤ) = A256095 n

end A256095

/-!
# A256096: Expansion of (4+3*x)/(1+3*x).

The programs for A256096, the canonical program `A256096.P18003513400214883330` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256096 has offset 0).

The definition of A256096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+3x)/(1+3x))` (program `A256096.P18003513400214883330`, by `A256096.P18003513400214883330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256096.P18003513400214883330

`ogf((4+3x)/(1+3x))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256096

/-- `ogf((4+3x)/(1+3x))` -/
def P18003513400214883330.Spec : Prop :=
  ∀ n, P18003513400214883330.a n = A256096 n

theorem P18003513400214883330.correct : P18003513400214883330.Spec := by
  intro n
  simp only [A256096]

end A256096

/-! ## A256096.P4265687195087099225

`3*or(1, -a(n-1))` with `a(0)=4`
-/

namespace A256096.P4265687195087099225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * Int.lor 1 (-a (n - 1))

end

end A256096.P4265687195087099225

namespace A256096

/-- `3*or(1, -a(n-1))` -/
def P4265687195087099225.Spec : Prop :=
  ∀ n, P4265687195087099225.a n = A256096 n

end A256096

/-! ## A256096.P3500825087172989158

`3*(char[1]-a(n-1))` with `a(0)=4`
-/

namespace A256096.P3500825087172989158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A256096.P3500825087172989158

namespace A256096

/-- `3*(char[1]-a(n-1))` -/
def P3500825087172989158.Spec : Prop :=
  ∀ n, P3500825087172989158.a n = A256096 n

end A256096

/-! ## A256096.P12888751132764560363

`C(2, n+2)-(-3)^(n+1)`
-/

namespace A256096.P12888751132764560363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - (-3) ^ (n + 1)

end

end A256096.P12888751132764560363

namespace A256096

/-- `C(2, n+2)-(-3)^(n+1)` -/
def P12888751132764560363.Spec : Prop :=
  ∀ n, P12888751132764560363.a n = A256096 n

end A256096

/-! ## A256096.P17914958867849804804

`3*floor(1/n-a(n-1))` with `a(0)=4`
-/

namespace A256096.P17914958867849804804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * ⌊1 / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A256096.P17914958867849804804

namespace A256096

/-- `3*floor(1/n-a(n-1))` -/
def P17914958867849804804.Spec : Prop :=
  ∀ n, P17914958867849804804.a n = A256096 n

end A256096

/-! ## A256096.P9854353335993981371

`floor(1/(n+1))-(-3)^(n+1)`
-/

namespace A256096.P9854353335993981371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ - (-3) ^ (n + 1)

end

end A256096.P9854353335993981371

namespace A256096

/-- `floor(1/(n+1))-(-3)^(n+1)` -/
def P9854353335993981371.Spec : Prop :=
  ∀ n, P9854353335993981371.a n = A256096 n

end A256096

/-! ## A256096.P11926519832477923261

`or(3, a(n-1)-4*a(n-1))` with `a(0)=4`
-/

namespace A256096.P11926519832477923261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor 3 (a (n - 1) - 4 * a (n - 1))

end

end A256096.P11926519832477923261

namespace A256096

/-- `or(3, a(n-1)-4*a(n-1))` -/
def P11926519832477923261.Spec : Prop :=
  ∀ n, P11926519832477923261.a n = A256096 n

end A256096

/-! ## A256096.P14007704580706650241

`floor(a(n-1)^(-2)-(-3)^(n+1))` with `a(0)=4`
-/

namespace A256096.P14007704580706650241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℚ) ^ (-2 : ℤ) - ((-3) ^ (n + 1) : ℚ)⌋

end

end A256096.P14007704580706650241

namespace A256096

/-- `floor(a(n-1)^(-2)-(-3)^(n+1))` -/
def P14007704580706650241.Spec : Prop :=
  ∀ n, P14007704580706650241.a n = A256096 n

end A256096

/-! ## A256096.P18340656173665206993

`3*(gcd(2, a(n-1))-(a(n-1)+1))` with `a(0)=4`
-/

namespace A256096.P18340656173665206993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * ((Int.gcd 2 (a (n - 1)) : ℤ) - (a (n - 1) + 1))

end

end A256096.P18340656173665206993

namespace A256096

/-- `3*(gcd(2, a(n-1))-(a(n-1)+1))` -/
def P18340656173665206993.Spec : Prop :=
  ∀ n, P18340656173665206993.a n = A256096 n

end A256096

/-! ## A256096.P1517475636100834801

`-(A020639(A000010(n+2))-5)^(n+1)`
-/

namespace A256096.P1517475636100834801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A020639 (A000010 (n + 2)).toNat - 5) ^ (n + 1))

end

end A256096.P1517475636100834801

namespace A256096

/-- `-(A020639(A000010(n+2))-5)^(n+1)` -/
def P1517475636100834801.Spec : Prop :=
  ∀ n, P1517475636100834801.a n = A256096 n

end A256096

/-! ## A256096.P1347682126292037009

`(A000244(n+1)+A000007(n))*A033999(n)`
-/

namespace A256096.P1347682126292037009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) + A000007 n) * A033999 n

end

end A256096.P1347682126292037009

namespace A256096

/-- `(A000244(n+1)+A000007(n))*A033999(n)` -/
def P1347682126292037009.Spec : Prop :=
  ∀ n, P1347682126292037009.a n = A256096 n

end A256096

/-! ## A256096.P13166707958873343013

`(A000244(n+1)+A000007(n))*A062157(n+1)`
-/

namespace A256096.P13166707958873343013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) + A000007 n) * A062157 (n + 1)

end

end A256096.P13166707958873343013

namespace A256096

/-- `(A000244(n+1)+A000007(n))*A062157(n+1)` -/
def P13166707958873343013.Spec : Prop :=
  ∀ n, P13166707958873343013.a n = A256096 n

end A256096

/-!
# A256097: Numerators of a rational guess r(n) for the input for Newton's algorithm to find sqrt(n).

The programs for A256097, the canonical program `A256097.P7490933180745882332` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256097 has offset 1).

The definition of A256097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256097.P7490933180745882332

`ceil(sqrt(n+1)*A256098(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A256097

/-- `ceil(sqrt(n+1)*A256098(n+1))` -/
def P7490933180745882332.Spec : Prop :=
  ∀ n, P7490933180745882332.a n = A256097 (n + 1)

theorem P7490933180745882332.correct : P7490933180745882332.Spec := by
  intro n
  simp only [A256097, Nat.add_sub_cancel]

end A256097

/-! ## A256097.P7568698646654171293

`A000196((n+2)*A256098(n+1)²)`
-/

namespace A256097.P7568698646654171293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 2 : ℤ) * A256098 (n + 1) ^ 2).toNat

end

end A256097.P7568698646654171293

namespace A256097

/-- `A000196((n+2)*A256098(n+1)²)` -/
def P7568698646654171293.Spec : Prop :=
  ∀ n, P7568698646654171293.a n = A256097 (n + 1)

end A256097

/-!
# A256098: Denominators for the numerators A256097.

The programs for A256098, the canonical program `A256098.P9109279517395957021` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256098 has offset 1).

The definition of A256098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256098.P1664705005667363190

`ceil(A256097(n+1)/sqrt(n+2))`
-/

namespace A256098.P1664705005667363190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A256097 (n + 1) : ℝ) / Real.sqrt (n + 2 : ℝ)⌉

end

end A256098.P1664705005667363190

namespace A256098

/-- `ceil(A256097(n+1)/sqrt(n+2))` -/
def P1664705005667363190.Spec : Prop :=
  ∀ n, P1664705005667363190.a n = A256098 (n + 1)

end A256098

/-! ## A256098.P9109279517395957021

`A054531(record[A056023(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256098

/-- `A054531(record[A056023(n+1)])` -/
def P9109279517395957021.Spec : Prop :=
  ∀ n, P9109279517395957021.a n = A256098 (n + 1)

theorem P9109279517395957021.correct : P9109279517395957021.Spec := by
  intro n
  simp only [A256098, Nat.add_sub_cancel]

end A256098

/-! ## A256098.P13469438754454871421

`A277227(record[A056023(n+1)+1])`
-/

namespace A256098.P13469438754454871421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256098.P13469438754454871421

namespace A256098

/-- `A277227(record[A056023(n+1)+1])` -/
def P13469438754454871421.Spec : Prop :=
  ∀ n, P13469438754454871421.a n = A256098 (n + 1)

end A256098

/-! ## A256098.P18259900330171912785

`A277227(lt[n, A213205(n+1)]+2)`
-/

namespace A256098.P18259900330171912785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A256098.P18259900330171912785

namespace A256098

/-- `A277227(lt[n, A213205(n+1)]+2)` -/
def P18259900330171912785.Spec : Prop :=
  ∀ n, P18259900330171912785.a n = A256098 (n + 1)

end A256098

/-! ## A256098.P16964119846396256726

`A341314(comp[round(sqrt(n+1))²+n]+1)`
-/

namespace A256098.P16964119846396256726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341314 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A256098.P16964119846396256726

namespace A256098

/-- `A341314(comp[round(sqrt(n+1))²+n]+1)` -/
def P16964119846396256726.Spec : Prop :=
  ∀ n, P16964119846396256726.a n = A256098 (n + 1)

end A256098

