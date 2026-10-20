import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A389001: Expansion of e.g.f. (1/2) * ( log(1 + x) / (1 - x) )^2.

The programs for A389001, there is no canonical definition to state claims against.
-/

/-! ## A389001.P12139263049645768712

`A389008(A340266(n+1))`
-/

namespace A389001.P12139263049645768712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389008 (A340266 (n + 1)).toNat

end

end A389001.P12139263049645768712

/-! ## A389001.P5594532668667638160

`A389008(A000217(n+2)+2)`
-/

namespace A389001.P5594532668667638160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389008 (A000217 (n + 2) + 2).toNat

end

end A389001.P5594532668667638160

/-!
# A389002: Expansion of e.g.f. (1/6) * ( log(1 + x) / (1 - x) )^3.

The programs for A389002, there is no canonical definition to state claims against.
-/

/-! ## A389002.P10881491239379267606

`A389008(A167614(n+2))`
-/

namespace A389002.P10881491239379267606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389008 (A167614 (n + 2)).toNat

end

end A389002.P10881491239379267606

/-!
# A389005: Lexicographically earliest sequence of palindromes in base 10 such that the sums of three consecutive terms are all distinct.

The programs for A389005, there is no canonical definition to state claims against.
-/

/-! ## A389005.P15676229969439846886

`A076641(A343609(3*n+2)%A362981(2*n+5))`
-/

namespace A389005.P15676229969439846886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 (Int.tmod (A343609 (3 * n + 2)) (A362981 (2 * n + 5))).toNat

end

end A389005.P15676229969439846886

/-!
# A389006: a(n) = A389005(n) + A389005(n+1) + A389005(n+2).

The programs for A389006, there is no canonical definition to state claims against.
-/

/-! ## A389006.P9126223079280282230

`A389005(n)+A389005(n+1)+A389005(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389006.P9126223079280282230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389005 n + A389005 (n + 1) + A389005 (n + 2)

end

end A389006.P9126223079280282230

/-! ## A389006.P9991479298238679037

`Δ[A025469(A325676(n)+1)]+n`
-/

namespace A389006.P9991479298238679037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A325676 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A389006.P9991479298238679037

/-! ## A389006.P10798270168644106117

`Δ[A025469(C(A075195(n+1), 2))]+n`
-/

namespace A389006.P10798270168644106117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (Nat.choose (A075195 (n + 1)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A389006.P10798270168644106117

/-! ## A389006.P3811755251610243708

`A273887(n+2)-A057427(A341529(n+1))`
-/

namespace A389006.P3811755251610243708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273887 (n + 2) - A057427 (A341529 (n + 1)).toNat

end

end A389006.P3811755251610243708

/-!
# A389007: Semiprimes whose least decimal digit is 2.

The programs for A389007, the canonical program `A389007.P15467769822345660334` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389007 has offset 1).

The definition of A389007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389007.P15467769822345660334

`∩[A001358(n+1), A084374(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A389007

/-- `∩[A001358(n+1), A084374(n+1)]` -/
def P15467769822345660334.Spec : Prop :=
  ∀ n, (P15467769822345660334.a n : ℤ) = A389007 (n + 1)

theorem P15467769822345660334.correct : P15467769822345660334.Spec := by
  intro n
  simp only [A389007, Nat.add_sub_cancel]

end A389007

/-! ## A389007.P13258307939729862957

`filter[A084374(n+1), A064911(#)]`
-/

namespace A389007.P13258307939729862957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A389007.P13258307939729862957

namespace A389007

/-- `filter[A084374(n+1), A064911(#)]` -/
def P13258307939729862957.Spec : Prop :=
  ∀ n, P13258307939729862957.a n = A389007 (n + 1)

end A389007

/-! ## A389007.P2401293839593318637

`∩[A084374(n+1), A112381(n+1)]`
-/

namespace A389007.P2401293839593318637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P2401293839593318637

namespace A389007

/-- `∩[A084374(n+1), A112381(n+1)]` -/
def P2401293839593318637.Spec : Prop :=
  ∀ n, (P2401293839593318637.a n : ℤ) = A389007 (n + 1)

end A389007

/-! ## A389007.P7360692945616824048

`filter[A284063(n+1), A064911(#)]`
-/

namespace A389007.P7360692945616824048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A389007.P7360692945616824048

namespace A389007

/-- `filter[A284063(n+1), A064911(#)]` -/
def P7360692945616824048.Spec : Prop :=
  ∀ n, P7360692945616824048.a n = A389007 (n + 1)

end A389007

/-! ## A389007.P13606619767599726605

`∩[A001358(n+1), A284063(n+1)]`
-/

namespace A389007.P13606619767599726605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P13606619767599726605

namespace A389007

/-- `∩[A001358(n+1), A284063(n+1)]` -/
def P13606619767599726605.Spec : Prop :=
  ∀ n, (P13606619767599726605.a n : ℤ) = A389007 (n + 1)

end A389007

/-! ## A389007.P16640995938352749195

`∩[A084374(n+1), A284063(n+1)]`
-/

namespace A389007.P16640995938352749195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P16640995938352749195

namespace A389007

/-- `∩[A084374(n+1), A284063(n+1)]` -/
def P16640995938352749195.Spec : Prop :=
  ∀ n, (P16640995938352749195.a n : ℤ) = A389007 (n + 1)

end A389007

/-! ## A389007.P1188817192599307582

`∩[A112381(n+1), A284063(n+1)]`
-/

namespace A389007.P1188817192599307582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P1188817192599307582

namespace A389007

/-- `∩[A112381(n+1), A284063(n+1)]` -/
def P1188817192599307582.Spec : Prop :=
  ∀ n, (P1188817192599307582.a n : ℤ) = A389007 (n + 1)

end A389007

/-! ## A389007.P11725447468794053482

`∩[A084374(n+1), A176540(n+1)]`
-/

namespace A389007.P11725447468794053482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P11725447468794053482

namespace A389007

/-- `∩[A084374(n+1), A176540(n+1)]` -/
def P11725447468794053482.Spec : Prop :=
  ∀ n, (P11725447468794053482.a n : ℤ) = A389007 (n + 1)

end A389007

/-! ## A389007.P14396756740288081227

`∩[A176540(n+1), A284063(n+1)]`
-/

namespace A389007.P14396756740288081227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P14396756740288081227

namespace A389007

/-- `∩[A176540(n+1), A284063(n+1)]` -/
def P14396756740288081227.Spec : Prop :=
  ∀ n, (P14396756740288081227.a n : ℤ) = A389007 (n + 1)

end A389007

/-! ## A389007.P7516191072805177705

`∩[A084374(n+1), A208273(n+1)]`
-/

namespace A389007.P7516191072805177705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P7516191072805177705

namespace A389007

/-- `∩[A084374(n+1), A208273(n+1)]` -/
def P7516191072805177705.Spec : Prop :=
  ∀ n, (P7516191072805177705.a n : ℤ) = A389007 (n + 1)

end A389007

/-!
# A389008: Triangle read by rows: T(0,0) = 1, T(n,0) = 0 for n > 0; T(n,k) = (1/(k-1)!) * Sum_{j=k..n} binomial(n,j) * Stirling1(j,k) * (n-j+k-1)!, 0 <= k <= n.

The programs for A389008, there is no canonical definition to state claims against.
-/

/-! ## A389008.P13123619945799258304

`A318407(A360205(n))`
-/

namespace A389008.P13123619945799258304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318407 (A360205 n).toNat

end

end A389008.P13123619945799258304

/-! ## A389008.P7942084466937873510

`A116511(A266183(n+2))`
-/

namespace A389008.P7942084466937873510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116511 (A266183 (n + 2)).toNat

end

end A389008.P7942084466937873510

/-! ## A389008.P8441644242934873103

`A333627(A370124(n+2)+A256893(n))`
-/

namespace A389008.P8441644242934873103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A370124 (n + 2) + A256893 n).toNat

end

end A389008.P8441644242934873103

/-! ## A389008.P2142733920962177517

`A329869(A143395(n))%A214577(n+1)`
-/

namespace A389008.P2142733920962177517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329869 (A143395 n).toNat) (A214577 (n + 1))

end

end A389008.P2142733920962177517

/-!
# A389065: Numbers that are neither prime powers nor powerful.

The programs for A389065, the canonical program `A389065.P446033477229377007` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389065 has offset 1).

The definition of A389065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389065.P14829646936906713353

`sqrt(A387254(n+1))`
-/

namespace A389065.P14829646936906713353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A387254 (n + 1) : ℝ)

end

end A389065.P14829646936906713353

namespace A389065

/-- `sqrt(A387254(n+1))` -/
def P14829646936906713353.Spec : Prop :=
  ∀ n, P14829646936906713353.a n = (A389065 (n + 1) : ℝ)

end A389065

/-! ## A389065.P446033477229377007

`filter[A052485(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389065

/-- `filter[A052485(n+1), A005171(#)]` -/
def P446033477229377007.Spec : Prop :=
  ∀ n, P446033477229377007.a n = A389065 (n + 1)

theorem P446033477229377007.correct : P446033477229377007.Spec := by
  intro n
  simp only [A389065, Nat.add_sub_cancel]

end A389065

/-! ## A389065.P10612606152020315249

`filter[A052485(n+1), A066247(#)]`
-/

namespace A389065.P10612606152020315249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A389065.P10612606152020315249

namespace A389065

/-- `filter[A052485(n+1), A066247(#)]` -/
def P10612606152020315249.Spec : Prop :=
  ∀ n, P10612606152020315249.a n = A389065 (n + 1)

end A389065

/-! ## A389065.P15888124585595905944

`filter[A052485(n+1), A174898(#)]`
-/

namespace A389065.P15888124585595905944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A389065.P15888124585595905944

namespace A389065

/-- `filter[A052485(n+1), A174898(#)]` -/
def P15888124585595905944.Spec : Prop :=
  ∀ n, P15888124585595905944.a n = A389065 (n + 1)

end A389065

/-! ## A389065.P17064857549893700116

`filter[A052485(n+1), A202238(#)]`
-/

namespace A389065.P17064857549893700116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A389065.P17064857549893700116

namespace A389065

/-- `filter[A052485(n+1), A202238(#)]` -/
def P17064857549893700116.Spec : Prop :=
  ∀ n, P17064857549893700116.a n = A389065 (n + 1)

end A389065

/-! ## A389065.P14930196688444451390

`∩[A002808(n+1), A052485(n+1)]`
-/

namespace A389065.P14930196688444451390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P14930196688444451390

namespace A389065

/-- `∩[A002808(n+1), A052485(n+1)]` -/
def P14930196688444451390.Spec : Prop :=
  ∀ n, (P14930196688444451390.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P7638779318240598508

`∩[A018252(n+1), A052485(n+1)]`
-/

namespace A389065.P7638779318240598508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P7638779318240598508

namespace A389065

/-- `∩[A018252(n+1), A052485(n+1)]` -/
def P7638779318240598508.Spec : Prop :=
  ∀ n, (P7638779318240598508.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P9070236442854056025

`∩[A024619(n+1), A052485(n+1)]`
-/

namespace A389065.P9070236442854056025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P9070236442854056025

namespace A389065

/-- `∩[A024619(n+1), A052485(n+1)]` -/
def P9070236442854056025.Spec : Prop :=
  ∀ n, (P9070236442854056025.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P5552850052508233304

`∩[A052485(n+1), A056653(n+1)]`
-/

namespace A389065.P5552850052508233304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P5552850052508233304

namespace A389065

/-- `∩[A052485(n+1), A056653(n+1)]` -/
def P5552850052508233304.Spec : Prop :=
  ∀ n, (P5552850052508233304.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P6873327809924569163

`∩[A052485(n+1), A080257(n+1)]`
-/

namespace A389065.P6873327809924569163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P6873327809924569163

namespace A389065

/-- `∩[A052485(n+1), A080257(n+1)]` -/
def P6873327809924569163.Spec : Prop :=
  ∀ n, (P6873327809924569163.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P3359100339708337722

`∩[A052485(n+1), A089229(n+1)]`
-/

namespace A389065.P3359100339708337722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P3359100339708337722

namespace A389065

/-- `∩[A052485(n+1), A089229(n+1)]` -/
def P3359100339708337722.Spec : Prop :=
  ∀ n, (P3359100339708337722.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P2049635028213820989

`∩[A052485(n+1), A106543(n+1)]`
-/

namespace A389065.P2049635028213820989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P2049635028213820989

namespace A389065

/-- `∩[A052485(n+1), A106543(n+1)]` -/
def P2049635028213820989.Spec : Prop :=
  ∀ n, (P2049635028213820989.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P6954763588701893104

`∩[A052485(n+1), A139118(n+1)]`
-/

namespace A389065.P6954763588701893104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P6954763588701893104

namespace A389065

/-- `∩[A052485(n+1), A139118(n+1)]` -/
def P6954763588701893104.Spec : Prop :=
  ∀ n, (P6954763588701893104.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P8329965186435008151

`∩[A052485(n+1), A141468(n+1)]`
-/

namespace A389065.P8329965186435008151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P8329965186435008151

namespace A389065

/-- `∩[A052485(n+1), A141468(n+1)]` -/
def P8329965186435008151.Spec : Prop :=
  ∀ n, (P8329965186435008151.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P3946365999859825792

`∩[A052485(n+1), A268388(n+1)]`
-/

namespace A389065.P3946365999859825792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P3946365999859825792

namespace A389065

/-- `∩[A052485(n+1), A268388(n+1)]` -/
def P3946365999859825792.Spec : Prop :=
  ∀ n, (P3946365999859825792.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P8415981669370648363

`eq[3, A389146(n)]`
-/

namespace A389065.P8415981669370648363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A389065.P8415981669370648363

namespace A389065

/-- `eq[3, A389146(n)]` -/
def P8415981669370648363.Spec : Prop :=
  ∀ n, (P8415981669370648363.a n : ℤ) = A389065 (n + 1)

end A389065

/-! ## A389065.P3826490082646728702

`filter[A052485(n+1), A143731(#)]`
-/

namespace A389065.P3826490082646728702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A389065.P3826490082646728702

namespace A389065

/-- `filter[A052485(n+1), A143731(#)]` -/
def P3826490082646728702.Spec : Prop :=
  ∀ n, P3826490082646728702.a n = A389065 (n + 1)

end A389065

/-! ## A389065.P8443930248167396717

`∩[A052485(n+1), A111774(n+1)]`
-/

namespace A389065.P8443930248167396717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389065.P8443930248167396717

namespace A389065

/-- `∩[A052485(n+1), A111774(n+1)]` -/
def P8443930248167396717.Spec : Prop :=
  ∀ n, (P8443930248167396717.a n : ℤ) = A389065 (n + 1)

end A389065

/-!
# A389072: Möbius transform of A325974, where A325974 is the arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}.

The programs for A389072, the canonical program `A389072.P9493856441358522576` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389072 has offset 1).

The definition of A389072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388286, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389072.P9493856441358522576

`n+1-A388286(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A389072

/-- `n+1-A388286(n+1)` -/
def P9493856441358522576.Spec : Prop :=
  ∀ n, P9493856441358522576.a n = A389072 (n + 1)

theorem P9493856441358522576.correct : P9493856441358522576.Spec := by
  intro n
  simp only [A389072, Nat.add_sub_cancel]

end A389072

/-! ## A389072.P8387162388379794316

`∑{d}[n+1, A008683(#)*A325974((n+1)/#)]`
-/

namespace A389072.P8387162388379794316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A325974 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389072.P8387162388379794316

namespace A389072

/-- `∑{d}[n+1, A008683(#)*A325974((n+1)/#)]` -/
def P8387162388379794316.Spec : Prop :=
  ∀ n, P8387162388379794316.a n = A389072 (n + 1)

end A389072

/-!
# A389073: a(n) = sigma(A332818(n)), where sigma is the sum of divisors, and A332818(n) = A108548(A003961(A332808(n))) [a special prime shift].

The programs for A389073, there is no canonical definition to state claims against.
-/

/-! ## A389073.P10131966877583998361

`A389081(n+1)/(n+1)`
-/

namespace A389073.P10131966877583998361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389081 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A389073.P10131966877583998361

/-! ## A389073.P317556558306169178

`∑{d}[n+1, A332818(#)]`
-/

namespace A389073.P317556558306169178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332818 d

end

end A389073.P317556558306169178

/-! ## A389073.P12049538160001464502

`A000203(A332818(n+1))`
-/

namespace A389073.P12049538160001464502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A332818 (n + 1)).toNat

end

end A389073.P12049538160001464502

/-! ## A389073.P1964376848878797553

`A300826(2*n+1)+A039653(A332818(n+1))`
-/

namespace A389073.P1964376848878797553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (2 * n + 1) + A039653 (A332818 (n + 1)).toNat

end

end A389073.P1964376848878797553

/-! ## A389073.P17631827105782905951

`A113184(2*A389082(n+1)/A000203(n+1))`
-/

namespace A389073.P17631827105782905951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (SequenceMachineLib.roundAway (2 * ((A389082 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)))).toNat

end

end A389073.P17631827105782905951

/-!
# A389074: Numerator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

The programs for A389074, the canonical program `A389074.P18108287681303167250` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389074 has offset 1).

The definition of A389074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389074.P18108287681303167250

`A034448(n+1)/A323159(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A389074

/-- `A034448(n+1)/A323159(n+1)` -/
def P18108287681303167250.Spec : Prop :=
  ∀ n, P18108287681303167250.a n = (A389074 (n + 1) : ℚ)

end A389074

/-! ## A389074.P2514618168730233528

`A158274(A003557(n+1))`
-/

namespace A389074.P2514618168730233528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (A003557 (n + 1)).toNat

end

end A389074.P2514618168730233528

namespace A389074

/-- `A158274(A003557(n+1))` -/
def P2514618168730233528.Spec : Prop :=
  ∀ n, P2514618168730233528.a n = A389074 (n + 1)

end A389074

/-! ## A389074.P733690987030790737

`A389075(n+1)+A389162(n+1)/A323159(n+1)`
-/

namespace A389074.P733690987030790737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389075 (n + 1) : ℚ) + (A389162 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389074.P733690987030790737

namespace A389074

/-- `A389075(n+1)+A389162(n+1)/A323159(n+1)` -/
def P733690987030790737.Spec : Prop :=
  ∀ n, P733690987030790737.a n = (A389074 (n + 1) : ℚ)

end A389074

/-! ## A389074.P6076936213101245565

`A034448(n+1)/A048250(n+1)*A389075(n+1)`
-/

namespace A389074.P6076936213101245565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A389075 (n + 1) : ℚ)

end

end A389074.P6076936213101245565

namespace A389074

/-- `A034448(n+1)/A048250(n+1)*A389075(n+1)` -/
def P6076936213101245565.Spec : Prop :=
  ∀ n, P6076936213101245565.a n = (A389074 (n + 1) : ℚ)

end A389074

/-! ## A389074.P10773013560146193166

`A000265(A348505(n+1)%A390676(n+5))`
-/

namespace A389074.P10773013560146193166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A348505 (n + 1)) (A390676 (n + 5))).toNat

end

end A389074.P10773013560146193166

namespace A389074

/-- `A000265(A348505(n+1)%A390676(n+5))` -/
def P10773013560146193166.Spec : Prop :=
  ∀ n, P10773013560146193166.a n = A389074 (n + 1)

end A389074

/-!
# A389075: Denominator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

The programs for A389075, the canonical program `A389075.P12257504307077228747` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389075 has offset 1).

The definition of A389075 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389075.P12257504307077228747

`A048250(n+1)/A323159(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A389075

/-- `A048250(n+1)/A323159(n+1)` -/
def P12257504307077228747.Spec : Prop :=
  ∀ n, P12257504307077228747.a n = (A389075 (n + 1) : ℚ)

end A389075

/-! ## A389075.P446903092798179493

`A158275(A003557(n+1))`
-/

namespace A389075.P446903092798179493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (A003557 (n + 1)).toNat

end

end A389075.P446903092798179493

namespace A389075

/-- `A158275(A003557(n+1))` -/
def P446903092798179493.Spec : Prop :=
  ∀ n, P446903092798179493.a n = A389075 (n + 1)

end A389075

/-! ## A389075.P1699490487510549162

`(A034448(n+1)-A389162(n+1))/A323159(n+1)`
-/

namespace A389075.P1699490487510549162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) - A389162 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389075.P1699490487510549162

namespace A389075

/-- `(A034448(n+1)-A389162(n+1))/A323159(n+1)` -/
def P1699490487510549162.Spec : Prop :=
  ∀ n, P1699490487510549162.a n = (A389075 (n + 1) : ℚ)

end A389075

/-! ## A389075.P5209188661202535103

`A389074(n+1)-A389162(n+1)/A323159(n+1)`
-/

namespace A389075.P5209188661202535103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389074 (n + 1) : ℚ) - (A389162 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389075.P5209188661202535103

namespace A389075

/-- `A389074(n+1)-A389162(n+1)/A323159(n+1)` -/
def P5209188661202535103.Spec : Prop :=
  ∀ n, P5209188661202535103.a n = (A389075 (n + 1) : ℚ)

end A389075

/-! ## A389075.P8859795571015924282

`A048250(n+1)/A034448(n+1)*A389074(n+1)`
-/

namespace A389075.P8859795571015924282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ) * (A389074 (n + 1) : ℚ)

end

end A389075.P8859795571015924282

namespace A389075

/-- `A048250(n+1)/A034448(n+1)*A389074(n+1)` -/
def P8859795571015924282.Spec : Prop :=
  ∀ n, P8859795571015924282.a n = (A389075 (n + 1) : ℚ)

end A389075

/-! ## A389075.P3849260537954558443

`A158275(A011264(n+1))`
-/

namespace A389075.P3849260537954558443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (A011264 (n + 1)).toNat

end

end A389075.P3849260537954558443

namespace A389075

/-- `A158275(A011264(n+1))` -/
def P3849260537954558443.Spec : Prop :=
  ∀ n, P3849260537954558443.a n = A389075 (n + 1)

end A389075

/-!
# A389076: Sum of all other divisors of primeshifted n except its squarefree part: a(n) = sigma(A003961(n)) - A007913(A003961(n)).

The programs for A389076, the canonical program `A389076.P4357346381402922048` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389076 has offset 1).

The definition of A389076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003973, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389076.P4357346381402922048

`A003973(n+1)-A003961(A007913(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A389076

/-- `A003973(n+1)-A003961(A007913(n+1))` -/
def P4357346381402922048.Spec : Prop :=
  ∀ n, P4357346381402922048.a n = A389076 (n + 1)

theorem P4357346381402922048.correct : P4357346381402922048.Spec := by
  intro n
  simp only [A389076, Nat.add_sub_cancel]

end A389076

/-! ## A389076.P1089700679981216066

`A326126(A003961(n+1))`
-/

namespace A389076.P1089700679981216066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (A003961 (n + 1)).toNat

end

end A389076.P1089700679981216066

namespace A389076

/-- `A326126(A003961(n+1))` -/
def P1089700679981216066.Spec : Prop :=
  ∀ n, P1089700679981216066.a n = A389076 (n + 1)

end A389076

/-! ## A389076.P7665665528950014954

`A389077(n+1)+A003961(n+1)`
-/

namespace A389076.P7665665528950014954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389077 (n + 1) + A003961 (n + 1)

end

end A389076.P7665665528950014954

namespace A389076

/-- `A389077(n+1)+A003961(n+1)` -/
def P7665665528950014954.Spec : Prop :=
  ∀ n, P7665665528950014954.a n = A389076 (n + 1)

end A389076

/-! ## A389076.P9442692662225691279

`A389078(n+1)+A336851(n+1)`
-/

namespace A389076.P9442692662225691279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389078 (n + 1) + A336851 (n + 1)

end

end A389076.P9442692662225691279

namespace A389076

/-- `A389078(n+1)+A336851(n+1)` -/
def P9442692662225691279.Spec : Prop :=
  ∀ n, P9442692662225691279.a n = A389076 (n + 1)

end A389076

/-! ## A389076.P12245483966088431309

`A003973(n+1)+A389078(n+1)-A003961(n+1)`
-/

namespace A389076.P12245483966088431309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + (A389078 (n + 1) - A003961 (n + 1))

end

end A389076.P12245483966088431309

namespace A389076

/-- `A003973(n+1)+A389078(n+1)-A003961(n+1)` -/
def P12245483966088431309.Spec : Prop :=
  ∀ n, P12245483966088431309.a n = A389076 (n + 1)

end A389076

/-! ## A389076.P7810736734590494441

`A003973(n+1)+A389077(n+1)-A336851(n+1)`
-/

namespace A389076.P7810736734590494441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + (A389077 (n + 1) - A336851 (n + 1))

end

end A389076.P7810736734590494441

namespace A389076

/-- `A003973(n+1)+A389077(n+1)-A336851(n+1)` -/
def P7810736734590494441.Spec : Prop :=
  ∀ n, P7810736734590494441.a n = A389076 (n + 1)

end A389076

/-! ## A389076.P5464826399226517283

`A389078(n+1)+A001065(A003961(n+1))`
-/

namespace A389076.P5464826399226517283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389078 (n + 1) + A001065 (A003961 (n + 1)).toNat

end

end A389076.P5464826399226517283

namespace A389076

/-- `A389078(n+1)+A001065(A003961(n+1))` -/
def P5464826399226517283.Spec : Prop :=
  ∀ n, P5464826399226517283.a n = A389076 (n + 1)

end A389076

/-!
# A389077: Sum of all other proper divisors of primeshifted n except its squarefree part: a(n) = A001065(A003961(n)) - A007913(A003961(n)).

The programs for A389077, the canonical program `A389077.P4480091173600006627` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389077 has offset 1).

The definition of A389077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389077.P12803926139365199002

`A389076(n+1)-A003961(n+1)`
-/

namespace A389077.P12803926139365199002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389076 (n + 1) - A003961 (n + 1)

end

end A389077.P12803926139365199002

namespace A389077

/-- `A389076(n+1)-A003961(n+1)` -/
def P12803926139365199002.Spec : Prop :=
  ∀ n, P12803926139365199002.a n = A389077 (n + 1)

end A389077

/-! ## A389077.P14989407605401097194

`A336851(n+1)-A007913(A003961(n+1))`
-/

namespace A389077.P14989407605401097194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336851 (n + 1) - A007913 (A003961 (n + 1)).toNat

end

end A389077.P14989407605401097194

namespace A389077

/-- `A336851(n+1)-A007913(A003961(n+1))` -/
def P14989407605401097194.Spec : Prop :=
  ∀ n, P14989407605401097194.a n = A389077 (n + 1)

end A389077

/-! ## A389077.P15640844666757091533

`A326127(A003961(n+1))`
-/

namespace A389077.P15640844666757091533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A003961 (n + 1)).toNat

end

end A389077.P15640844666757091533

namespace A389077

/-- `A326127(A003961(n+1))` -/
def P15640844666757091533.Spec : Prop :=
  ∀ n, P15640844666757091533.a n = A389077 (n + 1)

end A389077

/-! ## A389077.P4480091173600006627

`A001065(A003961(n+1))-A007913(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A389077

/-- `A001065(A003961(n+1))-A007913(A003961(n+1))` -/
def P4480091173600006627.Spec : Prop :=
  ∀ n, P4480091173600006627.a n = A389077 (n + 1)

theorem P4480091173600006627.correct : P4480091173600006627.Spec := by
  intro n
  simp only [A389077, Nat.add_sub_cancel]

end A389077

/-! ## A389077.P16074078620733992969

`A389078(n+1)-A344587(n+1)`
-/

namespace A389077.P16074078620733992969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389078 (n + 1) - A344587 (n + 1)

end

end A389077.P16074078620733992969

namespace A389077

/-- `A389078(n+1)-A344587(n+1)` -/
def P16074078620733992969.Spec : Prop :=
  ∀ n, P16074078620733992969.a n = A389077 (n + 1)

end A389077

/-! ## A389077.P15823770753816732897

`A336851(n+1)+A389078(n+1)-A003961(n+1)`
-/

namespace A389077.P15823770753816732897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336851 (n + 1) + (A389078 (n + 1) - A003961 (n + 1))

end

end A389077.P15823770753816732897

namespace A389077

/-- `A336851(n+1)+A389078(n+1)-A003961(n+1)` -/
def P15823770753816732897.Spec : Prop :=
  ∀ n, P15823770753816732897.a n = A389077 (n + 1)

end A389077

/-! ## A389077.P10334310168135108263

`A326127(A045965(n+1))`
-/

namespace A389077.P10334310168135108263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (A045965 (n + 1)).toNat

end

end A389077.P10334310168135108263

namespace A389077

/-- `A326127(A045965(n+1))` -/
def P10334310168135108263.Spec : Prop :=
  ∀ n, P10334310168135108263.a n = A389077 (n + 1)

end A389077

/-!
# A389078: Primeshifted n minus its squarefree part: a(n) = A003961(n) - A007913(A003961(n)).

The programs for A389078, the canonical program `A389078.P3318520002911063327` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389078 has offset 1).

The definition of A389078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389078.P3318520002911063327

`A003961(n+1)-A007913(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A389078

/-- `A003961(n+1)-A007913(A003961(n+1))` -/
def P3318520002911063327.Spec : Prop :=
  ∀ n, P3318520002911063327.a n = A389078 (n + 1)

theorem P3318520002911063327.correct : P3318520002911063327.Spec := by
  intro n
  simp only [A389078, Nat.add_sub_cancel]

end A389078

/-! ## A389078.P9947036443974615201

`A326128(A003961(n+1))`
-/

namespace A389078.P9947036443974615201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A003961 (n + 1)).toNat

end

end A389078.P9947036443974615201

namespace A389078

/-- `A326128(A003961(n+1))` -/
def P9947036443974615201.Spec : Prop :=
  ∀ n, P9947036443974615201.a n = A389078 (n + 1)

end A389078

/-! ## A389078.P6062975602346752903

`A389077(n+1)+A344587(n+1)`
-/

namespace A389078.P6062975602346752903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389077 (n + 1) + A344587 (n + 1)

end

end A389078.P6062975602346752903

namespace A389078

/-- `A389077(n+1)+A344587(n+1)` -/
def P6062975602346752903.Spec : Prop :=
  ∀ n, P6062975602346752903.a n = A389078 (n + 1)

end A389078

/-! ## A389078.P16052663432869644942

`A389076(n+1)-A336851(n+1)`
-/

namespace A389078.P16052663432869644942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389076 (n + 1) - A336851 (n + 1)

end

end A389078.P16052663432869644942

namespace A389078

/-- `A389076(n+1)-A336851(n+1)` -/
def P16052663432869644942.Spec : Prop :=
  ∀ n, P16052663432869644942.a n = A389078 (n + 1)

end A389078

/-! ## A389078.P4117936640914077086

`A003961(n+1)+A389076(n+1)-A003973(n+1)`
-/

namespace A389078.P4117936640914077086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A389076 (n + 1) - A003973 (n + 1))

end

end A389078.P4117936640914077086

namespace A389078

/-- `A003961(n+1)+A389076(n+1)-A003973(n+1)` -/
def P4117936640914077086.Spec : Prop :=
  ∀ n, P4117936640914077086.a n = A389078 (n + 1)

end A389078

/-! ## A389078.P11795111696643089109

`A003961(n+1)+A389077(n+1)-A336851(n+1)`
-/

namespace A389078.P11795111696643089109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A389077 (n + 1) - A336851 (n + 1))

end

end A389078.P11795111696643089109

namespace A389078

/-- `A003961(n+1)+A389077(n+1)-A336851(n+1)` -/
def P11795111696643089109.Spec : Prop :=
  ∀ n, P11795111696643089109.a n = A389078 (n + 1)

end A389078

/-! ## A389078.P16098372808853314268

`A326128(A045965(n+1))`
-/

namespace A389078.P16098372808853314268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A045965 (n + 1)).toNat

end

end A389078.P16098372808853314268

namespace A389078

/-- `A326128(A045965(n+1))` -/
def P16098372808853314268.Spec : Prop :=
  ∀ n, P16098372808853314268.a n = A389078 (n + 1)

end A389078

/-! ## A389078.P5599660914883522902

`A326128(A389076(n+1)-A389077(n+1))`
-/

namespace A389078.P5599660914883522902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A389076 (n + 1) - A389077 (n + 1)).toNat

end

end A389078.P5599660914883522902

namespace A389078

/-- `A326128(A389076(n+1)-A389077(n+1))` -/
def P5599660914883522902.Spec : Prop :=
  ∀ n, P5599660914883522902.a n = A389078 (n + 1)

end A389078

/-! ## A389078.P3473720083601457092

`A389076(n+1)-A001065(A003961(n+1))`
-/

namespace A389078.P3473720083601457092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389076 (n + 1) - A001065 (A003961 (n + 1)).toNat

end

end A389078.P3473720083601457092

namespace A389078

/-- `A389076(n+1)-A001065(A003961(n+1))` -/
def P3473720083601457092.Spec : Prop :=
  ∀ n, P3473720083601457092.a n = A389078 (n + 1)

end A389078

/-!
# A389080: 

The programs for A389080, there is no canonical definition to state claims against.
-/

/-! ## A389080.P17118136622103276711

`A000203(n+1)/A389087(n+1)`
-/

namespace A389080.P17118136622103276711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389087 (n + 1) : ℚ)

end

end A389080.P17118136622103276711

/-! ## A389080.P12360607333665655040

`gcd(A000203(n+1), A048250(n+1))`
-/

namespace A389080.P12360607333665655040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A048250 (n + 1))

end

end A389080.P12360607333665655040

/-! ## A389080.P3074837922845188492

`gcd(∑{d}[n+1, #], ∏{p}[n+1, #+1])`
-/

namespace A389080.P3074837922845188492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d) (∏ p ∈ Nat.primeFactors (f2 n), (p + 1))

end

end A389080.P3074837922845188492

/-! ## A389080.P15339161110392743951

`gcd(A143348(n+1), A162296(n+1))`
-/

namespace A389080.P15339161110392743951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A162296 (n + 1))

end

end A389080.P15339161110392743951

/-!
# A389081: a(n) = n * sigma(A332818(n)).

The programs for A389081, there is no canonical definition to state claims against.
-/

/-! ## A389081.P447171288772343630

`(n+1)*A389073(n+1)`
-/

namespace A389081.P447171288772343630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A389073 (n + 1)

end

end A389081.P447171288772343630

/-! ## A389081.P5736141975609442161

`(n+1)*A000203(A332818(n+1))`
-/

namespace A389081.P5736141975609442161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A332818 (n + 1)).toNat

end

end A389081.P5736141975609442161

/-!
# A389082: a(n) = sigma(n) * A332818(n).

The programs for A389082, there is no canonical definition to state claims against.
-/

/-! ## A389082.P7090790799511472359

`A000203(n+1)*A332818(n+1)`
-/

namespace A389082.P7090790799511472359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A332818 (n + 1)

end

end A389082.P7090790799511472359

/-! ## A389082.P8526004385863182361

`(A039653(n+1)+1)*A332818(n+1)`
-/

namespace A389082.P8526004385863182361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1) * A332818 (n + 1)

end

end A389082.P8526004385863182361

/-! ## A389082.P13330886103024213827

`∑{d}[n+1, A008683(#)*A389073((n+1)/#)]*A000203(n+1)`
-/

namespace A389082.P13330886103024213827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A389073 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A000203 (n + 1)

end

end A389082.P13330886103024213827

/-! ## A389082.P4422020866290487721

`A074400(n+1)/2*∑{d}[n+1, A008683(#)*A389073((n+1)/#)]`
-/

namespace A389082.P4422020866290487721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A389073 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ)

end

end A389082.P4422020866290487721

/-! ## A389082.P16200989609101313244

`A274536(n+1)/6*∑{d}[n+1, A008683(#)*A389073((n+1)/#)]`
-/

namespace A389082.P16200989609101313244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 6 * ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A389073 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ)

end

end A389082.P16200989609101313244

/-! ## A389082.P7877815564330477786

`A000203(n+1)*A332819(∑{d}[n+1, A354204(#)])`
-/

namespace A389082.P7877815564330477786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A332819 (∑ d ∈ Nat.divisors (f1 n), A354204 d).toNat

end

end A389082.P7877815564330477786

/-!
# A389088: Prime shift array for A332818: Square array read by antidiagonals: A(1,col) = 2*col, and for row > 1, A(row,col) = A332818(A(row-1,col)).

The programs for A389088, there is no canonical definition to state claims against.
-/

/-! ## A389088.P18240314823872036126

`A388996(n+1)*A389094(n+1)`
-/

namespace A389088.P18240314823872036126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388996 (n + 1) * A389094 (n + 1)

end

end A389088.P18240314823872036126

/-! ## A389088.P11054684868329813368

`A235027(A246278(n+2))%A350198(2*n+3)`
-/

namespace A389088.P11054684868329813368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235027 (A246278 (n + 2)).toNat) (A350198 (2 * n + 3))

end

end A389088.P11054684868329813368

/-! ## A389088.P12491763817774118404

`A235027(A246278(n+2)%A241671(n+4))`
-/

namespace A389088.P12491763817774118404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (Int.tmod (A246278 (n + 2)) (A241671 (n + 4))).toNat

end

end A389088.P12491763817774118404

/-! ## A389088.P4154984077769441529

`A246278(n+2)+A063725(A354464(n+1))`
-/

namespace A389088.P4154984077769441529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2) + A063725 (A354464 (n + 1)).toNat

end

end A389088.P4154984077769441529

/-! ## A389088.P9594222089187505332

`A308470(A331579(n+1))+A246278(n+2)`
-/

namespace A389088.P9594222089187505332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308470 (A331579 (n + 1)).toNat + A246278 (n + 2)

end

end A389088.P9594222089187505332

/-!
# A389090: a(n) = n^4 - 4*(n^3-n)/3.

The programs for A389090, the canonical program `A389090.P17429034800336636947` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389090 has offset 0).

The definition of A389090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389090.P17429034800336636947

`n^4-4*(n^3-n)/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389090

/-- `n^4-4*(n^3-n)/3` -/
def P17429034800336636947.Spec : Prop :=
  ∀ n, P17429034800336636947.a n = (A389090 n : ℚ)

end A389090

/-!
# A389091: Sum over i of the i-th digit of n raised to the i-th power.

The programs for A389091, there is no canonical definition to state claims against.
-/

/-! ## A389091.P208436027976082894

`∑{e}[A011782(n+1), A101337(#)]`
-/

namespace A389091.P208436027976082894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A101337 (Nat.factorization (f1 n).natAbs p)

end

end A389091.P208436027976082894

/-!
# A389093: Square array, A(n, k) = sigma(A389088(n, k)), read by descending antidiagonals.

The programs for A389093, there is no canonical definition to state claims against.
-/

/-! ## A389093.P16607740705235021221

`A388995(n+1)*A389094(n+1)`
-/

namespace A389093.P16607740705235021221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388995 (n + 1) * A389094 (n + 1)

end

end A389093.P16607740705235021221

/-! ## A389093.P6313394927656582601

`∑{d}[A389088(n+1), #]`
-/

namespace A389093.P6313394927656582601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389093.P6313394927656582601

/-! ## A389093.P997629405961576737

`A000203(A389088(n+1))`
-/

namespace A389093.P997629405961576737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A389088 (n + 1)).toNat

end

end A389093.P997629405961576737

/-! ## A389093.P10425645195945173336

`A017665(A389088(n+1))*A389094(n+1)`
-/

namespace A389093.P10425645195945173336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A389088 (n + 1)).toNat * A389094 (n + 1)

end

end A389093.P10425645195945173336

/-!
# A389094: Square array, A(n, k) = A009194(A389088(n, k)), read by descending antidiagonals.

The programs for A389094, there is no canonical definition to state claims against.
-/

/-! ## A389094.P5451051846981613002

`A009194(A389088(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389094.P5451051846981613002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A389088 (n + 1)).toNat

end

end A389094.P5451051846981613002

/-! ## A389094.P1417560815371326069

`A389088(n+1)/A388996(n+1)`
-/

namespace A389094.P1417560815371326069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389088 (n + 1) : ℚ) / (A388996 (n + 1) : ℚ)

end

end A389094.P1417560815371326069

/-! ## A389094.P370296285640107061

`A389093(n+1)/A388995(n+1)`
-/

namespace A389094.P370296285640107061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389093 (n + 1) : ℚ) / (A388995 (n + 1) : ℚ)

end

end A389094.P370296285640107061

/-! ## A389094.P8610048202448899723

`gcd(A389088(n+1), A389093(n+1))`
-/

namespace A389094.P8610048202448899723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A389088 (n + 1)) (A389093 (n + 1))

end

end A389094.P8610048202448899723

/-! ## A389094.P2823402299284170500

`A009194(A108548(A246278(n+2)))`
-/

namespace A389094.P2823402299284170500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A108548 (A246278 (n + 2)).toNat).toNat

end

end A389094.P2823402299284170500

/-!
# A389095: Square array, A(n, k) = A007814(A389093(n, k)), read by descending antidiagonals.

The programs for A389095, there is no canonical definition to state claims against.
-/

/-! ## A389095.P9311806480550877266

`A336937(A389088(n+1))`
-/

namespace A389095.P9311806480550877266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A389088 (n + 1)).toNat

end

end A389095.P9311806480550877266

/-! ## A389095.P13512843497936620595

`A007814(A389093(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389095.P13512843497936620595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A389093 (n + 1)).toNat

end

end A389095.P13512843497936620595

/-! ## A389095.P3194090370001219419

`log2(gcd(A000079(n), A389093(n+1)))`
-/

namespace A389095.P3194090370001219419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A389093 (n + 1)) : ℝ)

end

end A389095.P3194090370001219419

/-! ## A389095.P13900489290671415590

`A153881(3*n+5)+A001511(A389093(n+1))`
-/

namespace A389095.P13900489290671415590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * n + 5) + A001511 (A389093 (n + 1)).toNat

end

end A389095.P13900489290671415590

/-!
# A389096: a(n) = A162296(A228058(n)), where A162296 is the sum of divisors that have a square factor, and A228058 lists numbers satisfying Euler's condition for odd perfect numbers.

The programs for A389096, there is no canonical definition to state claims against.
-/

/-! ## A389096.P16139162099947027060

`A325320(n+1)+A228058(n+1)`
-/

namespace A389096.P16139162099947027060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + A228058 (n + 1)

end

end A389096.P16139162099947027060

/-! ## A389096.P6741457613674757137

`A325378(n+1)+A389164(n+1)`
-/

namespace A389096.P6741457613674757137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) + A389164 (n + 1)

end

end A389096.P6741457613674757137

/-! ## A389096.P10512864679778590596

`A389203(n+1)-A389164(n+1)`
-/

namespace A389096.P10512864679778590596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A389164 (n + 1)

end

end A389096.P10512864679778590596

/-! ## A389096.P17589390871177463503

`A162296(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389096.P17589390871177463503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A228058 (n + 1)).toNat

end

end A389096.P17589390871177463503

/-! ## A389096.P6312074794077678860

`A325377(n+1)+A325319(n+1)`
-/

namespace A389096.P6312074794077678860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + A325319 (n + 1)

end

end A389096.P6312074794077678860

/-! ## A389096.P15225528650660398608

`A228058(n+1)+A325319(n+1)-A325379(n+1)`
-/

namespace A389096.P15225528650660398608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325319 (n + 1) - A325379 (n + 1))

end

end A389096.P15225528650660398608

/-! ## A389096.P10910592235733801671

`A228058(n+1)+A325378(n+1)-A325319(n+1)`
-/

namespace A389096.P10910592235733801671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325378 (n + 1) - A325319 (n + 1))

end

end A389096.P10910592235733801671

/-! ## A389096.P9980950849473163816

`A325320(n+1)+A389203(n+1)-A325377(n+1)`
-/

namespace A389096.P9980950849473163816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + (A389203 (n + 1) - A325377 (n + 1))

end

end A389096.P9980950849473163816

/-! ## A389096.P3210530265587433174

`A325319(n+1)+A389198(n+1)-A325824(n+1)`
-/

namespace A389096.P3210530265587433174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A389198 (n + 1) - A325824 (n + 1))

end

end A389096.P3210530265587433174

/-! ## A389096.P811714777871216768

`A325319(n+1)+A389163(n+1)-A389218(n+1)`
-/

namespace A389096.P811714777871216768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A389163 (n + 1) - A389218 (n + 1))

end

end A389096.P811714777871216768

/-! ## A389096.P18258392993115428831

`A325320(n+1)+A388997(n+1)*A389167(n+1)`
-/

namespace A389096.P18258392993115428831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + A388997 (n + 1) * A389167 (n + 1)

end

end A389096.P18258392993115428831

/-! ## A389096.P13531856122500683104

`A325320(n+1)+A389160(n+1)*A389161(n+1)`
-/

namespace A389096.P13531856122500683104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + A389160 (n + 1) * A389161 (n + 1)

end

end A389096.P13531856122500683104

/-! ## A389096.P15147836309753455331

`A325378(n+1)+A000203(A389167(n+1))`
-/

namespace A389096.P15147836309753455331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) + A000203 (A389167 (n + 1)).toNat

end

end A389096.P15147836309753455331

/-! ## A389096.P878681096797977083

`A389203(n+1)-A000203(A389167(n+1))`
-/

namespace A389096.P878681096797977083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A000203 (A389167 (n + 1)).toNat

end

end A389096.P878681096797977083

/-! ## A389096.P10372000429035342491

`A000203(A228058(n+1))-A389164(n+1)`
-/

namespace A389096.P10372000429035342491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A228058 (n + 1)).toNat - A389164 (n + 1)

end

end A389096.P10372000429035342491

/-! ## A389096.P9369688312360101968

`A162296(A389164(n+1)+A325319(n+1))`
-/

namespace A389096.P9369688312360101968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A389164 (n + 1) + A325319 (n + 1)).toNat

end

end A389096.P9369688312360101968

/-! ## A389096.P15206675636312646130

`A325378(n+1)+A048250(A228058(n+1))`
-/

namespace A389096.P15206675636312646130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325378 (n + 1) + A048250 (A228058 (n + 1)).toNat

end

end A389096.P15206675636312646130

/-! ## A389096.P10359232904602071559

`A389203(n+1)-A048250(A228058(n+1))`
-/

namespace A389096.P10359232904602071559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A048250 (A228058 (n + 1)).toNat

end

end A389096.P10359232904602071559

/-!
# A389097: LCM of the amicable pairs: a(n) = lcm(A002025(n), A002046(n)).

The programs for A389097, there is no canonical definition to state claims against.
-/

/-! ## A389097.P18383855353750372402

`A180327(n+1)*A259180(2*n+1)`
-/

namespace A389097.P18383855353750372402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180327 (n + 1) * A259180 (2 * n + 1)

end

end A389097.P18383855353750372402

/-! ## A389097.P7699913429734078286

`(A332672(A027699(n+1))+A260087(n+1))*A180326(n+1)`
-/

namespace A389097.P7699913429734078286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332672 (A027699 (n + 1)).toNat + A260087 (n + 1)) * A180326 (n + 1)

end

end A389097.P7699913429734078286

/-! ## A389097.P1176594136115637022

`(A063990(2*n+2)+A008683(A280022(n+2)))*A180326(n+1)`
-/

namespace A389097.P1176594136115637022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063990 (2 * n + 2) + A008683 (A280022 (n + 2)).toNat) * A180326 (n + 1)

end

end A389097.P1176594136115637022

/-!
# A389098: LCM of the psi-amicable pairs: a(n) = lcm(A323329(n), A323330(n)).

The programs for A389098, there is no canonical definition to state claims against.
-/

/-! ## A389098.P7505098747133852023

`A387885(n+1)/A383943(n+1)`
-/

namespace A389098.P7505098747133852023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387885 (n + 1) : ℚ) / (A383943 (n + 1) : ℚ)

end

end A389098.P7505098747133852023

/-! ## A389098.P2890036557866368152

`lcm(A323329(n+1), A323330(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389098.P2890036557866368152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A323329 (n + 1)) (A323330 (n + 1))

end

end A389098.P2890036557866368152

/-! ## A389098.P15018037476926201319

`A323329(n+1)*A323330(n+1)/A383943(n+1)`
-/

namespace A389098.P15018037476926201319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323329 (n + 1) * A323330 (n + 1) : ℚ) / (A383943 (n + 1) : ℚ)

end

end A389098.P15018037476926201319

/-!
# A389099: Array read by ascending antidiagonals: A(n, k) = k / gcd(n^k, k).

The programs for A389099, the canonical program `A389099.P6075006044423678117` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389099 has offset 0).

The definition of A389099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389099.P6075006044423678117

`A002262(n)/A389101(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389099

/-- `A002262(n)/A389101(n)` -/
def P6075006044423678117.Spec : Prop :=
  ∀ n, P6075006044423678117.a n = (A389099 n : ℚ)

end A389099

/-! ## A389099.P6760522614881918939

`A136548(A024916(3*n+5)+1)%A002260(n+1)`
-/

namespace A389099.P6760522614881918939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (A024916 (3 * n + 5) + 1).toNat) (A002260 (n + 1))

end

end A389099.P6760522614881918939

namespace A389099

/-- `A136548(A024916(3*n+5)+1)%A002260(n+1)` -/
def P6760522614881918939.Spec : Prop :=
  ∀ n, P6760522614881918939.a n = A389099 n

end A389099

/-! ## A389099.P12938293019804533913

`A102633(A009998(n))%A002260(n+1)`
-/

namespace A389099.P12938293019804533913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102633 (A009998 n).toNat) (A002260 (n + 1))

end

end A389099.P12938293019804533913

namespace A389099

/-- `A102633(A009998(n))%A002260(n+1)` -/
def P12938293019804533913.Spec : Prop :=
  ∀ n, P12938293019804533913.a n = A389099 n

end A389099

/-! ## A389099.P10291406586360764079

`A000040(A000384(3*(n+1)))%A002260(n+1)`
-/

namespace A389099.P10291406586360764079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000384 (3 * (n + 1))).toNat) (A002260 (n + 1))

end

end A389099.P10291406586360764079

namespace A389099

/-- `A000040(A000384(3*(n+1)))%A002260(n+1)` -/
def P10291406586360764079.Spec : Prop :=
  ∀ n, P10291406586360764079.a n = A389099 n

end A389099

/-! ## A389099.P6978984728432634473

`A360614(A120458(n))`
-/

namespace A389099.P6978984728432634473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A120458 n).toNat

end

end A389099.P6978984728432634473

namespace A389099

/-- `A360614(A120458(n))` -/
def P6978984728432634473.Spec : Prop :=
  ∀ n, P6978984728432634473.a n = A389099 n

end A389099

