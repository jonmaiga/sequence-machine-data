import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A050200: Let p = prime(n). Then a(n) = p + (next prime >= p+1) + (next prime >= p+3).

The programs for A050200, the canonical program `A050200.P6281150429617740541` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050200 has offset 0).

The definition of A050200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050200.P6281150429617740541

`A151800(A052147(n+1))+A001043(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050200

/-- `A151800(A052147(n+1))+A001043(n+1)` -/
def P6281150429617740541.Spec : Prop :=
  ∀ n, P6281150429617740541.a n = A050200 n

theorem P6281150429617740541.correct : P6281150429617740541.Spec := by
  intro n
  simp only [A050200]

end A050200

/-! ## A050200.P9908508794745166218

`A151800(A263483(n+1))+A001043(n+1)`
-/

namespace A050200.P9908508794745166218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A263483 (n + 1)).toNat + A001043 (n + 1)

end

end A050200.P9908508794745166218

namespace A050200

/-- `A151800(A263483(n+1))+A001043(n+1)` -/
def P9908508794745166218.Spec : Prop :=
  ∀ n, P9908508794745166218.a n = A050200 n

end A050200

/-! ## A050200.P8739272555115715262

`A151800(∑[A115061(n+1)])+A001043(n+1)`
-/

namespace A050200.P8739272555115715262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A001043 (n + 1)

end

end A050200.P8739272555115715262

namespace A050200

/-- `A151800(∑[A115061(n+1)])+A001043(n+1)` -/
def P8739272555115715262.Spec : Prop :=
  ∀ n, P8739272555115715262.a n = A050200 n

end A050200

/-! ## A050200.P14046628487319747055

`A151800(A000040(n+1)+2)+A001043(n+1)`
-/

namespace A050200.P14046628487319747055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) + 2).toNat + A001043 (n + 1)

end

end A050200.P14046628487319747055

namespace A050200

/-- `A151800(A000040(n+1)+2)+A001043(n+1)` -/
def P14046628487319747055.Spec : Prop :=
  ∀ n, P14046628487319747055.a n = A050200 n

end A050200

/-! ## A050200.P6477439514389824970

`A007918(A113935(n+1))+Δ[A061802(n)]`
-/

namespace A050200.P6477439514389824970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A113935 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A050200.P6477439514389824970

namespace A050200

/-- `A007918(A113935(n+1))+Δ[A061802(n)]` -/
def P6477439514389824970.Spec : Prop :=
  ∀ n, P6477439514389824970.a n = A050200 n

end A050200

/-! ## A050200.P9319730803557187138

`A066168(A000040(n+1))+A001043(n+1)`
-/

namespace A050200.P9319730803557187138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066168 (A000040 (n + 1)).toNat + A001043 (n + 1)

end

end A050200.P9319730803557187138

namespace A050200

/-- `A066168(A000040(n+1))+A001043(n+1)` -/
def P9319730803557187138.Spec : Prop :=
  ∀ n, P9319730803557187138.a n = A050200 n

end A050200

/-! ## A050200.P9447905672341635999

`A007918(A113935(n+1))+A001043(n+1)`
-/

namespace A050200.P9447905672341635999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A113935 (n + 1)).toNat + A001043 (n + 1)

end

end A050200.P9447905672341635999

namespace A050200

/-- `A007918(A113935(n+1))+A001043(n+1)` -/
def P9447905672341635999.Spec : Prop :=
  ∀ n, P9447905672341635999.a n = A050200 n

end A050200

/-! ## A050200.P12736147404349846027

`A011974(n+2)+A007918(A113935(n+1))`
-/

namespace A050200.P12736147404349846027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) + A007918 (A113935 (n + 1)).toNat

end

end A050200.P12736147404349846027

namespace A050200

/-- `A011974(n+2)+A007918(A113935(n+1))` -/
def P12736147404349846027.Spec : Prop :=
  ∀ n, P12736147404349846027.a n = A050200 n

end A050200

/-! ## A050200.P10491782493479445754

`A007918(A000040(n+1)+3)+A001043(n+1)`
-/

namespace A050200.P10491782493479445754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000040 (n + 1) + 3).toNat + A001043 (n + 1)

end

end A050200.P10491782493479445754

namespace A050200

/-- `A007918(A000040(n+1)+3)+A001043(n+1)` -/
def P10491782493479445754.Spec : Prop :=
  ∀ n, P10491782493479445754.a n = A050200 n

end A050200

/-! ## A050200.P17801329826871585139

`A076272(A111254(n+1))+A001043(n+1)`
-/

namespace A050200.P17801329826871585139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A111254 (n + 1)).toNat + A001043 (n + 1)

end

end A050200.P17801329826871585139

namespace A050200

/-- `A076272(A111254(n+1))+A001043(n+1)` -/
def P17801329826871585139.Spec : Prop :=
  ∀ n, P17801329826871585139.a n = A050200 n

end A050200

/-!
# A050201: Starting positions of strings of 2 0's in the decimal expansion of Pi.

The programs for A050201, there is no canonical definition to state claims against.
-/

/-! ## A050201.P9156803167119270809

`∩[A037008(n+1)-1, A037008(n+1)]`
-/

namespace A050201.P9156803167119270809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050201.P9156803167119270809

/-! ## A050201.P9382016942649687022

`∩[A037008(n+1), A139728(n+1)+A037008(n+1)]`
-/

namespace A050201.P9382016942649687022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139728 (n + 1) + A037008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050201.P9382016942649687022

/-! ## A050201.P5225383164715904552

`eq[atan(A095916(n+1)), A000796(n)]`
-/

namespace A050201.P5225383164715904552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A095916 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A050201.P5225383164715904552

/-! ## A050201.P2273187481740245487

`eq[exp(A095916(n+1)), A123152(n+1)]`
-/

namespace A050201.P2273187481740245487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A050201.P2273187481740245487

/-! ## A050201.P7994989117031943768

`∩[A037008(n+1), A023443(A037008(n+1))]`
-/

namespace A050201.P7994989117031943768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037008 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050201.P7994989117031943768

/-! ## A050201.P14799796030490654483

`∩[A014976(n+1), A020725(A014976(n+1))]-2`
-/

namespace A050201.P14799796030490654483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A014976 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A050201.P14799796030490654483

/-!
# A050202: Starting positions of strings of 3 0's in the decimal expansion of Pi.

The programs for A050202, there is no canonical definition to state claims against.
-/

/-! ## A050202.P11123832338825359626

`∩[A050201(n+1)-1, A050201(n+1)]`
-/

namespace A050202.P11123832338825359626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050201 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050202.P11123832338825359626

/-!
# A050203: a(n) is the coefficient of the term a^(-n) in the asymptotic series for the least positive zero of the generalized Rogers-Ramanujan continued fraction.

The programs for A050203, there is no canonical definition to state claims against.
-/

/-! ## A050203.P1059637654892028793

`A008683(A002110(n))*A033321(n)`
-/

namespace A050203.P1059637654892028793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002110 n).toNat * A033321 n

end

end A050203.P1059637654892028793

/-! ## A050203.P18017823331950857293

`A033321(n)*A033999(A000584(n))`
-/

namespace A050203.P18017823331950857293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n * A033999 (A000584 n).toNat

end

end A050203.P18017823331950857293

/-! ## A050203.P4058884633311572614

`A033321(n)*A057077(A001077(n))`
-/

namespace A050203.P4058884633311572614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n * A057077 (A001077 n).toNat

end

end A050203.P4058884633311572614

/-!
# A050205: Triangle read by rows: number of terms in unit fraction representation of k/n using the greedy algorithm, 1<=k<=n-1.

The programs for A050205, there is no canonical definition to state claims against.
-/

/-! ## A050205.P3097698209610605941

`A281530(n+2)`
-/

namespace A050205.P3097698209610605941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281530 (n + 2)

end

end A050205.P3097698209610605941

/-! ## A050205.P758357092116396747

`A097847(comp[∑[n]])`
-/

namespace A050205.P758357092116396747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097847 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A050205.P758357092116396747

/-! ## A050205.P4560925767384791746

`dr(A097847(A080036(n)))`
-/

namespace A050205.P4560925767384791746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A097847 (A080036 n).toNat)

end

end A050205.P4560925767384791746

/-! ## A050205.P671418453539768194

`dr(A097847(A014132(n+1)))`
-/

namespace A050205.P671418453539768194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A097847 (A014132 (n + 1)).toNat)

end

end A050205.P671418453539768194

/-! ## A050205.P257962502582158454

`or(A000007(n), A097847(A080036(n)))`
-/

namespace A050205.P257962502582158454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A097847 (A080036 n).toNat)

end

end A050205.P257962502582158454

/-! ## A050205.P2612430921931813351

`A097847(A080036(n))+A000007(n+1)`
-/

namespace A050205.P2612430921931813351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097847 (A080036 n).toNat + A000007 (n + 1)

end

end A050205.P2612430921931813351

/-! ## A050205.P2785711240935796701

`A007318(C(2, n))*A097847(A080036(n))`
-/

namespace A050205.P2785711240935796701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A097847 (A080036 n).toNat

end

end A050205.P2785711240935796701

/-! ## A050205.P3613049481733591542

`A014963(4*n+6)*A097847(A080036(n))`
-/

namespace A050205.P3613049481733591542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A097847 (A080036 n).toNat

end

end A050205.P3613049481733591542

/-! ## A050205.P7275871637089700635

`or(A000010(n+1)%2, A097847(A080036(n)))`
-/

namespace A050205.P7275871637089700635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000010 (n + 1)) 2) (A097847 (A080036 n).toNat)

end

end A050205.P7275871637089700635

/-! ## A050205.P10262164067348082414

`A000045(gcd(n, n+1))*A097847(A080036(n))`
-/

namespace A050205.P10262164067348082414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A097847 (A080036 n).toNat

end

end A050205.P10262164067348082414

/-!
# A050206: Triangle read by rows: smallest denominator of the expansion of k/n using the greedy algorithm, 1<=k<=n-1.

The programs for A050206, the canonical program `A050206.P11225108751146401757` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050206 has offset 2).

The definition of A050206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050206.P12962157277622825412

`A010766(n+1)+1`
-/

namespace A050206.P12962157277622825412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + 1

end

end A050206.P12962157277622825412

namespace A050206

/-- `A010766(n+1)+1` -/
def P12962157277622825412.Spec : Prop :=
  ∀ n, P12962157277622825412.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P18404550704677618182

`ceil(ratio[A074909(n)])+1`
-/

namespace A050206.P18404550704677618182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1

end

end A050206.P18404550704677618182

namespace A050206

/-- `ceil(ratio[A074909(n)])+1` -/
def P18404550704677618182.Spec : Prop :=
  ∀ n, P18404550704677618182.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P1141660743212660820

`ceil(ratio[A181971(n)])+1`
-/

namespace A050206.P1141660743212660820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1

end

end A050206.P1141660743212660820

namespace A050206

/-- `ceil(ratio[A181971(n)])+1` -/
def P1141660743212660820.Spec : Prop :=
  ∀ n, P1141660743212660820.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P7438617093248413983

`sqrt(A360610(n+1))+1`
-/

namespace A050206.P7438617093248413983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360610 (n + 1) : ℝ) + 1

end

end A050206.P7438617093248413983

namespace A050206

/-- `sqrt(A360610(n+1))+1` -/
def P7438617093248413983.Spec : Prop :=
  ∀ n, P7438617093248413983.a n = (A050206 (n + 2) : ℝ)

end A050206

/-! ## A050206.P4030531656560216561

`floor(sqrt(A085383(n+1)))+1`
-/

namespace A050206.P4030531656560216561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085383 (n + 1)) + 1

end

end A050206.P4030531656560216561

namespace A050206

/-- `floor(sqrt(A085383(n+1)))+1` -/
def P4030531656560216561.Spec : Prop :=
  ∀ n, P4030531656560216561.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P17844990387660055354

`ceil(ratio[A029656(n+1)])+1`
-/

namespace A050206.P17844990387660055354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1

end

end A050206.P17844990387660055354

namespace A050206

/-- `ceil(ratio[A029656(n+1)])+1` -/
def P17844990387660055354.Spec : Prop :=
  ∀ n, P17844990387660055354.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P3849462073054073019

`ceil((comp[∑[n]]-n)/A002260(n+1))`
-/

namespace A050206.P3849462073054073019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A050206.P3849462073054073019

namespace A050206

/-- `ceil((comp[∑[n]]-n)/A002260(n+1))` -/
def P3849462073054073019.Spec : Prop :=
  ∀ n, P3849462073054073019.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P15233703332501792209

`A038567(A130313(n+1))`
-/

namespace A050206.P15233703332501792209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A130313 (n + 1)).toNat

end

end A050206.P15233703332501792209

namespace A050206

/-- `A038567(A130313(n+1))` -/
def P15233703332501792209.Spec : Prop :=
  ∀ n, P15233703332501792209.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P4504965056275492393

`A082904(A134700(n+1))`
-/

namespace A050206.P4504965056275492393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082904 (A134700 (n + 1)).toNat

end

end A050206.P4504965056275492393

namespace A050206

/-- `A082904(A134700(n+1))` -/
def P4504965056275492393.Spec : Prop :=
  ∀ n, P4504965056275492393.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P8432904738307453731

`A038569(A242114(n+1))`
-/

namespace A050206.P8432904738307453731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A242114 (n + 1)).toNat

end

end A050206.P8432904738307453731

namespace A050206

/-- `A038569(A242114(n+1))` -/
def P8432904738307453731.Spec : Prop :=
  ∀ n, P8432904738307453731.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P11225108751146401757

`A010783(A038722(n+1))+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050206

/-- `A010783(A038722(n+1))+1` -/
def P11225108751146401757.Spec : Prop :=
  ∀ n, P11225108751146401757.a n = A050206 (n + 2)

theorem P11225108751146401757.correct : P11225108751146401757.Spec := by
  intro n
  simp only [A050206, Nat.add_sub_cancel]

end A050206

/-! ## A050206.P14535443002091038253

`A010783(A061579(n)+1)+1`
-/

namespace A050206.P14535443002091038253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A061579 n + 1).toNat + 1

end

end A050206.P14535443002091038253

namespace A050206

/-- `A010783(A061579(n)+1)+1` -/
def P14535443002091038253.Spec : Prop :=
  ∀ n, P14535443002091038253.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P2641178108467654304

`A002260(A128489(n+1))+1`
-/

namespace A050206.P2641178108467654304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A128489 (n + 1)).toNat + 1

end

end A050206.P2641178108467654304

namespace A050206

/-- `A002260(A128489(n+1))+1` -/
def P2641178108467654304.Spec : Prop :=
  ∀ n, P2641178108467654304.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P8232275321768037584

`A004736(A286235(n+1))+1`
-/

namespace A050206.P8232275321768037584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286235 (n + 1)).toNat + 1

end

end A050206.P8232275321768037584

namespace A050206

/-- `A004736(A286235(n+1))+1` -/
def P8232275321768037584.Spec : Prop :=
  ∀ n, P8232275321768037584.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P16319503384858725171

`A004736(A286245(n+1))+1`
-/

namespace A050206.P16319503384858725171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286245 (n + 1)).toNat + 1

end

end A050206.P16319503384858725171

namespace A050206

/-- `A004736(A286245(n+1))+1` -/
def P16319503384858725171.Spec : Prop :=
  ∀ n, P16319503384858725171.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P6214098467505029735

`floor(A103371(n)/A007318(n)²)+1`
-/

namespace A050206.P6214098467505029735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103371 n : ℚ) / (A007318 n ^ 2 : ℚ)⌋ + 1

end

end A050206.P6214098467505029735

namespace A050206

/-- `floor(A103371(n)/A007318(n)²)+1` -/
def P6214098467505029735.Spec : Prop :=
  ∀ n, P6214098467505029735.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P11022448416573840383

`A234575(n+1)+1-A048158(n+1)`
-/

namespace A050206.P11022448416573840383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (n + 1) + (1 - A048158 (n + 1))

end

end A050206.P11022448416573840383

namespace A050206

/-- `A234575(n+1)+1-A048158(n+1)` -/
def P11022448416573840383.Spec : Prop :=
  ∀ n, P11022448416573840383.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P10811493955532868732

`floor(A002024(n+1)/(A002262(n)+1))+1`
-/

namespace A050206.P10811493955532868732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)⌋ + 1

end

end A050206.P10811493955532868732

namespace A050206

/-- `floor(A002024(n+1)/(A002262(n)+1))+1` -/
def P10811493955532868732.Spec : Prop :=
  ∀ n, P10811493955532868732.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P12471707180257798204

`floor((A003056(n)+1)/(A002262(n)+1))+1`
-/

namespace A050206.P12471707180257798204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 n + 1 : ℚ) / (A002262 n + 1 : ℚ)⌋ + 1

end

end A050206.P12471707180257798204

namespace A050206

/-- `floor((A003056(n)+1)/(A002262(n)+1))+1` -/
def P12471707180257798204.Spec : Prop :=
  ∀ n, P12471707180257798204.a n = A050206 (n + 2)

end A050206

/-! ## A050206.P11380462924570354265

`ceil(A004736(n+1)/A002260(n+1))+1`
-/

namespace A050206.P11380462924570354265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌉ + 1

end

end A050206.P11380462924570354265

namespace A050206

/-- `ceil(A004736(n+1)/A002260(n+1))+1` -/
def P11380462924570354265.Spec : Prop :=
  ∀ n, P11380462924570354265.a n = A050206 (n + 2)

end A050206

/-!
# A050207: Primes of the form p + (smallest prime >= p+1) + (smallest prime >= p+3) where p is a prime.

The programs for A050207, the canonical program `A050207.P7324394721812478698` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050207 has offset 1).

The definition of A050207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050207.P7324394721812478698

`p?[A050200(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050207

/-- `p?[A050200(n)]` -/
def P7324394721812478698.Spec : Prop :=
  ∀ n, P7324394721812478698.a n = A050207 (n + 1)

theorem P7324394721812478698.correct : P7324394721812478698.Spec := by
  intro n
  simp only [A050207, Nat.add_sub_cancel]

end A050207

/-! ## A050207.P5259122364259077802

`p?[A151800(A052147(n+1))+A001043(n+1)]`
-/

namespace A050207.P5259122364259077802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A052147 (n + 1)).toNat + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050207.P5259122364259077802

namespace A050207

/-- `p?[A151800(A052147(n+1))+A001043(n+1)]` -/
def P5259122364259077802.Spec : Prop :=
  ∀ n, P5259122364259077802.a n = A050207 (n + 1)

end A050207

/-! ## A050207.P9802522345981713733

`p?[A151800(A263483(n+1))+A001043(n+1)]`
-/

namespace A050207.P9802522345981713733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A263483 (n + 1)).toNat + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050207.P9802522345981713733

namespace A050207

/-- `p?[A151800(A263483(n+1))+A001043(n+1)]` -/
def P9802522345981713733.Spec : Prop :=
  ∀ n, P9802522345981713733.a n = A050207 (n + 1)

end A050207

/-! ## A050207.P4066081686052351702

`∩[A000040(n+1), A050200(n)]`
-/

namespace A050207.P4066081686052351702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P4066081686052351702

namespace A050207

/-- `∩[A000040(n+1), A050200(n)]` -/
def P4066081686052351702.Spec : Prop :=
  ∀ n, (P4066081686052351702.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P9233687661317977352

`∩[A004139(n+1), A050200(n)]`
-/

namespace A050207.P9233687661317977352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P9233687661317977352

namespace A050207

/-- `∩[A004139(n+1), A050200(n)]` -/
def P9233687661317977352.Spec : Prop :=
  ∀ n, (P9233687661317977352.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P3509573600762823633

`∩[A006005(n+1), A050200(n)]`
-/

namespace A050207.P3509573600762823633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P3509573600762823633

namespace A050207

/-- `∩[A006005(n+1), A050200(n)]` -/
def P3509573600762823633.Spec : Prop :=
  ∀ n, (P3509573600762823633.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P10341895484490762140

`∩[A008578(n+1), A050200(n)]`
-/

namespace A050207.P10341895484490762140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P10341895484490762140

namespace A050207

/-- `∩[A008578(n+1), A050200(n)]` -/
def P10341895484490762140.Spec : Prop :=
  ∀ n, (P10341895484490762140.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P13068190554449020434

`∩[A045319(n+1), A050200(n)]`
-/

namespace A050207.P13068190554449020434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P13068190554449020434

namespace A050207

/-- `∩[A045319(n+1), A050200(n)]` -/
def P13068190554449020434.Spec : Prop :=
  ∀ n, (P13068190554449020434.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P9243125605592755505

`∩[A045344(n+1), A050200(n)]`
-/

namespace A050207.P9243125605592755505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P9243125605592755505

namespace A050207

/-- `∩[A045344(n+1), A050200(n)]` -/
def P9243125605592755505.Spec : Prop :=
  ∀ n, (P9243125605592755505.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P4644094459870749292

`∩[A065091(n+1), A050200(n)]`
-/

namespace A050207.P4644094459870749292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P4644094459870749292

namespace A050207

/-- `∩[A065091(n+1), A050200(n)]` -/
def P4644094459870749292.Spec : Prop :=
  ∀ n, (P4644094459870749292.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P15351312041390821833

`∩[A065376(n+1), A050200(n)]`
-/

namespace A050207.P15351312041390821833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P15351312041390821833

namespace A050207

/-- `∩[A065376(n+1), A050200(n)]` -/
def P15351312041390821833.Spec : Prop :=
  ∀ n, (P15351312041390821833.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P16790536507600880111

`∩[A065396(n+1), A050200(n)]`
-/

namespace A050207.P16790536507600880111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P16790536507600880111

namespace A050207

/-- `∩[A065396(n+1), A050200(n)]` -/
def P16790536507600880111.Spec : Prop :=
  ∀ n, (P16790536507600880111.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P17823309593241347504

`∩[A071621(n+1), A050200(n)]`
-/

namespace A050207.P17823309593241347504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P17823309593241347504

namespace A050207

/-- `∩[A071621(n+1), A050200(n)]` -/
def P17823309593241347504.Spec : Prop :=
  ∀ n, (P17823309593241347504.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P11767455460043653023

`∩[A033946(n+1), A050200(n)]`
-/

namespace A050207.P11767455460043653023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P11767455460043653023

namespace A050207

/-- `∩[A033946(n+1), A050200(n)]` -/
def P11767455460043653023.Spec : Prop :=
  ∀ n, (P11767455460043653023.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P11977336448660584761

`∩[A046022(n+1), A050200(n)]`
-/

namespace A050207.P11977336448660584761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P11977336448660584761

namespace A050207

/-- `∩[A046022(n+1), A050200(n)]` -/
def P11977336448660584761.Spec : Prop :=
  ∀ n, (P11977336448660584761.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P16835149127074453688

`∩[A051948(n+1), A050200(n)]`
-/

namespace A050207.P16835149127074453688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P16835149127074453688

namespace A050207

/-- `∩[A051948(n+1), A050200(n)]` -/
def P16835149127074453688.Spec : Prop :=
  ∀ n, (P16835149127074453688.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P8094693548818180721

`∩[A053813(n+1), A050200(n)]`
-/

namespace A050207.P8094693548818180721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P8094693548818180721

namespace A050207

/-- `∩[A053813(n+1), A050200(n)]` -/
def P8094693548818180721.Spec : Prop :=
  ∀ n, (P8094693548818180721.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P9237987485116842807

`∩[A064728(n+1), A050200(n)]`
-/

namespace A050207.P9237987485116842807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P9237987485116842807

namespace A050207

/-- `∩[A064728(n+1), A050200(n)]` -/
def P9237987485116842807.Spec : Prop :=
  ∀ n, (P9237987485116842807.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P2709705673721812247

`∩[A067126(n+1), A050200(n)]`
-/

namespace A050207.P2709705673721812247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P2709705673721812247

namespace A050207

/-- `∩[A067126(n+1), A050200(n)]` -/
def P2709705673721812247.Spec : Prop :=
  ∀ n, (P2709705673721812247.a n : ℤ) = A050207 (n + 1)

end A050207

/-! ## A050207.P8361224054655334347

`∩[A140826(n+1), A050200(n)]`
-/

namespace A050207.P8361224054655334347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050207.P8361224054655334347

namespace A050207

/-- `∩[A140826(n+1), A050200(n)]` -/
def P8361224054655334347.Spec : Prop :=
  ∀ n, (P8361224054655334347.a n : ℤ) = A050207 (n + 1)

end A050207

/-!
# A050208: Starting positions of strings of 2 1's in the decimal expansion of Pi.

The programs for A050208, there is no canonical definition to state claims against.
-/

/-! ## A050208.P2114274288292300876

`∩[A037000(n+1)-1, A037000(n+1)]`
-/

namespace A050208.P2114274288292300876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050208.P2114274288292300876

/-! ## A050208.P6317723712603835729

`A037000(eq[1, A037000(n+2)-A037000(n+1)]+1)`
-/

namespace A050208.P6317723712603835729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 2) - A037000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050208.P6317723712603835729

/-! ## A050208.P7529573064486757412

`eq[1, A000796(n+1)*A000796(n)]`
-/

namespace A050208.P7529573064486757412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) * A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050208.P7529573064486757412

/-! ## A050208.P18266630922691621435

`eq[exp(A095916(n+1)), A000796(n)]`
-/

namespace A050208.P18266630922691621435
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A050208.P18266630922691621435

/-! ## A050208.P18418620618554783174

`eq[9-A030644(n), exp(A095916(n+1))]`
-/

namespace A050208.P18418620618554783174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A050208.P18418620618554783174

/-! ## A050208.P10369542129744873786

`eq[A123152(n+1)-1, exp(A095916(n+1))]`
-/

namespace A050208.P10369542129744873786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A050208.P10369542129744873786

/-! ## A050208.P2002151484371215577

`∩[A037000(n+1), A023443(A037000(n+1))]`
-/

namespace A050208.P2002151484371215577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037000 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050208.P2002151484371215577

/-! ## A050208.P9164718156031490087

`A023443(∩[A053745(n+1)-1, A053745(n+1)])`
-/

namespace A050208.P9164718156031490087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050208.P9164718156031490087

/-! ## A050208.P15306766956837311655

`eq[exp(A095916(n+1)), A001355(2*n+1)]`
-/

namespace A050208.P15306766956837311655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A050208.P15306766956837311655

/-! ## A050208.P10671482966157883381

`eq[exp(A095916(n+1)), A110766(2*n+1)]`
-/

namespace A050208.P10671482966157883381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A050208.P10671482966157883381

/-!
# A050209: Starting positions of strings of 3 1's in the decimal expansion of Pi.

The programs for A050209, there is no canonical definition to state claims against.
-/

/-! ## A050209.P16866755610288021810

`∩[A050208(n+1)-1, A050208(n+1)]`
-/

namespace A050209.P16866755610288021810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050208 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050209.P16866755610288021810

/-! ## A050209.P1884553505159195634

`record[A050208(n+2)/Δ[A050208(n+2)]]`
-/

namespace A050209.P1884553505159195634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050208 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050208 (n + 2) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050209.P1884553505159195634

/-! ## A050209.P12300722392531407334

`∩[A050208(n+1), A023443(A050208(n+1))]`
-/

namespace A050209.P12300722392531407334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050208 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050209.P12300722392531407334

/-!
# A050210: Largest denominator in unit fraction representation of triangle of numbers 1/2, 1/3, 2/3, 1/4, 2/4, ... as computed with greedy algorithm.

The programs for A050210, there is no canonical definition to state claims against.
-/

/-! ## A050210.P3151802834134229749

`A014709(A049479(n+2))*A091834(n)`
-/

namespace A050210.P3151802834134229749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A049479 (n + 2)).toNat * A091834 n

end

end A050210.P3151802834134229749

/-! ## A050210.P4365080506871463248

`∏{e}[A009145(n)+1, A000005(#)]*A091834(n)`
-/

namespace A050210.P4365080506871463248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)) * A091834 n

end

end A050210.P4365080506871463248

/-!
# A050211: Triangle of number of permutations of {1, 2, ..., n} having exactly k cycles, each of which is of length >=r for r=3.

The programs for A050211, there is no canonical definition to state claims against.
-/

/-! ## A050211.P875303444860953251

`A005843(lcm(A201013(n+3), A301764(n+1)))`
-/

namespace A050211.P875303444860953251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm (A201013 (n + 3)) (A301764 (n + 1)))

end

end A050211.P875303444860953251

/-! ## A050211.P5228103543109599353

`A335311(A266186(n+1))`
-/

namespace A050211.P5228103543109599353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335311 (A266186 (n + 1)).toNat

end

end A050211.P5228103543109599353

/-!
# A050212: Triangle of number of permutations of {1, 2, ..., n} having exactly k cycles, each of which is of length >=r for r=4.

The programs for A050212, there is no canonical definition to state claims against.
-/

/-! ## A050212.P9420232116769981632

`(n+3)!/A000010(C(n, 4)!)`
-/

namespace A050212.P9420232116769981632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (A000010 (Nat.factorial (Nat.choose n 4)) : ℚ)

end

end A050212.P9420232116769981632

/-! ## A050212.P5723706855316341592

`A248769(A001096(n)+3)`
-/

namespace A050212.P5723706855316341592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248769 (A001096 n + 3).toNat

end

end A050212.P5723706855316341592

/-!
# A050213: Triangle of number of permutations of {1, 2, ..., n} having exactly k cycles, each of which is of length >=r for r=5.

The programs for A050213, there is no canonical definition to state claims against.
-/

/-! ## A050213.P4412137074540059711

`A000142(n+4)%A136359(A165847(n+1))`
-/

namespace A050213.P4412137074540059711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 4)) (A136359 (A165847 (n + 1)).toNat)

end

end A050213.P4412137074540059711

/-!
# A050214: a(n) = Product_{d|n, d^2<=n} (d+n/d); a(1)=1.

The programs for A050214, there is no canonical definition to state claims against.
-/

/-! ## A050214.P3345079154225773962

`A065475(n+1)*A107463(A032559(n+1))`
-/

namespace A050214.P3345079154225773962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) * A107463 (A032559 (n + 1)).toNat

end

end A050214.P3345079154225773962

/-!
# A050215: Starting positions of strings of 2 2's in the decimal expansion of Pi.

The programs for A050215, there is no canonical definition to state claims against.
-/

/-! ## A050215.P74949093517154005

`∩[A037001(n+1)-1, A037001(n+1)]`
-/

namespace A050215.P74949093517154005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050215.P74949093517154005

/-! ## A050215.P14629011440246578131

`∩[A037001(n+1), A023443(A037001(n+1))]`
-/

namespace A050215.P14629011440246578131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037001 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050215.P14629011440246578131

/-! ## A050215.P11723295340993534553

`A023443(∩[A053746(n+1)-1, A053746(n+1)])`
-/

namespace A050215.P11723295340993534553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050215.P11723295340993534553

/-! ## A050215.P4565329479413785409

`A023443(∩[A065254(10*n+2)-1, A065254(10*n+2)])`
-/

namespace A050215.P4565329479413785409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050215.P4565329479413785409

/-!
# A050216: Number of primes between (prime(n))^2 and (prime(n+1))^2, with a(0) = 2 by convention.

The programs for A050216, the canonical program `A050216.P18243411776574111140` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050216 has offset 0).

The definition of A050216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050216.P18243411776574111140

`A251723(A028310(n))+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A050216

/-- `A251723(A028310(n))+1` -/
def P18243411776574111140.Spec : Prop :=
  ∀ n, P18243411776574111140.a n = A050216 n

theorem P18243411776574111140.correct : P18243411776574111140.Spec := by
  intro n
  simp only [A050216]

end A050216

/-! ## A050216.P3420928625143573884

`A251723(A000007(n)+n)+1`
-/

namespace A050216.P3420928625143573884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A000007 n + (n : ℤ)).toNat + 1

end

end A050216.P3420928625143573884

namespace A050216

/-- `A251723(A000007(n)+n)+1` -/
def P3420928625143573884.Spec : Prop :=
  ∀ n, P3420928625143573884.a n = A050216 n

end A050216

/-! ## A050216.P10734643831740479390

`A251723(A065033(2*n))+1`
-/

namespace A050216.P10734643831740479390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A065033 (2 * n)).toNat + 1

end

end A050216.P10734643831740479390

namespace A050216

/-- `A251723(A065033(2*n))+1` -/
def P10734643831740479390.Spec : Prop :=
  ∀ n, P10734643831740479390.a n = A050216 n

end A050216

/-! ## A050216.P7773502671841154661

`A251723(A123108(2*n))+1`
-/

namespace A050216.P7773502671841154661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A123108 (2 * n)).toNat + 1

end

end A050216.P7773502671841154661

namespace A050216

/-- `A251723(A123108(2*n))+1` -/
def P7773502671841154661.Spec : Prop :=
  ∀ n, P7773502671841154661.a n = A050216 n

end A050216

/-! ## A050216.P12865636751297008878

`A000879(n+1)-A038107(A008578(n+1))`
-/

namespace A050216.P12865636751297008878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - A038107 (A008578 (n + 1)).toNat

end

end A050216.P12865636751297008878

namespace A050216

/-- `A000879(n+1)-A038107(A008578(n+1))` -/
def P12865636751297008878.Spec : Prop :=
  ∀ n, P12865636751297008878.a n = A050216 n

end A050216

/-! ## A050216.P11703011653270583300

`A062773(n+1)-(A038107(A182986(n+1))+1)`
-/

namespace A050216.P11703011653270583300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - (A038107 (A182986 (n + 1)).toNat + 1)

end

end A050216.P11703011653270583300

namespace A050216

/-- `A062773(n+1)-(A038107(A182986(n+1))+1)` -/
def P11703011653270583300.Spec : Prop :=
  ∀ n, P11703011653270583300.a n = A050216 n

end A050216

/-! ## A050216.P8222231927113690497

`Δ[A038107(A008578(n+1))]`
-/

namespace A050216.P8222231927113690497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050216.P8222231927113690497

namespace A050216

/-- `Δ[A038107(A008578(n+1))]` -/
def P8222231927113690497.Spec : Prop :=
  ∀ n, P8222231927113690497.a n = A050216 n

end A050216

/-! ## A050216.P1552307831670310320

`Δ[A038107(A182986(n+1))]`
-/

namespace A050216.P1552307831670310320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050216.P1552307831670310320

namespace A050216

/-- `Δ[A038107(A182986(n+1))]` -/
def P1552307831670310320.Spec : Prop :=
  ∀ n, P1552307831670310320.a n = A050216 n

end A050216

/-! ## A050216.P10660246676334768382

`Δ[A038107(sqrt(A280076(n+1)))]`
-/

namespace A050216.P10660246676334768382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050216.P10660246676334768382

namespace A050216

/-- `Δ[A038107(sqrt(A280076(n+1)))]` -/
def P10660246676334768382.Spec : Prop :=
  ∀ n, P10660246676334768382.a n = A050216 n

end A050216

/-! ## A050216.P4495581037188578191

`A038107(A000040(n+1))-A038107(A008578(n+1))`
-/

namespace A050216.P4495581037188578191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000040 (n + 1)).toNat - A038107 (A008578 (n + 1)).toNat

end

end A050216.P4495581037188578191

namespace A050216

/-- `A038107(A000040(n+1))-A038107(A008578(n+1))` -/
def P4495581037188578191.Spec : Prop :=
  ∀ n, P4495581037188578191.a n = A050216 n

end A050216

/-! ## A050216.P13455360167139817047

`A038107(A008578(n+2))-A038107(A008578(n+1))`
-/

namespace A050216.P13455360167139817047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A008578 (n + 2)).toNat - A038107 (A008578 (n + 1)).toNat

end

end A050216.P13455360167139817047

namespace A050216

/-- `A038107(A008578(n+2))-A038107(A008578(n+1))` -/
def P13455360167139817047.Spec : Prop :=
  ∀ n, P13455360167139817047.a n = A050216 n

end A050216

/-! ## A050216.P14844819192502666570

`A074705(n)-a(n-1)` with `a(0)=2`
-/

namespace A050216.P14844819192502666570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074705 n - a (n - 1)

end

end A050216.P14844819192502666570

namespace A050216

/-- `A074705(n)-a(n-1)` -/
def P14844819192502666570.Spec : Prop :=
  ∀ n, P14844819192502666570.a n = A050216 n

end A050216

/-!
# A050217: Super-Poulet numbers: Poulet numbers whose divisors d all satisfy d|2^d-2.

The programs for A050217, there is no canonical definition to state claims against.
-/

/-! ## A050217.P3937846203557121064

`∩[A291601(n+1), A291617(n+1)]`
-/

namespace A050217.P3937846203557121064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050217.P3937846203557121064

/-!
# A050218: Sums of digits of Smith numbers A006753.

The programs for A050218, there is no canonical definition to state claims against.
-/

/-! ## A050218.P11617037262131476143

`A007953(A006753(n+1))`
-/

namespace A050218.P11617037262131476143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A006753 (n + 1)).toNat

end

end A050218.P11617037262131476143

/-! ## A050218.P14419094369821805616

`log2(∏{digits}[A006753(log2(1/2)+n+2), 2^#])`
-/

namespace A050218.P14419094369821805616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n + 2 : ℝ))).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A050218.P14419094369821805616

/-! ## A050218.P10456611864146092987

`∑{digits}[∪[A036924(n+1), A036925(n+1)], #]`
-/

namespace A050218.P10456611864146092987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A050218.P10456611864146092987

/-! ## A050218.P5870352365986522397

`∑{digits}[∪[A098835(n+1), A098836(n+1)], #]`
-/

namespace A050218.P5870352365986522397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098835 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A050218.P5870352365986522397

/-! ## A050218.P6232962403387955045

`A118503(A006753(2*n+1-n))`
-/

namespace A050218.P6232962403387955045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (A006753 (2 * n + 1 - n)).toNat

end

end A050218.P6232962403387955045

/-! ## A050218.P13699206627452623474

`∑{d}[A006753(n+1), A118503(A014963(#))]`
-/

namespace A050218.P13699206627452623474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A118503 (A014963 d).toNat

end

end A050218.P13699206627452623474

/-! ## A050218.P11304379980034881672

`A118503(∏{d}[A006753(n+1), A014963(#)])`
-/

namespace A050218.P11304379980034881672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A050218.P11304379980034881672

/-!
# A050219: Smaller of Smith brothers.

The programs for A050219, there is no canonical definition to state claims against.
-/

/-! ## A050219.P18206125268763789040

`A050220(n+1)-1`
-/

namespace A050219.P18206125268763789040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050220 (n + 1) - 1

end

end A050219.P18206125268763789040

/-! ## A050219.P1234998463622532532

`A307428(A007917(n+2))+A050220(n+1)`
-/

namespace A050219.P1234998463622532532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A007917 (n + 2)).toNat + A050220 (n + 1)

end

end A050219.P1234998463622532532

/-! ## A050219.P14516992057993498780

`A063747(Δ[A047513(n+1)])+A050220(n+1)`
-/

namespace A050219.P14516992057993498780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063747 (f1 (n + 1) - f1 n).toNat + A050220 (n + 1)

end

end A050219.P14516992057993498780

/-! ## A050219.P14697339524706436525

`A089263(A007917(2*n+3))+A050220(n+1)`
-/

namespace A050219.P14697339524706436525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A007917 (2 * n + 3)).toNat + A050220 (n + 1)

end

end A050219.P14697339524706436525

/-! ## A050219.P15007189122225835551

`A307428(Δ[A047564(2*n+3)])+A050220(n+1)`
-/

namespace A050219.P15007189122225835551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (f1 (n + 1) - f1 n).toNat + A050220 (n + 1)

end

end A050219.P15007189122225835551

/-! ## A050219.P18094351204487646566

`A089263(A121608(n+1))+A050220(n+1)`
-/

namespace A050219.P18094351204487646566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A121608 (n + 1)).toNat + A050220 (n + 1)

end

end A050219.P18094351204487646566

/-! ## A050219.P8434596993623537154

`A280193(A016813(n))+A050220(n+1)`
-/

namespace A050219.P8434596993623537154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A016813 n).toNat + A050220 (n + 1)

end

end A050219.P8434596993623537154

/-! ## A050219.P12542144878945635862

`∩[A006753(n+1)-1, A006753(n+1)]`
-/

namespace A050219.P12542144878945635862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050219.P12542144878945635862

/-! ## A050219.P11448126852414466603

`A063747(A046854(∑[n]))+A050220(n+1)`
-/

namespace A050219.P11448126852414466603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063747 (A046854 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A050220 (n + 1)

end

end A050219.P11448126852414466603

/-!
# A050220: Larger of Smith brothers.

The programs for A050220, there is no canonical definition to state claims against.
-/

/-! ## A050220.P15390188730846425944

`A050219(n+1)+1`
-/

namespace A050220.P15390188730846425944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050219 (n + 1) + 1

end

end A050220.P15390188730846425944

/-! ## A050220.P9836751708660057557

`∩[A006753(n+1)+1, A006753(n+1)]`
-/

namespace A050220.P9836751708660057557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050220.P9836751708660057557

/-! ## A050220.P16705101123254538832

`A004830(A050219(n+1))`
-/

namespace A050220.P16705101123254538832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A050219 (n + 1)).toNat

end

end A050220.P16705101123254538832

/-! ## A050220.P2156364122546625967

`∩[A006753(n+1), A020725(A006753(n+1))]`
-/

namespace A050220.P2156364122546625967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A006753 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050220.P2156364122546625967

/-!
# A050221: a(n) = number of sets of consecutive primes whose arithmetic mean is A060863(n).

The programs for A050221, there is no canonical definition to state claims against.
-/

/-! ## A050221.P11562940247643195488

`A122821(A060863(n+1))`
-/

namespace A050221.P11562940247643195488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (A060863 (n + 1)).toNat

end

end A050221.P11562940247643195488

/-! ## A050221.P13368291316385983950

`A122821(lt[5, a(A122821(n))²])` with `a(0)=2`
-/

namespace A050221.P13368291316385983950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A122821 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050221.P13368291316385983950

/-! ## A050221.P3303299268597229555

`A122821(lt[0, A122821(n+1)]+1)`
-/

namespace A050221.P3303299268597229555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050221.P3303299268597229555

/-! ## A050221.P12055101090285006619

`A122821(comp[A060864(n+1)-1]+1)`
-/

namespace A050221.P12055101090285006619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060864 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A050221.P12055101090285006619

/-! ## A050221.P18140668761622266673

`A336123(xor(2*n+1, A053639(n+1)))`
-/

namespace A050221.P18140668761622266673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (Int.xor (2 * n + 1 : ℤ) (A053639 (n + 1))).toNat

end

end A050221.P18140668761622266673

/-!
# A050222: Starting positions of strings of 2 3's in the decimal expansion of Pi.

The programs for A050222, there is no canonical definition to state claims against.
-/

/-! ## A050222.P11309405615365889599

`∩[A037002(n+1)-1, A037002(n+1)]`
-/

namespace A050222.P11309405615365889599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050222.P11309405615365889599

/-! ## A050222.P2703159846727257845

`A037002(eq[1, Δ[A053747(n+1)]])`
-/

namespace A050222.P2703159846727257845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050222.P2703159846727257845

/-! ## A050222.P14634874036266198168

`A037002(eq[0, A037002(n+1)-A053747(n+1)])`
-/

namespace A050222.P14634874036266198168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (n + 1) - A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050222.P14634874036266198168

/-! ## A050222.P9826574930686065751

`A037002(eq[1, A037002(n+1)/A053747(n+1)])`
-/

namespace A050222.P9826574930686065751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037002 (n + 1) : ℚ) / (A053747 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A050222.P9826574930686065751

/-! ## A050222.P14229411233208696692

`A037002(eq[0, Δ[A065254(10*n+3)]-1])`
-/

namespace A050222.P14229411233208696692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050222.P14229411233208696692

/-! ## A050222.P406135181833708002

`∩[A037002(n+1), A023443(A037002(n+1))]`
-/

namespace A050222.P406135181833708002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037002 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050222.P406135181833708002

/-!
# A050223: Digit sums of hoax numbers A019506.

The programs for A050223, the canonical program `A050223.P13683550059284488781` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050223 has offset 1).

The definition of A050223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050223.P13683550059284488781

`A007953(A019506(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050223

/-- `A007953(A019506(n+1))` -/
def P13683550059284488781.Spec : Prop :=
  ∀ n, P13683550059284488781.a n = A050223 (n + 1)

theorem P13683550059284488781.correct : P13683550059284488781.Spec := by
  intro n
  simp only [A050223, Nat.add_sub_cancel]

end A050223

/-! ## A050223.P12385113419233669841

`∑{digits}[A019506(n+1), A007376(#)]`
-/

namespace A050223.P12385113419233669841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007376 x).sum

end

end A050223.P12385113419233669841

namespace A050223

/-- `∑{digits}[A019506(n+1), A007376(#)]` -/
def P12385113419233669841.Spec : Prop :=
  ∀ n, P12385113419233669841.a n = A050223 (n + 1)

end A050223

/-! ## A050223.P16231545032324881506

`∑{digits}[A019506(n+1), A010888(#)]`
-/

namespace A050223.P16231545032324881506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010888 x).sum

end

end A050223.P16231545032324881506

namespace A050223

/-- `∑{digits}[A019506(n+1), A010888(#)]` -/
def P16231545032324881506.Spec : Prop :=
  ∀ n, P16231545032324881506.a n = A050223 (n + 1)

end A050223

/-! ## A050223.P15643883672939192927

`∑{p}[A019506(n+1), A118503(#)]`
-/

namespace A050223.P15643883672939192927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A118503 p

end

end A050223.P15643883672939192927

namespace A050223

/-- `∑{p}[A019506(n+1), A118503(#)]` -/
def P15643883672939192927.Spec : Prop :=
  ∀ n, P15643883672939192927.a n = A050223 (n + 1)

end A050223

/-! ## A050223.P8622559001284874864

`A169805(A019506(n+1))/A000005(A002476(n+1))`
-/

namespace A050223.P8622559001284874864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (A019506 (n + 1)).toNat : ℚ) / (A000005 (A002476 (n + 1)).toNat : ℚ)

end

end A050223.P8622559001284874864

namespace A050223

/-- `A169805(A019506(n+1))/A000005(A002476(n+1))` -/
def P8622559001284874864.Spec : Prop :=
  ∀ n, P8622559001284874864.a n = (A050223 (n + 1) : ℚ)

end A050223

/-! ## A050223.P5300548076302244490

`2^A321804(A007318(n))*A169805(A019506(n+1))`
-/

namespace A050223.P5300548076302244490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ) * (A169805 (A019506 (n + 1)).toNat : ℚ)

end

end A050223.P5300548076302244490

namespace A050223

/-- `2^A321804(A007318(n))*A169805(A019506(n+1))` -/
def P5300548076302244490.Spec : Prop :=
  ∀ n, P5300548076302244490.a n = (A050223 (n + 1) : ℚ)

end A050223

/-!
# A050226: Numbers m such that m divides Sum_{k = 1..m} A000005(k).

The programs for A050226, there is no canonical definition to state claims against.
-/

/-! ## A050226.P15412620402936870984

`eq[1, A059247(n+1)]+1`
-/

namespace A050226.P15412620402936870984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050226.P15412620402936870984

/-! ## A050226.P2910751982145858264

`lt[n, 2*gcd(n, A006218(n))]`
-/

namespace A050226.P2910751982145858264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n : ℤ) (A006218 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050226.P2910751982145858264

/-! ## A050226.P1217034008653110502

`record[gcd(n+1, A002541(n+1))]`
-/

namespace A050226.P1217034008653110502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002541 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050226.P1217034008653110502

/-! ## A050226.P11447909039241335835

`record[A028310(gcd(n, A006218(n)))]`
-/

namespace A050226.P11447909039241335835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A006218 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050226.P11447909039241335835

/-! ## A050226.P14896612591678046489

`record[A028310(n/A059247(A028310(n)))]`
-/

namespace A050226.P14896612591678046489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A059247 (A028310 n).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050226.P14896612591678046489

/-!
# A050227: Triangle of number of n-tosses having a run of r or more heads for a fair coin with r=1 to n across and n=1, 2, ... down.

The programs for A050227, there is no canonical definition to state claims against.
-/

/-! ## A050227.P13152625569653025433

`A109435(comp[∑[n]])`
-/

namespace A050227.P13152625569653025433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109435 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A050227.P13152625569653025433

/-! ## A050227.P9873469719636259996

`or(char[1], A109435(A014132(n+1)))`
-/

namespace A050227.P9873469719636259996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A109435 (A014132 (n + 1)).toNat)

end

end A050227.P9873469719636259996

/-! ## A050227.P12887081294909101895

`gcd(A000038(n), A109435(A014132(n+1)))`
-/

namespace A050227.P12887081294909101895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109435 (A014132 (n + 1)).toNat)

end

end A050227.P12887081294909101895

/-! ## A050227.P8730667264679622294

`lcm(A020985(n), A109435(A014132(n+1)))`
-/

namespace A050227.P8730667264679622294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A109435 (A014132 (n + 1)).toNat)

end

end A050227.P8730667264679622294

/-! ## A050227.P15586497880189218096

`char[A004442(n)]*A109435(A014132(n+1))`
-/

namespace A050227.P15586497880189218096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A109435 (A014132 (n + 1)).toNat

end

end A050227.P15586497880189218096

/-! ## A050227.P2152061043236751616

`A000203(gcd(n, n+1))*A109435(A014132(n+1))`
-/

namespace A050227.P2152061043236751616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A109435 (A014132 (n + 1)).toNat

end

end A050227.P2152061043236751616

/-! ## A050227.P458980656146793227

`A109435(A014132(n+1))%A018921(n)`
-/

namespace A050227.P458980656146793227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109435 (A014132 (n + 1)).toNat) (A018921 n)

end

end A050227.P458980656146793227

/-! ## A050227.P1713132850036599674

`∑{d}[A109435(A014132(n+1)), A000010(#)]`
-/

namespace A050227.P1713132850036599674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109435 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A050227.P1713132850036599674

/-! ## A050227.P901881133965706429

`A010052(n²)*A109435(A014132(n+1))`
-/

namespace A050227.P901881133965706429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A109435 (A014132 (n + 1)).toNat

end

end A050227.P901881133965706429

/-! ## A050227.P12378056288913929677

`∏{d}[A109435(A014132(n+1)), A014963(#)]`
-/

namespace A050227.P12378056288913929677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109435 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A050227.P12378056288913929677

/-!
# A050228: a(n) is the number of subsequences {s(k)} of {1,2,3,...n} such that s(k+1)-s(k) is 1 or 3.

The programs for A050228, the canonical program `A050228.P4926728603516705213` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050228 has offset 1).

The definition of A050228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050228.P4926728603516705213

`3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11, a(4)=19`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050228

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` -/
def P4926728603516705213.Spec : Prop :=
  ∀ n, P4926728603516705213.a n = A050228 (n + 1)

theorem P4926728603516705213.correct : P4926728603516705213.Spec := by
  intro n
  simp only [A050228, Nat.add_sub_cancel]

end A050228

/-! ## A050228.P14535022822558631848

`∑[ogf(1/(1-2x+x^2-x^3+x^4))]`
-/

namespace A050228.P14535022822558631848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P14535022822558631848

namespace A050228

/-- `∑[ogf(1/(1-2x+x^2-x^3+x^4))]` -/
def P14535022822558631848.Spec : Prop :=
  ∀ n, P14535022822558631848.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P15069593174611497809

`ogf(1/(1-3x+3x^2-2x^3+2x^4-x^5))`
-/

namespace A050228.P15069593174611497809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 3, -2, 2, -1] n

end

end A050228.P15069593174611497809

namespace A050228

/-- `ogf(1/(1-3x+3x^2-2x^3+2x^4-x^5))` -/
def P15069593174611497809.Spec : Prop :=
  ∀ n, P15069593174611497809.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P6462245447283129494

`∑[∑[a(n-1)+a(n-3)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A050228.P6462245447283129494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P6462245447283129494

namespace A050228

/-- `∑[∑[a(n-1)+a(n-3)]]` -/
def P6462245447283129494.Spec : Prop :=
  ∀ n, (P6462245447283129494.a n : ℤ) = A050228 (n + 1)

end A050228

/-! ## A050228.P4130973573332919025

`n+1+a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A050228.P4130973573332919025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  n + 1 + (a (n - 1) + a (n - 3))

end

end A050228.P4130973573332919025

namespace A050228

/-- `n+1+a(n-1)+a(n-3)` -/
def P4130973573332919025.Spec : Prop :=
  ∀ n, (P4130973573332919025.a n : ℤ) = A050228 (n + 1)

end A050228

/-! ## A050228.P5821027856821060651

`∑[A077868(n)]`
-/

namespace A050228.P5821027856821060651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P5821027856821060651

namespace A050228

/-- `∑[A077868(n)]` -/
def P5821027856821060651.Spec : Prop :=
  ∀ n, P5821027856821060651.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P9351158787315027480

`∑[∑[A000930(n)]]`
-/

namespace A050228.P9351158787315027480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P9351158787315027480

namespace A050228

/-- `∑[∑[A000930(n)]]` -/
def P9351158787315027480.Spec : Prop :=
  ∀ n, P9351158787315027480.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P3221242004125743417

`record[A068921(n)-n]`
-/

namespace A050228.P3221242004125743417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050228.P3221242004125743417

namespace A050228

/-- `record[A068921(n)-n]` -/
def P3221242004125743417.Spec : Prop :=
  ∀ n, P3221242004125743417.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P18324167703296749695

`∑[∑[abs(A199804(n))]]`
-/

namespace A050228.P18324167703296749695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P18324167703296749695

namespace A050228

/-- `∑[∑[abs(A199804(n))]]` -/
def P18324167703296749695.Spec : Prop :=
  ∀ n, P18324167703296749695.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P9184991988249268444

`∑[∑[∑[A078012(n)]]]`
-/

namespace A050228.P9184991988249268444
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P9184991988249268444

namespace A050228

/-- `∑[∑[∑[A078012(n)]]]` -/
def P9184991988249268444.Spec : Prop :=
  ∀ n, P9184991988249268444.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P3998494442017971231

`A020749(n)-(n+4)`
-/

namespace A050228.P3998494442017971231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 n - (n + 4 : ℤ)

end

end A050228.P3998494442017971231

namespace A050228

/-- `A020749(n)-(n+4)` -/
def P3998494442017971231.Spec : Prop :=
  ∀ n, P3998494442017971231.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P3167562637991897186

`A048626(n)-(n+5)`
-/

namespace A050228.P3167562637991897186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 n - (n + 5 : ℤ)

end

end A050228.P3167562637991897186

namespace A050228

/-- `A048626(n)-(n+5)` -/
def P3167562637991897186.Spec : Prop :=
  ∀ n, P3167562637991897186.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P15467794548779771462

`∑[Δ[A020745(n)]-1]`
-/

namespace A050228.P15467794548779771462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P15467794548779771462

namespace A050228

/-- `∑[Δ[A020745(n)]-1]` -/
def P15467794548779771462.Spec : Prop :=
  ∀ n, P15467794548779771462.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P14932869340917852450

`∑[∑[A108104(2*n)]]`
-/

namespace A050228.P14932869340917852450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P14932869340917852450

namespace A050228

/-- `∑[∑[A108104(2*n)]]` -/
def P14932869340917852450.Spec : Prop :=
  ∀ n, P14932869340917852450.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P7115425363772913931

`∑[∑[A135851(n+5)]]`
-/

namespace A050228.P7115425363772913931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P7115425363772913931

namespace A050228

/-- `∑[∑[A135851(n+5)]]` -/
def P7115425363772913931.Spec : Prop :=
  ∀ n, P7115425363772913931.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P16052714232510373920

`∑[A068921(n+2)-1]`
-/

namespace A050228.P16052714232510373920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P16052714232510373920

namespace A050228

/-- `∑[A068921(n+2)-1]` -/
def P16052714232510373920.Spec : Prop :=
  ∀ n, P16052714232510373920.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P15350660652716181119

`∑[A019527(n+2)-3]`
-/

namespace A050228.P15350660652716181119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019527 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050228.P15350660652716181119

namespace A050228

/-- `∑[A019527(n+2)-3]` -/
def P15350660652716181119.Spec : Prop :=
  ∀ n, P15350660652716181119.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P6740129879108235909

`record[A000930(n+1)-n]`
-/

namespace A050228.P6740129879108235909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050228.P6740129879108235909

namespace A050228

/-- `record[A000930(n+1)-n]` -/
def P6740129879108235909.Spec : Prop :=
  ∀ n, P6740129879108235909.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P1087467317358073739

`A020745(n+1)-(n+4)`
-/

namespace A050228.P1087467317358073739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1) - (n + 4 : ℤ)

end

end A050228.P1087467317358073739

namespace A050228

/-- `A020745(n+1)-(n+4)` -/
def P1087467317358073739.Spec : Prop :=
  ∀ n, P1087467317358073739.a n = A050228 (n + 1)

end A050228

/-! ## A050228.P13659245341281835391

`A048625(n+1)-(n+5)`
-/

namespace A050228.P13659245341281835391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 1) - (n + 5 : ℤ)

end

end A050228.P13659245341281835391

namespace A050228

/-- `A048625(n+1)-(n+5)` -/
def P13659245341281835391.Spec : Prop :=
  ∀ n, P13659245341281835391.a n = A050228 (n + 1)

end A050228

/-!
# A050229: Numbers k such that for any x in 1..k-1 there exists a y in 0..k-2 such that x^2 == 2^y (mod k).

The programs for A050229, there is no canonical definition to state claims against.
-/

/-! ## A050229.P5268114304441868338

`A071642(n+1)+1`
-/

namespace A050229.P5268114304441868338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 1) + 1

end

end A050229.P5268114304441868338

/-! ## A050229.P11877764795647200767

`∩[A007885(n+1), A014657(n+1)]`
-/

namespace A050229.P11877764795647200767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050229.P11877764795647200767

/-! ## A050229.P10636434488551511413

`lt[A319350(n+1), 4]+1`
-/

namespace A050229.P10636434488551511413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A050229.P10636434488551511413

/-! ## A050229.P2019642334379321280

`lt[A319351(n+1)², 10]+1`
-/

namespace A050229.P2019642334379321280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319351 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A050229.P2019642334379321280

/-! ## A050229.P1077663273985802805

`∩[A007885(n+1), A047606(n+1)]`
-/

namespace A050229.P1077663273985802805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050229.P1077663273985802805

/-! ## A050229.P3872264788871366479

`∩[A007885(n+1), A034044(n+1)]`
-/

namespace A050229.P3872264788871366479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050229.P3872264788871366479

/-! ## A050229.P1688882581908149183

`∩[A007885(n+1), A047449(n+1)]`
-/

namespace A050229.P1688882581908149183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050229.P1688882581908149183

/-! ## A050229.P11834626835567543811

`∩[A007885(n+1), A047607(n+1)]`
-/

namespace A050229.P11834626835567543811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050229.P11834626835567543811

/-! ## A050229.P8478735972101009170

`∩[A007885(n+1), A047450(n+1)]`
-/

namespace A050229.P8478735972101009170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050229.P8478735972101009170

/-! ## A050229.P17099268929680617129

`eq[n, A024222(n+1)]+1`
-/

namespace A050229.P17099268929680617129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050229.P17099268929680617129

/-! ## A050229.P14141920935100510848

`record[and(n, A007733(n+1))+1]`
-/

namespace A050229.P14141920935100510848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A007733 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050229.P14141920935100510848

/-! ## A050229.P5272760415368574890

`A057174(A071642(n+1))`
-/

namespace A050229.P5272760415368574890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A071642 (n + 1)).toNat

end

end A050229.P5272760415368574890

/-! ## A050229.P3280593918708273168

`record[A024222(A006530(n+1))+1]`
-/

namespace A050229.P3280593918708273168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A006530 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050229.P3280593918708273168

/-! ## A050229.P17414879005969290462

`record[A024222(A014963(n+1))+1]`
-/

namespace A050229.P17414879005969290462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A014963 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050229.P17414879005969290462

/-! ## A050229.P12592612980915173383

`record[A024222(A020639(n+1))+1]`
-/

namespace A050229.P12592612980915173383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A020639 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050229.P12592612980915173383

/-! ## A050229.P13799007863632790907

`eq[A007733(n+1), A028310(n)]+1`
-/

namespace A050229.P13799007863632790907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050229.P13799007863632790907

/-! ## A050229.P11374279714972870536

`eq[A091248(n+1), A174296(n)]+1`
-/

namespace A050229.P11374279714972870536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050229.P11374279714972870536

/-! ## A050229.P10362228377190876410

`record[A006530(n+1)/A318622(n+1)]`
-/

namespace A050229.P10362228377190876410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) / (A318622 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050229.P10362228377190876410

/-! ## A050229.P10054941248321104645

`record[A014963(n+1)/A318622(n+1)]`
-/

namespace A050229.P10054941248321104645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) / (A318622 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050229.P10054941248321104645

/-!
# A050230: Starting positions of strings of 2 4's in the decimal expansion of Pi.

The programs for A050230, there is no canonical definition to state claims against.
-/

/-! ## A050230.P7465337172970013338

`∩[A037003(n+1)-1, A037003(n+1)]`
-/

namespace A050230.P7465337172970013338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050230.P7465337172970013338

/-! ## A050230.P3634377953734242047

`eq[4, exp(A095916(n+1))*A000796(n)]`
-/

namespace A050230.P3634377953734242047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ) * (A000796 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A050230.P3634377953734242047

/-! ## A050230.P12046446802181510194

`eq[A030644(n), A040020(A095916(n+1)²)]`
-/

namespace A050230.P12046446802181510194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 (A095916 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050230.P12046446802181510194

/-! ## A050230.P14643760711694248570

`∩[A037003(n+1), A023443(A037003(n+1))]`
-/

namespace A050230.P14643760711694248570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037003 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050230.P14643760711694248570

/-! ## A050230.P8789943699148419100

`A023443(∩[A053748(n+1)-1, A053748(n+1)])`
-/

namespace A050230.P8789943699148419100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053748 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053748 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050230.P8789943699148419100

/-! ## A050230.P1563041119922639243

`eq[A017365(A095916(n+1)²), A179104(n+1)]`
-/

namespace A050230.P1563041119922639243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A095916 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050230.P1563041119922639243

/-!
# A050231: a(n) is the number of n-tosses having a run of 3 or more heads for a fair coin (i.e., probability is a(n)/2^n).

The programs for A050231, the canonical program `A050231.P8823863988152097088` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050231 has offset 1).

The definition of A050231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050231.P17313326306190002796

`2*a(n-1)+2^(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A050231.P17313326306190002796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 4)

end

end A050231.P17313326306190002796

namespace A050231

/-- `2*a(n-1)+2^(n-3)-a(n-4)` -/
def P17313326306190002796.Spec : Prop :=
  ∀ n, P17313326306190002796.a n = (A050231 (n + 1) : ℚ)

end A050231

/-! ## A050231.P8823863988152097088

`3*a(n-1)-a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050231

/-- `3*a(n-1)-a(n-2)-a(n-3)-2*a(n-4)` -/
def P8823863988152097088.Spec : Prop :=
  ∀ n, P8823863988152097088.a n = A050231 (n + 1)

theorem P8823863988152097088.correct : P8823863988152097088.Spec := by
  intro n
  simp only [A050231, Nat.add_sub_cancel]

end A050231

/-! ## A050231.P6922555172328503944

`ogf(x^2/(1-3x+x^2+x^3+2x^4))`
-/

namespace A050231.P6922555172328503944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 1, 1, 2] n

end

end A050231.P6922555172328503944

namespace A050231

/-- `ogf(x^2/(1-3x+x^2+x^3+2x^4))` -/
def P6922555172328503944.Spec : Prop :=
  ∀ n, P6922555172328503944.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P3955065890545438310

`∑[2^n-A001590(n+3)]`
-/

namespace A050231.P3955065890545438310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001590 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050231.P3955065890545438310

namespace A050231

/-- `∑[2^n-A001590(n+3)]` -/
def P3955065890545438310.Spec : Prop :=
  ∀ n, P3955065890545438310.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P8898513279269355319

`A000073(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A050231.P8898513279269355319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000073 n + 2 * a (n - 1)

end

end A050231.P8898513279269355319

namespace A050231

/-- `A000073(n)+2*a(n-1)` -/
def P8898513279269355319.Spec : Prop :=
  ∀ n, P8898513279269355319.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P5505952372308431172

`A265725(n+1)+A000073(n)`
-/

namespace A050231.P5505952372308431172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265725 (n + 1) + A000073 n

end

end A050231.P5505952372308431172

namespace A050231

/-- `A265725(n+1)+A000073(n)` -/
def P5505952372308431172.Spec : Prop :=
  ∀ n, P5505952372308431172.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P339088039530438066

`∑[A000079(n)-∑[A000213(n)]]`
-/

namespace A050231.P339088039530438066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050231.P339088039530438066

namespace A050231

/-- `∑[A000079(n)-∑[A000213(n)]]` -/
def P339088039530438066.Spec : Prop :=
  ∀ n, P339088039530438066.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P6420361845317474878

`∑[∑[A011782(n)-A000213(n)]]`
-/

namespace A050231.P6420361845317474878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050231.P6420361845317474878

namespace A050231

/-- `∑[∑[A011782(n)-A000213(n)]]` -/
def P6420361845317474878.Spec : Prop :=
  ∀ n, P6420361845317474878.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P2001096963233133457

`A126646(n)-∑[∑[A000213(n)]]`
-/

namespace A050231.P2001096963233133457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050231.P2001096963233133457

namespace A050231

/-- `A126646(n)-∑[∑[A000213(n)]]` -/
def P2001096963233133457.Spec : Prop :=
  ∀ n, P2001096963233133457.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P4124554228465604548

`A050232(n+1)+A000102(n+2)`
-/

namespace A050231.P4124554228465604548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050232 (n + 1) + A000102 (n + 2)

end

end A050231.P4124554228465604548

namespace A050231

/-- `A050232(n+1)+A000102(n+2)` -/
def P4124554228465604548.Spec : Prop :=
  ∀ n, P4124554228465604548.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P2357573322491052857

`A000079(n+1)-A000073(n+4)`
-/

namespace A050231.P2357573322491052857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000073 (n + 4)

end

end A050231.P2357573322491052857

namespace A050231

/-- `A000079(n+1)-A000073(n+4)` -/
def P2357573322491052857.Spec : Prop :=
  ∀ n, P2357573322491052857.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P2203920652016575808

`A008466(n)+A167826(n+1)/2`
-/

namespace A050231.P2203920652016575808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008466 n : ℚ) + (A167826 (n + 1) : ℚ) / 2

end

end A050231.P2203920652016575808

namespace A050231

/-- `A008466(n)+A167826(n+1)/2` -/
def P2203920652016575808.Spec : Prop :=
  ∀ n, P2203920652016575808.a n = (A050231 (n + 1) : ℚ)

end A050231

/-! ## A050231.P9786252681693463523

`A000051(n+1)+1-A301657(n+2)`
-/

namespace A050231.P9786252681693463523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (1 - A301657 (n + 2))

end

end A050231.P9786252681693463523

namespace A050231

/-- `A000051(n+1)+1-A301657(n+2)` -/
def P9786252681693463523.Spec : Prop :=
  ∀ n, P9786252681693463523.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P7838383480429530801

`A011782(n+2)-Δ[A000213(n+4)/2]`
-/

namespace A050231.P7838383480429530801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 4) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A050231.P7838383480429530801

namespace A050231

/-- `A011782(n+2)-Δ[A000213(n+4)/2]` -/
def P7838383480429530801.Spec : Prop :=
  ∀ n, P7838383480429530801.a n = (A050231 (n + 1) : ℚ)

end A050231

/-! ## A050231.P14639240080872942597

`∑[A000073(n)/A000079(n)]*A000079(n)`
-/

namespace A050231.P14639240080872942597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A050231.P14639240080872942597

namespace A050231

/-- `∑[A000073(n)/A000079(n)]*A000079(n)` -/
def P14639240080872942597.Spec : Prop :=
  ∀ n, P14639240080872942597.a n = (A050231 (n + 1) : ℚ)

end A050231

/-! ## A050231.P10666590337695606498

`A000225(n+1)-(A325473(n+1)+A062544(n))`
-/

namespace A050231.P10666590337695606498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - (A325473 (n + 1) + A062544 n)

end

end A050231.P10666590337695606498

namespace A050231

/-- `A000225(n+1)-(A325473(n+1)+A062544(n))` -/
def P10666590337695606498.Spec : Prop :=
  ∀ n, P10666590337695606498.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P16567656958734668413

`A000051(n+1)+A027084(n+2)-A018921(n)`
-/

namespace A050231.P16567656958734668413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (A027084 (n + 2) - A018921 n)

end

end A050231.P16567656958734668413

namespace A050231

/-- `A000051(n+1)+A027084(n+2)-A018921(n)` -/
def P16567656958734668413.Spec : Prop :=
  ∀ n, P16567656958734668413.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P1894979318288773927

`A000079(n+1)+A027084(n+2)-A027084(n+3)`
-/

namespace A050231.P1894979318288773927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A027084 (n + 2) - A027084 (n + 3))

end

end A050231.P1894979318288773927

namespace A050231

/-- `A000079(n+1)+A027084(n+2)-A027084(n+3)` -/
def P1894979318288773927.Spec : Prop :=
  ∀ n, P1894979318288773927.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P17609815113291621258

`Δ[A373046(n+1)]`
-/

namespace A050231.P17609815113291621258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050231.P17609815113291621258

namespace A050231

/-- `Δ[A373046(n+1)]` -/
def P17609815113291621258.Spec : Prop :=
  ∀ n, P17609815113291621258.a n = A050231 (n + 1)

end A050231

/-! ## A050231.P17810425974914556787

`A265725(n+2)/2`
-/

namespace A050231.P17810425974914556787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265725 (n + 2) : ℚ) / 2

end

end A050231.P17810425974914556787

namespace A050231

/-- `A265725(n+2)/2` -/
def P17810425974914556787.Spec : Prop :=
  ∀ n, P17810425974914556787.a n = (A050231 (n + 1) : ℚ)

end A050231

/-!
# A050232: a(n) is the number of n-tosses having a run of 4 or more heads for a fair coin (i.e., probability is a(n)/2^n).

The programs for A050232, the canonical program `A050232.P4209895372301179712` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050232 has offset 1).

The definition of A050232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050232.P4209895372301179712

`3*a(n-1)-a(n-2)-a(n-3)-a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050232

/-- `3*a(n-1)-a(n-2)-a(n-3)-a(n-4)-2*a(n-5)` -/
def P4209895372301179712.Spec : Prop :=
  ∀ n, P4209895372301179712.a n = A050232 (n + 1)

theorem P4209895372301179712.correct : P4209895372301179712.Spec := by
  intro n
  simp only [A050232, Nat.add_sub_cancel]

end A050232

/-! ## A050232.P10269785973064875467

`a(n-1)+A000078(n)+a(n-1)` with `a(0)=0`
-/

namespace A050232.P10269785973064875467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A000078 n + a (n - 1))

end

end A050232.P10269785973064875467

namespace A050232

/-- `a(n-1)+A000078(n)+a(n-1)` -/
def P10269785973064875467.Spec : Prop :=
  ∀ n, P10269785973064875467.a n = A050232 (n + 1)

end A050232

/-! ## A050232.P7159796579120727441

`A052955(2*n)-A089074(n+1)`
-/

namespace A050232.P7159796579120727441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n) - A089074 (n + 1)

end

end A050232.P7159796579120727441

namespace A050232

/-- `A052955(2*n)-A089074(n+1)` -/
def P7159796579120727441.Spec : Prop :=
  ∀ n, P7159796579120727441.a n = A050232 (n + 1)

end A050232

/-! ## A050232.P11401605456189503555

`A000079(n+1)-A000078(n+5)`
-/

namespace A050232.P11401605456189503555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000078 (n + 5)

end

end A050232.P11401605456189503555

namespace A050232

/-- `A000079(n+1)-A000078(n+5)` -/
def P11401605456189503555.Spec : Prop :=
  ∀ n, P11401605456189503555.a n = A050232 (n + 1)

end A050232

/-! ## A050232.P11131282392608189860

`A000918(n+1)+1-A089074(n+1)`
-/

namespace A050232.P11131282392608189860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) + (1 - A089074 (n + 1))

end

end A050232.P11131282392608189860

namespace A050232

/-- `A000918(n+1)+1-A089074(n+1)` -/
def P11131282392608189860.Spec : Prop :=
  ∀ n, P11131282392608189860.a n = A050232 (n + 1)

end A050232

/-! ## A050232.P2507512732223739600

`A000051(n+1)-(A089074(n+1)+2)`
-/

namespace A050232.P2507512732223739600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A089074 (n + 1) + 2)

end

end A050232.P2507512732223739600

namespace A050232

/-- `A000051(n+1)-(A089074(n+1)+2)` -/
def P2507512732223739600.Spec : Prop :=
  ∀ n, P2507512732223739600.a n = A050232 (n + 1)

end A050232

/-!
# A050233: a(n) is the number of n-tosses having a run of 5 or more heads for a fair coin (i.e., probability is a(n)/2^n).

The programs for A050233, the canonical program `A050233.P13708317251854185885` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050233 has offset 1).

The definition of A050233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050233.P13708317251854185885

`a(n-1)+A001591(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050233

/-- `a(n-1)+A001591(n)+a(n-1)` -/
def P13708317251854185885.Spec : Prop :=
  ∀ n, P13708317251854185885.a n = A050233 (n + 1)

theorem P13708317251854185885.correct : P13708317251854185885.Spec := by
  intro n
  simp only [A050233, Nat.add_sub_cancel]

end A050233

/-! ## A050233.P11283256991927982763

`A000079(n+1)-A001591(n+6)`
-/

namespace A050233.P11283256991927982763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A001591 (n + 6)

end

end A050233.P11283256991927982763

namespace A050233

/-- `A000079(n+1)-A001591(n+6)` -/
def P11283256991927982763.Spec : Prop :=
  ∀ n, P11283256991927982763.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P1590633720099129970

`A011782(n+2)-A001591(n+6)`
-/

namespace A050233.P1590633720099129970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) - A001591 (n + 6)

end

end A050233.P1590633720099129970

namespace A050233

/-- `A011782(n+2)-A001591(n+6)` -/
def P1590633720099129970.Spec : Prop :=
  ∀ n, P1590633720099129970.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P18093072827989961722

`A000079(n+1)-Δ[A001949(n+6)]`
-/

namespace A050233.P18093072827989961722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f1 (n + 1) - f1 n)

end

end A050233.P18093072827989961722

namespace A050233

/-- `A000079(n+1)-Δ[A001949(n+6)]` -/
def P18093072827989961722.Spec : Prop :=
  ∀ n, P18093072827989961722.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P8814996128653159663

`A000051(n+1)-(A001591(n+6)+1)`
-/

namespace A050233.P8814996128653159663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A001591 (n + 6) + 1)

end

end A050233.P8814996128653159663

namespace A050233

/-- `A000051(n+1)-(A001591(n+6)+1)` -/
def P8814996128653159663.Spec : Prop :=
  ∀ n, P8814996128653159663.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P1555407268061066792

`Δ[A000051(n+1)]-A001591(n+6)`
-/

namespace A050233.P1555407268061066792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001591 (n + 6)

end

end A050233.P1555407268061066792

namespace A050233

/-- `Δ[A000051(n+1)]-A001591(n+6)` -/
def P1555407268061066792.Spec : Prop :=
  ∀ n, P1555407268061066792.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P7675563588840015806

`Δ[A000225(n+1)]-A001591(n+6)`
-/

namespace A050233.P7675563588840015806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001591 (n + 6)

end

end A050233.P7675563588840015806

namespace A050233

/-- `Δ[A000225(n+1)]-A001591(n+6)` -/
def P7675563588840015806.Spec : Prop :=
  ∀ n, P7675563588840015806.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P2100935391807625018

`Δ[A000225(n+1)-A001949(n+6)]`
-/

namespace A050233.P2100935391807625018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A001949 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050233.P2100935391807625018

namespace A050233

/-- `Δ[A000225(n+1)-A001949(n+6)]` -/
def P2100935391807625018.Spec : Prop :=
  ∀ n, P2100935391807625018.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P13966090839108048209

`Δ[A036563(n+1)]-A001591(n+6)`
-/

namespace A050233.P13966090839108048209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001591 (n + 6)

end

end A050233.P13966090839108048209

namespace A050233

/-- `Δ[A036563(n+1)]-A001591(n+6)` -/
def P13966090839108048209.Spec : Prop :=
  ∀ n, P13966090839108048209.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P4612283460386495190

`Δ[A000079(n+1)-Δ[A145113(n+1)]]`
-/

namespace A050233.P4612283460386495190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050233.P4612283460386495190

namespace A050233

/-- `Δ[A000079(n+1)-Δ[A145113(n+1)]]` -/
def P4612283460386495190.Spec : Prop :=
  ∀ n, P4612283460386495190.a n = A050233 (n + 1)

end A050233

/-! ## A050233.P1507668821774425057

`A000079(n+2)%(A001591(n+6)+A000079(n+1))`
-/

namespace A050233.P1507668821774425057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 2)) (A001591 (n + 6) + A000079 (n + 1))

end

end A050233.P1507668821774425057

namespace A050233

/-- `A000079(n+2)%(A001591(n+6)+A000079(n+1))` -/
def P1507668821774425057.Spec : Prop :=
  ∀ n, P1507668821774425057.a n = A050233 (n + 1)

end A050233

/-!
# A050238: Starting positions of strings of 2 5's in the decimal expansion of Pi.

The programs for A050238, there is no canonical definition to state claims against.
-/

/-! ## A050238.P12008948498340343276

`∩[A037004(n+1)-1, A037004(n+1)]`
-/

namespace A050238.P12008948498340343276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050238.P12008948498340343276

/-! ## A050238.P9139798882827218501

`A037004(eq[1, A037004(n+2)-A037004(n+1)]+1)`
-/

namespace A050238.P9139798882827218501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 2) - A037004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050238.P9139798882827218501

/-! ## A050238.P17731109351717482511

`∩[A037004(n+1), A023443(A037004(n+1))]`
-/

namespace A050238.P17731109351717482511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037004 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050238.P17731109351717482511

/-! ## A050238.P9412952352344342850

`∩[A037004(n+1), A289207(A053749(n+1))]`
-/

namespace A050238.P9412952352344342850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A053749 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050238.P9412952352344342850

/-! ## A050238.P849105278033160953

`∩[A053749(n+1)-1, A023443(A053749(n+1)-1)]`
-/

namespace A050238.P849105278033160953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053749 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053749 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050238.P849105278033160953

/-!
# A050242: [ (phi + sqrt(phi))^n ], phi = (1+sqrt(5))/2.

The programs for A050242, the canonical program `A050242.P11941910926680596350` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050242 has offset 0).

The definition of A050242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050242.P11941910926680596350

`floor((sqrt(ϕ)+ϕ)^n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050242

/-- `floor((sqrt(ϕ)+ϕ)^n)` -/
def P11941910926680596350.Spec : Prop :=
  ∀ n, P11941910926680596350.a n = A050242 n

theorem P11941910926680596350.correct : P11941910926680596350.Spec := by
  intro n
  simp only [A050242]

end A050242

/-! ## A050242.P4168583000105022704

`A067099(A286848(n+2))`
-/

namespace A050242.P4168583000105022704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (A286848 (n + 2)).toNat

end

end A050242.P4168583000105022704

namespace A050242

/-- `A067099(A286848(n+2))` -/
def P4168583000105022704.Spec : Prop :=
  ∀ n, P4168583000105022704.a n = A050242 n

end A050242

/-! ## A050242.P6365541777634598126

`A305930(A006130(n))+A018045(n)`
-/

namespace A050242.P6365541777634598126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 (A006130 n).toNat + A018045 n

end

end A050242.P6365541777634598126

namespace A050242

/-- `A305930(A006130(n))+A018045(n)` -/
def P6365541777634598126.Spec : Prop :=
  ∀ n, P6365541777634598126.a n = A050242 n

end A050242

/-!
# A050243: a(n) = floor((1/2 * (sqrt(2) + 1 + sqrt(2*sqrt(2) - 1)))^n ).

The programs for A050243, the canonical program `A050243.P10006487352143975654` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050243 has offset 0).

The definition of A050243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050243.P10006487352143975654

`floor(A289914(3*n)/A289914(2*n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050243

/-- `floor(A289914(3*n)/A289914(2*n))` -/
def P10006487352143975654.Spec : Prop :=
  ∀ n, P10006487352143975654.a n = A050243 n

theorem P10006487352143975654.correct : P10006487352143975654.Spec := by
  intro n
  simp only [A050243]

end A050243

/-! ## A050243.P3886042046443645872

`floor(A033305(3*n+2)/A033305(2*(n+1)))`
-/

namespace A050243.P3886042046443645872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033305 (3 * n + 2) : ℚ) / (A033305 (2 * (n + 1)) : ℚ)⌋

end

end A050243.P3886042046443645872

namespace A050243

/-- `floor(A033305(3*n+2)/A033305(2*(n+1)))` -/
def P3886042046443645872.Spec : Prop :=
  ∀ n, P3886042046443645872.a n = A050243 n

end A050243

/-! ## A050243.P4667739464811804813

`floor(A183324(3*n+2)/A183324(2*(n+1)))`
-/

namespace A050243.P4667739464811804813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183324 (3 * n + 2) : ℚ) / (A183324 (2 * (n + 1)) : ℚ)⌋

end

end A050243.P4667739464811804813

namespace A050243

/-- `floor(A183324(3*n+2)/A183324(2*(n+1)))` -/
def P4667739464811804813.Spec : Prop :=
  ∀ n, P4667739464811804813.a n = A050243 n

end A050243

/-! ## A050243.P9856657756043819929

`floor(A265052(3*n+2)/A265052(2*(n+1)))`
-/

namespace A050243.P9856657756043819929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265052 (3 * n + 2) : ℚ) / (A265052 (2 * (n + 1)) : ℚ)⌋

end

end A050243.P9856657756043819929

namespace A050243

/-- `floor(A265052(3*n+2)/A265052(2*(n+1)))` -/
def P9856657756043819929.Spec : Prop :=
  ∀ n, P9856657756043819929.a n = A050243 n

end A050243

/-! ## A050243.P3136081747888454851

`floor(A100048(4*n+2)/A100048(3*n+2))`
-/

namespace A050243.P3136081747888454851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100048 (4 * n + 2) : ℚ) / (A100048 (3 * n + 2) : ℚ)⌋

end

end A050243.P3136081747888454851

namespace A050243

/-- `floor(A100048(4*n+2)/A100048(3*n+2))` -/
def P3136081747888454851.Spec : Prop :=
  ∀ n, P3136081747888454851.a n = A050243 n

end A050243

/-!
# A050245: Starting positions of strings of 2 6's in the decimal expansion of Pi.

The programs for A050245, there is no canonical definition to state claims against.
-/

/-! ## A050245.P2660919489602460330

`∩[A037005(n+1)-1, A037005(n+1)]`
-/

namespace A050245.P2660919489602460330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050245.P2660919489602460330

/-! ## A050245.P13376189138631031766

`∩[A037005(n+1), A023443(A037005(n+1))]`
-/

namespace A050245.P13376189138631031766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037005 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050245.P13376189138631031766

/-!
# A050246: Digital clock primes.

The programs for A050246, there is no canonical definition to state claims against.
-/

/-! ## A050246.P13764339607525402344

`A055643(A118848(n+1))`
-/

namespace A050246.P13764339607525402344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A118848 (n + 1)).toNat

end

end A050246.P13764339607525402344

/-!
# A050247: a(n) is the sum of the first A045345(n) primes.

The programs for A050247, there is no canonical definition to state claims against.
-/

/-! ## A050247.P14577762182033148248

`A007504(A045345(n+1))`
-/

namespace A050247.P14577762182033148248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A045345 (n + 1)).toNat

end

end A050247.P14577762182033148248

/-! ## A050247.P10063676338119121822

`A045345(n+1)*A050248(n+1)`
-/

namespace A050247.P10063676338119121822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045345 (n + 1) * A050248 (n + 1)

end

end A050247.P10063676338119121822

/-! ## A050247.P12042692995440660586

`lcm(A045345(A010351(n+1)), A050248(n+1))`
-/

namespace A050247.P12042692995440660586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045345 (A010351 (n + 1)).toNat) (A050248 (n + 1))

end

end A050247.P12042692995440660586

/-!
# A050248: Integer averages of first k primes for some k.

The programs for A050248, there is no canonical definition to state claims against.
-/

/-! ## A050248.P4741196507991325044

`A050247(n+1)/A045345(n+1)`
-/

namespace A050248.P4741196507991325044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050247 (n + 1) : ℚ) / (A045345 (n + 1) : ℚ)

end

end A050248.P4741196507991325044

/-! ## A050248.P14830102145338645387

`A050247(n+1)/A111452(A338924(n+1)%A262339(n+1))`
-/

namespace A050248.P14830102145338645387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050247 (n + 1) : ℚ) / (A111452 (Int.tmod (A338924 (n + 1)) (A262339 (n + 1))).toNat : ℚ)

end

end A050248.P14830102145338645387

/-!
# A050249: Weakly prime numbers (changing any one decimal digit always produces a composite number). Also called digitally delicate primes.

The programs for A050249, there is no canonical definition to state claims against.
-/

/-! ## A050249.P12082288844323333756

`∩[A158124(n+1), A186694(n+1)]`
-/

namespace A050249.P12082288844323333756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050249.P12082288844323333756

/-! ## A050249.P1984013174196442522

`∩[A158578(n+1), A186694(n+1)]`
-/

namespace A050249.P1984013174196442522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050249.P1984013174196442522

/-! ## A050249.P11161439606297650228

`A158124(A350349(n+1)^A061906(n+4))`
-/

namespace A050249.P11161439606297650228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158124 (SequenceMachineLib.roundAway ((A350349 (n + 1) : ℚ) ^ (A061906 (n + 4) : ℤ))).toNat

end

end A050249.P11161439606297650228

/-!
# A050250: Number of nonzero palindromes less than 10^n.

The programs for A050250, the canonical program `A050250.P9727505272624782083` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050250 has offset 1).

The definition of A050250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050250.P9727505272624782083

`10*a(n-2)+18` with `a(0)=9, a(1)=18`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050250

/-- `10*a(n-2)+18` -/
def P9727505272624782083.Spec : Prop :=
  ∀ n, (P9727505272624782083.a n : ℤ) = A050250 (n + 1)

theorem P9727505272624782083.correct : P9727505272624782083.Spec := by
  intro n
  simp only [A050250, Nat.add_sub_cancel]

end A050250

/-! ## A050250.P9333628494561322172

`1/2*10^((2*(n+1)+(-1)^(n+1)-1)/4)*(13-9*(-1)^(n+1))-2`
-/

namespace A050250.P9333628494561322172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (10 : ℝ) ^ (((2 * (n + 1) : ℤ) + (-1) ^ (n + 1) - 1 : ℚ) / 4 : ℝ) * (13 - 9 * (-1) ^ (n + 1) : ℝ) - 2

end

end A050250.P9333628494561322172

namespace A050250

/-- `1/2*10^((2*(n+1)+(-1)^(n+1)-1)/4)*(13-9*(-1)^(n+1))-2` -/
def P9333628494561322172.Spec : Prop :=
  ∀ n, P9333628494561322172.a n = (A050250 (n + 1) : ℝ)

end A050250

/-! ## A050250.P1595915108592217670

`∑[ogf((9+9x)/(1-10x^2))]`
-/

namespace A050250.P1595915108592217670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 9] [1, 0, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050250.P1595915108592217670

namespace A050250

/-- `∑[ogf((9+9x)/(1-10x^2))]` -/
def P1595915108592217670.Spec : Prop :=
  ∀ n, P1595915108592217670.a n = A050250 (n + 1)

end A050250

/-! ## A050250.P15053233635538533768

`ogf((9+9x)/(1-x-10x^2+10x^3))`
-/

namespace A050250.P15053233635538533768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 9] [1, -1, -10, 10] n

end

end A050250.P15053233635538533768

namespace A050250

/-- `ogf((9+9x)/(1-x-10x^2+10x^3))` -/
def P15053233635538533768.Spec : Prop :=
  ∀ n, P15053233635538533768.a n = A050250 (n + 1)

end A050250

/-! ## A050250.P1270480718329712630

`∑[10*a(n-2)]` with `a(0)=9, a(1)=9`
-/

namespace A050250.P1270480718329712630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 9] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050250.P1270480718329712630

namespace A050250

/-- `∑[10*a(n-2)]` -/
def P1270480718329712630.Spec : Prop :=
  ∀ n, (P1270480718329712630.a n : ℤ) = A050250 (n + 1)

end A050250

/-! ## A050250.P17104114404456394305

`9*∑[A286507(n)]`
-/

namespace A050250.P17104114404456394305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050250.P17104114404456394305

namespace A050250

/-- `9*∑[A286507(n)]` -/
def P17104114404456394305.Spec : Prop :=
  ∀ n, P17104114404456394305.a n = A050250 (n + 1)

end A050250

/-! ## A050250.P11480983314951216075

`9*A094626(n+1)`
-/

namespace A050250.P11480983314951216075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A094626 (n + 1)

end

end A050250.P11480983314951216075

namespace A050250

/-- `9*A094626(n+1)` -/
def P11480983314951216075.Spec : Prop :=
  ∀ n, P11480983314951216075.a n = A050250 (n + 1)

end A050250

/-! ## A050250.P810909539470074630

`2*∑[A050683(n+1)/2]`
-/

namespace A050250.P810909539470074630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050683 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050250.P810909539470074630

namespace A050250

/-- `2*∑[A050683(n+1)/2]` -/
def P810909539470074630.Spec : Prop :=
  ∀ n, P810909539470074630.a n = (A050250 (n + 1) : ℚ)

end A050250

/-! ## A050250.P17211115598251093092

`record[A069532(n+1)-(A051885(n)+1)]`
-/

namespace A050250.P17211115598251093092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069532 (n + 1) - (A051885 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050250.P17211115598251093092

namespace A050250

/-- `record[A069532(n+1)-(A051885(n)+1)]` -/
def P17211115598251093092.Spec : Prop :=
  ∀ n, P17211115598251093092.a n = A050250 (n + 1)

end A050250

/-!
# A050251: Number of palindromic primes less than 10^n.

The programs for A050251, there is no canonical definition to state claims against.
-/

/-! ## A050251.P12100738915592822967

`A016115(n)+a(n-1)` with `a(0)=0`
-/

namespace A050251.P12100738915592822967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A016115 n + a (n - 1)

end

end A050251.P12100738915592822967

/-! ## A050251.P870289935350482144

`∑[A016115(A028310(n))]-4`
-/

namespace A050251.P870289935350482144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016115 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A050251.P870289935350482144

/-! ## A050251.P13725773035250553082

`∑[A016115(n+1)]-A016115(n+1)`
-/

namespace A050251.P13725773035250553082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A016115 (n + 1)

end

end A050251.P13725773035250553082

/-! ## A050251.P8312664692250532864

`∑[A016115(A028310(n))%A003684(n+1)]`
-/

namespace A050251.P8312664692250532864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016115 (A028310 n).toNat) (A003684 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050251.P8312664692250532864

/-!
# A050252: Number of digits in the prime factorization of n (counting terms of the form p^1 as p).

The programs for A050252, there is no canonical definition to state claims against.
-/

/-! ## A050252.P5694067803098809283

`∑{digits}[A080670(n+1), A055642(#)]`
-/

namespace A050252.P5694067803098809283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A050252.P5694067803098809283

/-! ## A050252.P208689866410583943

`∑{digits}[A080670(n+1), A113010(#)]`
-/

namespace A050252.P208689866410583943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A050252.P208689866410583943

/-! ## A050252.P13282920457004161369

`∑{digits}[A080670(n+1), A007318(A007318(#))]`
-/

namespace A050252.P13282920457004161369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A050252.P13282920457004161369

/-! ## A050252.P877840955125514439

`∑{digits}[A080670(n+1), A144404(A338876(#))]`
-/

namespace A050252.P877840955125514439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A144404 (A338876 x).toNat).sum

end

end A050252.P877840955125514439

/-! ## A050252.P4066796026429116154

`∑{digits}[A080670(n+1), A124010(A080670(#+1)-#+1)]`
-/

namespace A050252.P4066796026429116154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A124010 (A080670 (x + 1) - (x : ℤ) + 1).toNat).sum

end

end A050252.P4066796026429116154

/-! ## A050252.P16183921040221530935

`A055642(A080670(n+1))`
-/

namespace A050252.P16183921040221530935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A080670 (n + 1)).toNat

end

end A050252.P16183921040221530935

/-! ## A050252.P17089823056331033159

`A262190(or(2, A080670(n+1)))`
-/

namespace A050252.P17089823056331033159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (Int.lor 2 (A080670 (n + 1))).toNat

end

end A050252.P17089823056331033159

/-! ## A050252.P1981678665100961834

`A262190(A080670(n+1)+A000120(n))`
-/

namespace A050252.P1981678665100961834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A080670 (n + 1) + A000120 n).toNat

end

end A050252.P1981678665100961834

/-! ## A050252.P14487883350821710654

`A262190(A133573(n)+A080670(n+1))`
-/

namespace A050252.P14487883350821710654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A133573 n + A080670 (n + 1)).toNat

end

end A050252.P14487883350821710654

/-! ## A050252.P8443671439918102458

`A262190(A080670(n+1)+A001227(n+1))`
-/

namespace A050252.P8443671439918102458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A080670 (n + 1) + A001227 (n + 1)).toNat

end

end A050252.P8443671439918102458

/-!
# A050253: G.f.: ( 1 - x^2 - sqrt( 1 - 2*x^2 - 4*x^3 - 3*x^4 ) ) / ( 2*x^3 ).

The programs for A050253, there is no canonical definition to state claims against.
-/

/-! ## A050253.P11714517494456470575

`A247162(n+2)+A247162(n+3)`
-/

namespace A050253.P11714517494456470575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247162 (n + 2) + A247162 (n + 3)

end

end A050253.P11714517494456470575

/-! ## A050253.P3295679378543861108

`A103221(A294627(n)+A022086(n))`
-/

namespace A050253.P3295679378543861108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A294627 n + A022086 n).toNat

end

end A050253.P3295679378543861108

/-! ## A050253.P2599151817123971539

`A033183(9*A143419(2*(n+2)))`
-/

namespace A050253.P2599151817123971539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (9 * A143419 (2 * (n + 2))).toNat

end

end A050253.P2599151817123971539

/-! ## A050253.P9035592960508084163

`floor(sqrt(A324925(∑[n])))`
-/

namespace A050253.P9035592960508084163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A324925 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A050253.P9035592960508084163

/-! ## A050253.P959811664273474040

`A003056(A089976(n))`
-/

namespace A050253.P959811664273474040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A089976 n).toNat

end

end A050253.P959811664273474040

/-!
# A050254: Starting positions of strings of 2 7's in the decimal expansion of Pi.

The programs for A050254, there is no canonical definition to state claims against.
-/

/-! ## A050254.P6788293948519189412

`∩[A036974(n+1)-1, A036974(n+1)]`
-/

namespace A050254.P6788293948519189412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050254.P6788293948519189412

/-! ## A050254.P2445370952831887665

`A036974(eq[1, A036974(n+2)-A036974(n+1)]+1)`
-/

namespace A050254.P2445370952831887665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 2) - A036974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050254.P2445370952831887665

/-! ## A050254.P10509339544384633897

`A036974(eq[1, A036974(n+2)%A036974(n+1)]+1)`
-/

namespace A050254.P10509339544384633897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036974 (n + 2)) (A036974 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050254.P10509339544384633897

/-! ## A050254.P5507426253570621359

`∩[A036974(n+1), A023443(A036974(n+1))]`
-/

namespace A050254.P5507426253570621359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036974 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050254.P5507426253570621359

/-! ## A050254.P11907203630650024772

`A023443(∩[A053751(n+1)-1, A053751(n+1)])`
-/

namespace A050254.P11907203630650024772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053751 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053751 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050254.P11907203630650024772

/-!
# A050255: A Diaconis-Mosteller approximation to the Birthday problem function.

The programs for A050255, there is no canonical definition to state claims against.
-/

/-! ## A050255.P1991845020163757716

`A014088(n+1)-A037833(A228392(n+1))`
-/

namespace A050255.P1991845020163757716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014088 (n + 1) - A037833 (A228392 (n + 1)).toNat

end

end A050255.P1991845020163757716

/-! ## A050255.P70430988540603291

`A014088(n+1)-A122841(A114551(n))`
-/

namespace A050255.P70430988540603291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014088 (n + 1) - A122841 (A114551 n).toNat

end

end A050255.P70430988540603291

/-! ## A050255.P6854511381494831990

`A014088(n+1)-A160383(A321470(n))`
-/

namespace A050255.P6854511381494831990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014088 (n + 1) - A160383 (A321470 n).toNat

end

end A050255.P6854511381494831990

/-! ## A050255.P13627287046280236252

`A014088(n+1)-A112765(A000142(n))`
-/

namespace A050255.P13627287046280236252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014088 (n + 1) - A112765 (A000142 n).toNat

end

end A050255.P13627287046280236252

/-!
# A050256: a(n) = floor(47*(n-3/2)^(3/2)).

The programs for A050256, the canonical program `A050256.P5051398727587645200` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050256 has offset 2).

The definition of A050256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(47*(n+2-3/2)^(3/2))` (program `A050256.P5051398727587645200`, by `A050256.P5051398727587645200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050256.P5051398727587645200

`floor(47*(n+2-3/2)^(3/2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050256

/-- `floor(47*(n+2-3/2)^(3/2))` -/
def P5051398727587645200.Spec : Prop :=
  ∀ n, P5051398727587645200.a n = A050256 (n + 2)

theorem P5051398727587645200.correct : P5051398727587645200.Spec := by
  intro n
  simp only [A050256, Nat.add_sub_cancel]

end A050256

/-!
# A050258: Number of "prime quadruplets" with largest member < 10^n.

The programs for A050258, there is no canonical definition to state claims against.
-/

/-! ## A050258.P13011141900351368631

`A055738(n+1)-ceil(abs(sin(n)))`
-/

namespace A050258.P13011141900351368631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055738 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A050258.P13011141900351368631

/-! ## A050258.P6930343488936078568

`A057428(n)+A055738(n+1)`
-/

namespace A050258.P6930343488936078568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A055738 (n + 1)

end

end A050258.P6930343488936078568

/-! ## A050258.P4977075640642104830

`A055738(n+1)-A057427(n)`
-/

namespace A050258.P4977075640642104830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055738 (n + 1) - A057427 n

end

end A050258.P4977075640642104830

/-! ## A050258.P16273649061381411289

`A055738(n+1)-A178334(n)`
-/

namespace A050258.P16273649061381411289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055738 (n + 1) - A178334 n

end

end A050258.P16273649061381411289

/-! ## A050258.P13274447117708449518

`A055738(n+1)-char[A009766(n)]`
-/

namespace A050258.P13274447117708449518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055738 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A050258.P13274447117708449518

/-!
# A050260: Quiteprimes: numbers k such that |2*(k mod p) - p| <= p + 1 - sqrt(p) for all primes p <= sqrt(k).

The programs for A050260, there is no canonical definition to state claims against.
-/

/-! ## A050260.P885535178951851925

`A000040(lt[A103361(n), A285843(n)])`
-/

namespace A050260.P885535178951851925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050260.P885535178951851925

/-! ## A050260.P12838763417902556381

`A000040(lt[A355771(2*n+1), A126426(n+1)])`
-/

namespace A050260.P12838763417902556381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355771 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050260.P12838763417902556381

/-! ## A050260.P2150888215570145217

`eq[A003415(n), A146876(A087040(3*n+5))]`
-/

namespace A050260.P2150888215570145217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146876 (A087040 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050260.P2150888215570145217

/-! ## A050260.P16266218750051325133

`A000040(∑[A186715(n+3)!])`
-/

namespace A050260.P16266218750051325133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A186715 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050260.P16266218750051325133

/-!
# A050261: Primes which are not quiteprimes.

The programs for A050261, there is no canonical definition to state claims against.
-/

/-! ## A050261.P2147541165225696515

`∩[A160820(n+1), A167845(n+1)]`
-/

namespace A050261.P2147541165225696515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050261.P2147541165225696515

/-!
# A050262: G.f.: ( 1 + x + x^2 - x^3 - x^4 - sqrt( 1 - 2 x - 5 x^2 - 4 x^3 - 3 x^4 - 4 x^5 - x^6 + 2 x^7 + x^8 ) ) / ( 2 x (1 + x) ).

The programs for A050262, there is no canonical definition to state claims against.
-/

/-! ## A050262.P11594586822900894158

`A092278(4*A114465(n))`
-/

namespace A050262.P11594586822900894158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (4 * A114465 n).toNat

end

end A050262.P11594586822900894158

/-! ## A050262.P13327124420901371042

`A340763(A116819(n+1))+1`
-/

namespace A050262.P13327124420901371042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A116819 (n + 1)).toNat + 1

end

end A050262.P13327124420901371042

/-! ## A050262.P4508031296668014432

`A245900(n+1)-char[A016873(n)]`
-/

namespace A050262.P4508031296668014432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A050262.P4508031296668014432

/-! ## A050262.P5636223829656924383

`A245900(n+1)-char[A022497(n)]`
-/

namespace A050262.P5636223829656924383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022497 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A050262.P5636223829656924383

/-!
# A050263: Starting positions of strings of 2 8's in the decimal expansion of Pi.

The programs for A050263, there is no canonical definition to state claims against.
-/

/-! ## A050263.P16460578640324797137

`∩[A037006(n+1)-1, A037006(n+1)]`
-/

namespace A050263.P16460578640324797137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050263.P16460578640324797137

/-! ## A050263.P507960277196597459

`eq[exp(A095916(n+1)), A030644(n)]`
-/

namespace A050263.P507960277196597459
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A095916 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A050263.P507960277196597459

/-! ## A050263.P12673225007460249914

`∩[A037006(n+1), A023443(A037006(n+1))]`
-/

namespace A050263.P12673225007460249914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037006 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050263.P12673225007460249914

/-! ## A050263.P15521645628092129794

`A023443(∩[A053752(n+1)-1, A053752(n+1)])`
-/

namespace A050263.P15521645628092129794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053752 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050263.P15521645628092129794

/-!
# A050264: Weak veryprimes.

The programs for A050264, there is no canonical definition to state claims against.
-/

/-! ## A050264.P11454305685906294041

`eq[A003415(n), A089309(A210036(n+1))]`
-/

namespace A050264.P11454305685906294041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A210036 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050264.P11454305685906294041

/-! ## A050264.P1677137772291058234

`∪[A000040(n+1), A375400(A240894(n+1))]`
-/

namespace A050264.P1677137772291058234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375400 (A240894 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050264.P1677137772291058234

/-! ## A050264.P9814688689771869793

`eq[A003415(n), A373217(A094438(n))]`
-/

namespace A050264.P9814688689771869793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373217 (A094438 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050264.P9814688689771869793

/-! ## A050264.P15508772493124305208

`A161929(lt[A000700(n), A000005(n+1)])`
-/

namespace A050264.P15508772493124305208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050264.P15508772493124305208

/-! ## A050264.P18079712351959237156

`A161929(lt[A303436(n+1), A120062(n+1)])`
-/

namespace A050264.P18079712351959237156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050264.P18079712351959237156

/-!
# A050265: Primes of the form 2*n^2 + 11.

The programs for A050265, there is no canonical definition to state claims against.
-/

/-! ## A050265.P7882531647989172460

`11+2*A092968(n+1)²`
-/

namespace A050265.P7882531647989172460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 + 2 * A092968 (n + 1) ^ 2

end

end A050265.P7882531647989172460

/-! ## A050265.P9097588521745525058

`A255845(A092968(n+1))+1`
-/

namespace A050265.P9097588521745525058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255845 (A092968 (n + 1)).toNat + 1

end

end A050265.P9097588521745525058

/-! ## A050265.P16951595390972022590

`A255842(A092968(n+1))+A057428(n+1)`
-/

namespace A050265.P16951595390972022590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255842 (A092968 (n + 1)).toNat + A057428 (n + 1)

end

end A050265.P16951595390972022590

/-! ## A050265.P4365977410817013938

`A255842(A092968(n+1))-A057427(n+2)`
-/

namespace A050265.P4365977410817013938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255842 (A092968 (n + 1)).toNat - A057427 (n + 2)

end

end A050265.P4365977410817013938

/-! ## A050265.P7927551470185785255

`A255842(A092968(n+1))-A054977(2*(n+2))`
-/

namespace A050265.P7927551470185785255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255842 (A092968 (n + 1)).toNat - A054977 (2 * (n + 2))

end

end A050265.P7927551470185785255

/-! ## A050265.P7317111717587054873

`A001478(n+1)+A255842(A092968(n+1))+n`
-/

namespace A050265.P7317111717587054873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A255842 (A092968 (n + 1)).toNat + (n : ℤ))

end

end A050265.P7317111717587054873

/-! ## A050265.P9806887614378170721

`A255842(A092968(n+1))-A000120(A001316(n))`
-/

namespace A050265.P9806887614378170721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255842 (A092968 (n + 1)).toNat - A000120 (A001316 n).toNat

end

end A050265.P9806887614378170721

/-! ## A050265.P5004566671981413722

`p?[2*n²+11]`
-/

namespace A050265.P5004566671981413722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A050265.P5004566671981413722

/-! ## A050265.P4474488539144285449

`or(1, p?[n*2*n+11])`
-/

namespace A050265.P4474488539144285449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A050265.P4474488539144285449

/-! ## A050265.P15845492172668235216

`∏{d}[p?[n*2*n+11], #]`
-/

namespace A050265.P15845492172668235216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A050265.P15845492172668235216

/-! ## A050265.P5858025791799136229

`∑{p}[p?[C(2*n, 2)+11+n], #]`
-/

namespace A050265.P5858025791799136229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 + 11 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A050265.P5858025791799136229

/-! ## A050265.P14368393255722917491

`p?[n²+n²+11]+and(2, n²)`
-/

namespace A050265.P14368393255722917491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n ^ 2 + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.land 2 (n ^ 2)

end

end A050265.P14368393255722917491

/-! ## A050265.P4460671847201585422

`gcd(n, n+1)*p?[n*2*n+11]`
-/

namespace A050265.P4460671847201585422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A050265.P4460671847201585422

/-! ## A050265.P9586774280543246836

`char[A279812(n+1)]+p?[A061925(n)+10]`
-/

namespace A050265.P9586774280543246836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n + 10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A050265.P9586774280543246836

/-!
# A050266: Primes of the form n^3 + n^2 + 17, for nonnegative values of n.

The programs for A050266, there is no canonical definition to state claims against.
-/

/-! ## A050266.P11347738862229539162

`p?[(n+1)*n²+17]`
-/

namespace A050266.P11347738862229539162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 2 + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A050266.P11347738862229539162

/-! ## A050266.P3196248959921070730

`or(1, p?[n*lcm(n, n+1)+17])`
-/

namespace A050266.P3196248959921070730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lcm n (n + 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A050266.P3196248959921070730

/-! ## A050266.P15609295906402352880

`or(1, p?[A011379(n)+17])`
-/

namespace A050266.P15609295906402352880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A050266.P15609295906402352880

/-! ## A050266.P10945935178907368109

`A010673(2*n)+p?[A011379(n)+17]`
-/

namespace A050266.P10945935178907368109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050266.P10945935178907368109

/-! ## A050266.P15134563524050346373

`p?[A011379(n)+17]%A000032(n+7)`
-/

namespace A050266.P15134563524050346373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000032 (n + 7))

end

end A050266.P15134563524050346373

/-! ## A050266.P3127889366604419554

`A007318(C(2, n))*p?[A011379(n)+17]`
-/

namespace A050266.P3127889366604419554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050266.P3127889366604419554

/-! ## A050266.P6369693921464009056

`p?[A011379(n)+17]+A000045(C(n, 64))`
-/

namespace A050266.P6369693921464009056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (Nat.choose n 64)

end

end A050266.P6369693921464009056

/-! ## A050266.P2506298886239904486

`p?[A011379(n)+17]+A008683(4*(n+1))`
-/

namespace A050266.P2506298886239904486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A050266.P2506298886239904486

/-! ## A050266.P4900201317452245091

`A014963(10*(n+1))*p?[A011379(n)+17]`
-/

namespace A050266.P4900201317452245091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050266.P4900201317452245091

/-! ## A050266.P18193770182381543085

`A000108(C(2, n+2))*p?[A011379(n)+17]`
-/

namespace A050266.P18193770182381543085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050266.P18193770182381543085

/-!
# A050267: Primes or negative values of primes in the sequence b(n) = 47*n^2 - 1701*n + 10181, n >= 0.

The programs for A050267, there is no canonical definition to state claims against.
-/

/-! ## A050267.P8796388886609247245

`p?[A128878(n+1)-C(n+1, 9)]`
-/

namespace A050267.P8796388886609247245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128878 (n + 1) - (Nat.choose (n + 1) 9 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050267.P8796388886609247245

/-! ## A050267.P12275941899187417321

`A128878(A000005(5^n))`
-/

namespace A050267.P12275941899187417321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128878 (A000005 (5 ^ n)).toNat

end

end A050267.P12275941899187417321

/-! ## A050267.P13036383904735858952

`A128878(∑[A348809(n)+1])`
-/

namespace A050267.P13036383904735858952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348809 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050267.P13036383904735858952

/-! ## A050267.P5079395685388104029

`A128878(A145457(n)!+n)`
-/

namespace A050267.P5079395685388104029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128878 (Nat.factorial (A145457 n).toNat + n)

end

end A050267.P5079395685388104029

/-!
# A050268: Primes of the form 36*k^2 - 810*k + 2753, listed in order of increasing parameter k >= 0.

The programs for A050268, there is no canonical definition to state claims against.
-/

/-! ## A050268.P13187217637057849014

`p?[A117081(n)]`
-/

namespace A050268.P13187217637057849014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050268.P13187217637057849014

/-!
# A050270: Largest value b for Diophantine 1-doubles (a,b) ordered by smallest b.

The programs for A050270, the canonical program `A050270.P7432655952878419687` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050270 has offset 1).

The definition of A050270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050270.P7432655952878419687

`comp[∑[A060594(n+1)]-1]-(n-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A050270

/-- `comp[∑[A060594(n+1)]-1]-(n-1)` -/
def P7432655952878419687.Spec : Prop :=
  ∀ n, P7432655952878419687.a n = A050270 (n + 1)

theorem P7432655952878419687.correct : P7432655952878419687.Spec := by
  intro n
  simp only [A050270, Nat.add_sub_cancel]

end A050270

/-! ## A050270.P15632139591819009835

`A054531(eq[1, A002262(n)%A054531(n+1)])`
-/

namespace A050270.P15632139591819009835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A054531 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050270.P15632139591819009835

namespace A050270

/-- `A054531(eq[1, A002262(n)%A054531(n+1)])` -/
def P15632139591819009835.Spec : Prop :=
  ∀ n, P15632139591819009835.a n = A050270 (n + 1)

end A050270

/-! ## A050270.P14936532500889713632

`A002024(eq[A035214(n), A048152(n+1)])`
-/

namespace A050270.P14936532500889713632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050270.P14936532500889713632

namespace A050270

/-- `A002024(eq[A035214(n), A048152(n+1)])` -/
def P14936532500889713632.Spec : Prop :=
  ∀ n, P14936532500889713632.a n = A050270 (n + 1)

end A050270

/-! ## A050270.P16125742743112882069

`A123578(eq[A035214(n), A048152(n+1)])`
-/

namespace A050270.P16125742743112882069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050270.P16125742743112882069

namespace A050270

/-- `A123578(eq[A035214(n), A048152(n+1)])` -/
def P16125742743112882069.Spec : Prop :=
  ∀ n, P16125742743112882069.a n = A050270 (n + 1)

end A050270

/-! ## A050270.P14098859170078768998

`A130855(eq[A035214(n), A048152(n+1)])`
-/

namespace A050270.P14098859170078768998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050270.P14098859170078768998

namespace A050270

/-- `A130855(eq[A035214(n), A048152(n+1)])` -/
def P14098859170078768998.Spec : Prop :=
  ∀ n, P14098859170078768998.a n = A050270 (n + 1)

end A050270

/-! ## A050270.P11121436638396654714

`A002024(eq[2, A139366(n+1)])`
-/

namespace A050270.P11121436638396654714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050270.P11121436638396654714

namespace A050270

/-- `A002024(eq[2, A139366(n+1)])` -/
def P11121436638396654714.Spec : Prop :=
  ∀ n, P11121436638396654714.a n = A050270 (n + 1)

end A050270

/-!
# A050271: Numbers k such that k = floor(sqrt(k)*ceiling(sqrt(k))).

The programs for A050271, the canonical program `A050271.P3710851192060460830` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050271 has offset 1).

The definition of A050271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050271.P3710851192060460830

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=8, a(6)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050271

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P3710851192060460830.Spec : Prop :=
  ∀ n, P3710851192060460830.a n = A050271 (n + 1)

theorem P3710851192060460830.correct : P3710851192060460830.Spec := by
  intro n
  simp only [A050271, Nat.add_sub_cancel]

end A050271

/-! ## A050271.P13701490080911005310

`A087278(n+2)-1`
-/

namespace A050271.P13701490080911005310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 (n + 2) - 1

end

end A050271.P13701490080911005310

namespace A050271

/-- `A087278(n+2)-1` -/
def P13701490080911005310.Spec : Prop :=
  ∀ n, P13701490080911005310.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P1479903622172639363

`∑[gcd(Δ[n²], comp[4*n])]`
-/

namespace A050271.P1479903622172639363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P1479903622172639363

namespace A050271

/-- `∑[gcd(Δ[n²], comp[4*n])]` -/
def P1479903622172639363.Spec : Prop :=
  ∀ n, (P1479903622172639363.a n : ℤ) = A050271 (n + 1)

end A050271

/-! ## A050271.P6131323241067506712

`∑[n-(n-1)/gcd(3, 1-n)]`
-/

namespace A050271.P6131323241067506712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((n : ℤ) - 1 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P6131323241067506712

namespace A050271

/-- `∑[n-(n-1)/gcd(3, 1-n)]` -/
def P6131323241067506712.Spec : Prop :=
  ∀ n, P6131323241067506712.a n = (A050271 (n + 1) : ℚ)

end A050271

/-! ## A050271.P6580077238083766673

`∑[or(1, Δ[floor((n-2)/3)²]+1)]`
-/

namespace A050271.P6580077238083766673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 3⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P6580077238083766673

namespace A050271

/-- `∑[or(1, Δ[floor((n-2)/3)²]+1)]` -/
def P6580077238083766673.Spec : Prop :=
  ∀ n, P6580077238083766673.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P12795359332818726641

`C(round(2*n/3), 2)+n+1-floor(n/3)²`
-/

namespace A050271.P12795359332818726641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat 2 + (n + 1) : ℤ) - ⌊(n : ℚ) / 3⌋ ^ 2

end

end A050271.P12795359332818726641

namespace A050271

/-- `C(round(2*n/3), 2)+n+1-floor(n/3)²` -/
def P12795359332818726641.Spec : Prop :=
  ∀ n, P12795359332818726641.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P12924713574083157902

`∑[A101443(abs(1-n))]`
-/

namespace A050271.P12924713574083157902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P12924713574083157902

namespace A050271

/-- `∑[A101443(abs(1-n))]` -/
def P12924713574083157902.Spec : Prop :=
  ∀ n, P12924713574083157902.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P17649121700376067535

`∑[A006083(2*n+1)]`
-/

namespace A050271.P17649121700376067535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P17649121700376067535

namespace A050271

/-- `∑[A006083(2*n+1)]` -/
def P17649121700376067535.Spec : Prop :=
  ∀ n, P17649121700376067535.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P9064622527493524131

`∑[(A058281(n)+1)/2]`
-/

namespace A050271.P9064622527493524131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058281 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P9064622527493524131

namespace A050271

/-- `∑[(A058281(n)+1)/2]` -/
def P9064622527493524131.Spec : Prop :=
  ∀ n, P9064622527493524131.a n = (A050271 (n + 1) : ℚ)

end A050271

/-! ## A050271.P17721745543028473385

`∑[A109613(∑[n²]%Δ[n²])]`
-/

namespace A050271.P17721745543028473385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P17721745543028473385

namespace A050271

/-- `∑[A109613(∑[n²]%Δ[n²])]` -/
def P17721745543028473385.Spec : Prop :=
  ∀ n, P17721745543028473385.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P7715994226886167848

`A101443(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A050271.P7715994226886167848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101443 (n - 1) + a (n - 1)

end

end A050271.P7715994226886167848

namespace A050271

/-- `A101443(n-1)+a(n-1)` -/
def P7715994226886167848.Spec : Prop :=
  ∀ n, P7715994226886167848.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P4889981535680179733

`∑[A093178(A026142(n+1))]`
-/

namespace A050271.P4889981535680179733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A026142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050271.P4889981535680179733

namespace A050271

/-- `∑[A093178(A026142(n+1))]` -/
def P4889981535680179733.Spec : Prop :=
  ∀ n, P4889981535680179733.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P7476636284802854921

`A251599(n+1)-A211547(n)`
-/

namespace A050271.P7476636284802854921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251599 (n + 1) - A211547 n

end

end A050271.P7476636284802854921

namespace A050271

/-- `A251599(n+1)-A211547(n)` -/
def P7476636284802854921.Spec : Prop :=
  ∀ n, P7476636284802854921.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P12197764147914145383

`∑[A101443(n)]+1-A101443(n)`
-/

namespace A050271.P12197764147914145383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A101443 n)

end

end A050271.P12197764147914145383

namespace A050271

/-- `∑[A101443(n)]+1-A101443(n)` -/
def P12197764147914145383.Spec : Prop :=
  ∀ n, P12197764147914145383.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P5068717153508436440

`∪[A135276(n+1), A087279(n+2)-1]`
-/

namespace A050271.P5068717153508436440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050271.P5068717153508436440

namespace A050271

/-- `∪[A135276(n+1), A087279(n+2)-1]` -/
def P5068717153508436440.Spec : Prop :=
  ∀ n, (P5068717153508436440.a n : ℤ) = A050271 (n + 1)

end A050271

/-! ## A050271.P17449354989558323460

`A008611(A080425(n)+n)²-A080425(n)`
-/

namespace A050271.P17449354989558323460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A080425 n + (n : ℤ)).toNat ^ 2 - A080425 n

end

end A050271.P17449354989558323460

namespace A050271

/-- `A008611(A080425(n)+n)²-A080425(n)` -/
def P17449354989558323460.Spec : Prop :=
  ∀ n, P17449354989558323460.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P13205511964901247215

`A002061(A002264(n+2))+n`
-/

namespace A050271.P13205511964901247215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002264 (n + 2)).toNat + (n : ℤ)

end

end A050271.P13205511964901247215

namespace A050271

/-- `A002061(A002264(n+2))+n` -/
def P13205511964901247215.Spec : Prop :=
  ∀ n, P13205511964901247215.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P12237525486911424969

`A004396(n+1)+∑[A022003(n+1)]²`
-/

namespace A050271.P12237525486911424969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A050271.P12237525486911424969

namespace A050271

/-- `A004396(n+1)+∑[A022003(n+1)]²` -/
def P12237525486911424969.Spec : Prop :=
  ∀ n, P12237525486911424969.a n = A050271 (n + 1)

end A050271

/-! ## A050271.P1998151721697897442

`A008611(n)+A008611(n+1)*A047878(n+1)`
-/

namespace A050271.P1998151721697897442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + A008611 (n + 1) * A047878 (n + 1)

end

end A050271.P1998151721697897442

namespace A050271

/-- `A008611(n)+A008611(n+1)*A047878(n+1)` -/
def P1998151721697897442.Spec : Prop :=
  ∀ n, P1998151721697897442.a n = A050271 (n + 1)

end A050271

/-!
# A050272: Starting positions of strings of 2 9's in the decimal expansion of Pi.

The programs for A050272, there is no canonical definition to state claims against.
-/

/-! ## A050272.P8829846436260122253

`∩[A037007(n+1)-1, A037007(n+1)]`
-/

namespace A050272.P8829846436260122253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050272.P8829846436260122253

/-! ## A050272.P3630600218740478067

`A037007(eq[1, A037007(n+2)-A037007(n+1)]+1)`
-/

namespace A050272.P3630600218740478067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (n + 2) - A037007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050272.P3630600218740478067

/-! ## A050272.P885624444659718235

`A037007(eq[1, A037007(n+2)%A037007(n+1)]+1)`
-/

namespace A050272.P885624444659718235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037007 (n + 2)) (A037007 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050272.P885624444659718235

/-! ## A050272.P9045478442909343200

`A037007(eq[1, A108664(n+1)])`
-/

namespace A050272.P9045478442909343200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050272.P9045478442909343200

/-! ## A050272.P1265888447628388813

`A037007(lt[A108664(n+1), 2])`
-/

namespace A050272.P1265888447628388813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108664 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A050272.P1265888447628388813

/-! ## A050272.P1925200360698224325

`record[gcd(A037007(n+7), A139727(n+7))]`
-/

namespace A050272.P1925200360698224325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037007 (n + 7)) (A139727 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050272.P1925200360698224325

/-!
# A050273: Smallest value a for Diophantine 1-triples (a,b,c) ordered by smallest c,b.

The programs for A050273, there is no canonical definition to state claims against.
-/

/-! ## A050273.P13049682854609597463

`A346697(∑[2*A038500(2*n+1)])`
-/

namespace A050273.P13049682854609597463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038500 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050273.P13049682854609597463

/-!
# A050275: Largest value c for Diophantine 1-triples (a,b,c) ordered by smallest c,b.

The programs for A050275, there is no canonical definition to state claims against.
-/

/-! ## A050275.P15719795864653094961

`A033949(∑[A005171(A157221(n))])`
-/

namespace A050275.P15719795864653094961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A157221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050275.P15719795864653094961

/-! ## A050275.P16245963557899604497

`A033949(∑[A289481(A113080(n+1))])`
-/

namespace A050275.P16245963557899604497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A113080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050275.P16245963557899604497

/-!
# A050278: Pandigital numbers: numbers containing the digits 0-9. Version 1: each digit appears exactly once.

The programs for A050278, there is no canonical definition to state claims against.
-/

/-! ## A050278.P3489319632458310472

`9*A171571(n+1)`
-/

namespace A050278.P3489319632458310472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A171571 (n + 1)

end

end A050278.P3489319632458310472

/-! ## A050278.P10503208136760979545

`∪[A051018(n+1), A051264(n+1)]`
-/

namespace A050278.P10503208136760979545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050278.P10503208136760979545

/-! ## A050278.P9487405215236193706

`A116695(n+1)+10*A116670(n+1)`
-/

namespace A050278.P9487405215236193706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116695 (n + 1) + 10 * A116670 (n + 1)

end

end A050278.P9487405215236193706

/-!
# A050279: a(n) is the starting position of the first occurrence of a string of at least n '0's in the decimal expansion of Pi.

The programs for A050279, there is no canonical definition to state claims against.
-/

/-! ## A050279.P5002565457856441542

`A256109(n+1)-(n+1)`
-/

namespace A050279.P5002565457856441542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256109 (n + 1) - (n + 1 : ℤ)

end

end A050279.P5002565457856441542

/-! ## A050279.P18326559596200703025

`abs(A256109(n+1)+A001478(n+1))`
-/

namespace A050279.P18326559596200703025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256109 (n + 1) + A001478 (n + 1)|

end

end A050279.P18326559596200703025

/-! ## A050279.P5555367494000767354

`lcm(A256109(n+1)+A001478(n+1), A256067(n))`
-/

namespace A050279.P5555367494000767354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A256109 (n + 1) + A001478 (n + 1)) (A256067 n)

end

end A050279.P5555367494000767354

/-!
# A050282: a(n) is the starting position of the first occurrence of a string of at least n 3's in the decimal expansion of Pi.

The programs for A050282, there is no canonical definition to state claims against.
-/

/-! ## A050282.P1949751412674441399

`A096757(or(n+1, A104162(n)))`
-/

namespace A050282.P1949751412674441399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096757 (Int.lor (n + 1 : ℤ) (A104162 n)).toNat

end

end A050282.P1949751412674441399

/-! ## A050282.P296068866255407744

`A096757(or(n+1, A357071(n+1)))`
-/

namespace A050282.P296068866255407744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096757 (Int.lor (n + 1 : ℤ) (A357071 (n + 1))).toNat

end

end A050282.P296068866255407744

/-! ## A050282.P11222095554814779871

`A096757((A176670(n+1)+1)%2+1+n)`
-/

namespace A050282.P11222095554814779871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096757 (Int.tmod (A176670 (n + 1) + 1) 2 + 1 + (n : ℤ)).toNat

end

end A050282.P11222095554814779871

/-! ## A050282.P5209185123500326675

`A096757(or(A010054(2*n), A250246(n+1)))`
-/

namespace A050282.P5209185123500326675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096757 (Int.lor (A010054 (2 * n)) (A250246 (n + 1))).toNat

end

end A050282.P5209185123500326675

/-! ## A050282.P18205676965045278997

`A096757(A358235(n+1)+n)`
-/

namespace A050282.P18205676965045278997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096757 (A358235 (n + 1) + (n : ℤ)).toNat

end

end A050282.P18205676965045278997

/-!
# A050283: a(n) is the starting position of the first occurrence of a string of n 4's in the decimal expansion of Pi.

The programs for A050283, there is no canonical definition to state claims against.
-/

/-! ## A050283.P16243523472403209271

`A096758(A181937(n)+n)`
-/

namespace A050283.P16243523472403209271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096758 (A181937 n + (n : ℤ)).toNat

end

end A050283.P16243523472403209271

/-! ## A050283.P4437145459449950633

`A096758(A239550(n)+n)`
-/

namespace A050283.P4437145459449950633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096758 (A239550 n + (n : ℤ)).toNat

end

end A050283.P4437145459449950633

/-! ## A050283.P7180552550545363171

`A096758(A250261(n)+n)`
-/

namespace A050283.P7180552550545363171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096758 (A250261 n + (n : ℤ)).toNat

end

end A050283.P7180552550545363171

/-! ## A050283.P4678072515964835572

`A096758(A329314(n)+n)`
-/

namespace A050283.P4678072515964835572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096758 (A329314 n + (n : ℤ)).toNat

end

end A050283.P4678072515964835572

/-! ## A050283.P2285679136466641049

`A096758(A025465(n)+1+n)`
-/

namespace A050283.P2285679136466641049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096758 (A025465 n + 1 + (n : ℤ)).toNat

end

end A050283.P2285679136466641049

/-!
# A050284: a(n) is the starting position of the first occurrence of a string of (at least) n '5's in the decimal expansion of Pi.

The programs for A050284, there is no canonical definition to state claims against.
-/

/-! ## A050284.P18049158258241353848

`A096759(A297199(2*n+3)+n+1)`
-/

namespace A050284.P18049158258241353848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096759 (A297199 (2 * n + 3) + (n + 1 : ℤ)).toNat

end

end A050284.P18049158258241353848

/-! ## A050284.P17648375457057962657

`A096759(gcd(A001221(n+3), A006950(n))+n)`
-/

namespace A050284.P17648375457057962657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096759 (Int.gcd (A001221 (n + 3)) (A006950 n) + n)

end

end A050284.P17648375457057962657

/-! ## A050284.P6525959946679659726

`A096759(A008437(n)+1+n)`
-/

namespace A050284.P6525959946679659726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096759 (A008437 n + 1 + (n : ℤ)).toNat

end

end A050284.P6525959946679659726

/-! ## A050284.P12631386933367183526

`A096759(or(n+1, A309144(ceil(2^(n-1)))))`
-/

namespace A050284.P12631386933367183526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096759 (Int.lor (n + 1 : ℤ) (A309144 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)).toNat

end

end A050284.P12631386933367183526

/-! ## A050284.P6410599904311646880

`A096759(A252494(n+1)+A024360(n+1))`
-/

namespace A050284.P6410599904311646880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096759 (A252494 (n + 1) + A024360 (n + 1)).toNat

end

end A050284.P6410599904311646880

/-!
# A050285: a(n) is the starting position of the first occurrence of a string of at least n consecutive digits '6' in the decimal expansion of Pi.

The programs for A050285, there is no canonical definition to state claims against.
-/

/-! ## A050285.P2475126541860960200

`A096760(A072170(n)+n)`
-/

namespace A050285.P2475126541860960200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096760 (A072170 n + (n : ℤ)).toNat

end

end A050285.P2475126541860960200

/-! ## A050285.P9662412078751616795

`A096760(A249545(n+1)+n)`
-/

namespace A050285.P9662412078751616795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096760 (A249545 (n + 1) + (n : ℤ)).toNat

end

end A050285.P9662412078751616795

/-! ## A050285.P3931721836577489468

`A096760(A329746(n+1)+n)`
-/

namespace A050285.P3931721836577489468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096760 (A329746 (n + 1) + (n : ℤ)).toNat

end

end A050285.P3931721836577489468

/-! ## A050285.P1959477801500821527

`A096760(A187447(2*n)+n)`
-/

namespace A050285.P1959477801500821527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096760 (A187447 (2 * n) + (n : ℤ)).toNat

end

end A050285.P1959477801500821527

/-! ## A050285.P4762746445605394813

`A096760(or(n+1, A040076(n+1)))`
-/

namespace A050285.P4762746445605394813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096760 (Int.lor (n + 1 : ℤ) (A040076 (n + 1))).toNat

end

end A050285.P4762746445605394813

/-!
# A050286: Starting position of the first occurrence of a string of at least n '7's in the decimal expansion of Pi.

The programs for A050286, there is no canonical definition to state claims against.
-/

/-! ## A050286.P5867443685457412441

`A096761(A295632(n+2)+n)`
-/

namespace A050286.P5867443685457412441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096761 (A295632 (n + 2) + (n : ℤ)).toNat

end

end A050286.P5867443685457412441

/-! ## A050286.P1797243869354313961

`A096761(A212382(2*(n+2))+n)`
-/

namespace A050286.P1797243869354313961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096761 (A212382 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A050286.P1797243869354313961

/-! ## A050286.P6818061105219287410

`A096761(A275062(2*(n+2))+n)`
-/

namespace A050286.P6818061105219287410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096761 (A275062 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A050286.P6818061105219287410

/-! ## A050286.P5878975570603605539

`A096761(A255124(n+3)+A183532(n+1))`
-/

namespace A050286.P5878975570603605539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096761 (A255124 (n + 3) + A183532 (n + 1)).toNat

end

end A050286.P5878975570603605539

/-!
# A050287: Starting position of the first occurrence of a string of at least n '8's in the decimal expansion of Pi.

The programs for A050287, there is no canonical definition to state claims against.
-/

/-! ## A050287.P522337714373255022

`A096762(A295632(n+2)+n)`
-/

namespace A050287.P522337714373255022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096762 (A295632 (n + 2) + (n : ℤ)).toNat

end

end A050287.P522337714373255022

/-! ## A050287.P17622146994686802408

`A096762(A275062(2*(n+2))+n)`
-/

namespace A050287.P17622146994686802408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096762 (A275062 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A050287.P17622146994686802408

/-! ## A050287.P15486804259262663059

`A096762(∑{e}[A349877(n), #]!+n)`
-/

namespace A050287.P15486804259262663059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096762 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + n)

end

end A050287.P15486804259262663059

/-!
# A050288: Pandigital primes.

The programs for A050288, there is no canonical definition to state claims against.
-/

/-! ## A050288.P17346946157499240335

`∪[A173051(n+1), Δ[A173051(n+1)]]`
-/

namespace A050288.P17346946157499240335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173051 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050288.P17346946157499240335

/-!
# A050291: Number of double-free subsets of {1, 2, ..., n}.

The programs for A050291, there is no canonical definition to state claims against.
-/

/-! ## A050291.P17259282076831113279

`2^n-A088808(n)`
-/

namespace A050291.P17259282076831113279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088808 n

end

end A050291.P17259282076831113279

/-! ## A050291.P1684857633129820541

`A000225(n)+1-A088808(n)`
-/

namespace A050291.P1684857633129820541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A088808 n)

end

end A050291.P1684857633129820541

/-! ## A050291.P3633101622540371377

`A052548(n)-(A088808(n)+2)`
-/

namespace A050291.P3633101622540371377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A088808 n + 2)

end

end A050291.P3633101622540371377

/-! ## A050291.P14009226103610418516

`A088810(n)+A007865(n)`
-/

namespace A050291.P14009226103610418516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088810 n + A007865 n

end

end A050291.P14009226103610418516

/-! ## A050291.P15714961336029428081

`A088813(n)-A088811(n)`
-/

namespace A050291.P15714961336029428081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088813 n - A088811 n

end

end A050291.P15714961336029428081

/-! ## A050291.P12792534583547771448

`A000079(n)-(A088812(n)+A088811(n))`
-/

namespace A050291.P12792534583547771448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088812 n + A088811 n)

end

end A050291.P12792534583547771448

/-! ## A050291.P2673472250281028090

`A007865(n)+A088813(n)-A085489(n)`
-/

namespace A050291.P2673472250281028090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n + (A088813 n - A085489 n)

end

end A050291.P2673472250281028090

/-! ## A050291.P15027444368468104612

`A007865(n)+A088809(n)-A088812(n)`
-/

namespace A050291.P15027444368468104612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n + (A088809 n - A088812 n)

end

end A050291.P15027444368468104612

/-! ## A050291.P15636791245692877176

`A085489(n)+A088809(n)-A088808(n)`
-/

namespace A050291.P15636791245692877176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A088808 n)

end

end A050291.P15636791245692877176

/-! ## A050291.P4738819195166400155

`A088812(n)+A088813(n)-A088808(n)`
-/

namespace A050291.P4738819195166400155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088812 n + (A088813 n - A088808 n)

end

end A050291.P4738819195166400155

/-!
# A050292: a(2*n) = 2*n - a(n), a(2*n+1) = 2*n + 1 - a(n) (for n >= 0).

The programs for A050292, the canonical program `A050292.P303072016618251938` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050292 has offset 0).

The definition of A050292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050292.P303072016618251938

`n-a(floor(n/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050292

/-- `n-a(floor(n/2))` -/
def P303072016618251938.Spec : Prop :=
  ∀ n, P303072016618251938.a n = A050292 n

theorem P303072016618251938.correct : P303072016618251938.Spec := by
  intro n
  simp only [A050292]

end A050292

/-! ## A050292.P15866712821177891731

`n-A123087(n)`
-/

namespace A050292.P15866712821177891731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A123087 n

end

end A050292.P15866712821177891731

namespace A050292

/-- `n-A123087(n)` -/
def P15866712821177891731.Spec : Prop :=
  ∀ n, P15866712821177891731.a n = A050292 n

end A050292

/-! ## A050292.P15651810061751932299

`2/3*n+1/3*A065359(n)`
-/

namespace A050292.P15651810061751932299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (n : ℚ) + (1 : ℚ) / 3 * (A065359 n : ℚ)

end

end A050292.P15651810061751932299

namespace A050292

/-- `2/3*n+1/3*A065359(n)` -/
def P15651810061751932299.Spec : Prop :=
  ∀ n, P15651810061751932299.a n = (A050292 n : ℚ)

end A050292

/-! ## A050292.P17142550471851403798

`A123087(2*n)`
-/

namespace A050292.P17142550471851403798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (2 * n)

end

end A050292.P17142550471851403798

namespace A050292

/-- `A123087(2*n)` -/
def P17142550471851403798.Spec : Prop :=
  ∀ n, P17142550471851403798.a n = A050292 n

end A050292

/-! ## A050292.P15676826218841686888

`∑[(and(n, -n)%3)%2]`
-/

namespace A050292.P15676826218841686888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P15676826218841686888

namespace A050292

/-- `∑[(and(n, -n)%3)%2]` -/
def P15676826218841686888.Spec : Prop :=
  ∀ n, P15676826218841686888.a n = A050292 n

end A050292

/-! ## A050292.P5025649704083738142

`∑[1-a(∑[n]%n)]` with `a(0)=0`
-/

namespace A050292.P5025649704083738142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P5025649704083738142

namespace A050292

/-- `∑[1-a(∑[n]%n)]` -/
def P5025649704083738142.Spec : Prop :=
  ∀ n, P5025649704083738142.a n = A050292 n

end A050292

/-! ## A050292.P9034159360627359641

`∑[xor(n, n-1)%3]+1`
-/

namespace A050292.P9034159360627359641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050292.P9034159360627359641

namespace A050292

/-- `∑[xor(n, n-1)%3]+1` -/
def P9034159360627359641.Spec : Prop :=
  ∀ n, P9034159360627359641.a n = A050292 n

end A050292

/-! ## A050292.P1851372111329051557

`∑[char[n*and(n, -n)]]-1`
-/

namespace A050292.P1851372111329051557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A050292.P1851372111329051557

namespace A050292

/-- `∑[char[n*and(n, -n)]]-1` -/
def P1851372111329051557.Spec : Prop :=
  ∀ n, P1851372111329051557.a n = A050292 n

end A050292

/-! ## A050292.P1712223060831040673

`a(n-1)+and(1, val(2*n, 2))` with `a(0)=0`
-/

namespace A050292.P1712223060831040673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.land 1 (SequenceMachineLib.valuation (2 * n) 2)

end

end A050292.P1712223060831040673

namespace A050292

/-- `a(n-1)+and(1, val(2*n, 2))` -/
def P1712223060831040673.Spec : Prop :=
  ∀ n, (P1712223060831040673.a n : ℤ) = A050292 n

end A050292

/-! ## A050292.P12781691663618947586

`∑[char[gcd(n+1, val(n+1, 2)*∑[n])]]`
-/

namespace A050292.P12781691663618947586
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f3 j))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P12781691663618947586

namespace A050292

/-- `∑[char[gcd(n+1, val(n+1, 2)*∑[n])]]` -/
def P12781691663618947586.Spec : Prop :=
  ∀ n, (P12781691663618947586.a n : ℤ) = A050292 n

end A050292

/-! ## A050292.P14982088418262519970

`∑[A285383(n+1)]`
-/

namespace A050292.P14982088418262519970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P14982088418262519970

namespace A050292

/-- `∑[A285383(n+1)]` -/
def P14982088418262519970.Spec : Prop :=
  ∀ n, P14982088418262519970.a n = A050292 n

end A050292

/-! ## A050292.P13024006139528019001

`∑[and(1, A088705(n))]`
-/

namespace A050292.P13024006139528019001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088705 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P13024006139528019001

namespace A050292

/-- `∑[and(1, A088705(n))]` -/
def P13024006139528019001.Spec : Prop :=
  ∀ n, P13024006139528019001.a n = A050292 n

end A050292

/-! ## A050292.P3794500678224863790

`(A068639(n)+n)/2`
-/

namespace A050292.P3794500678224863790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068639 n + (n : ℤ) : ℚ) / 2

end

end A050292.P3794500678224863790

namespace A050292

/-- `(A068639(n)+n)/2` -/
def P3794500678224863790.Spec : Prop :=
  ∀ n, P3794500678224863790.a n = (A050292 n : ℚ)

end A050292

/-! ## A050292.P15577132518564674057

`2*n-A197911(n)`
-/

namespace A050292.P15577132518564674057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A197911 n

end

end A050292.P15577132518564674057

namespace A050292

/-- `2*n-A197911(n)` -/
def P15577132518564674057.Spec : Prop :=
  ∀ n, P15577132518564674057.a n = A050292 n

end A050292

/-! ## A050292.P7163892185816208105

`∑[(1-A317189(n))²]`
-/

namespace A050292.P7163892185816208105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A317189 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P7163892185816208105

namespace A050292

/-- `∑[(1-A317189(n))²]` -/
def P7163892185816208105.Spec : Prop :=
  ∀ n, P7163892185816208105.a n = A050292 n

end A050292

/-! ## A050292.P8535699421038480361

`∑[log2(gcd(2, A316826(n)))]`
-/

namespace A050292.P8535699421038480361
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A316826 n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P8535699421038480361

namespace A050292

/-- `∑[log2(gcd(2, A316826(n)))]` -/
def P8535699421038480361.Spec : Prop :=
  ∀ n, P8535699421038480361.a n = (A050292 n : ℝ)

end A050292

/-! ## A050292.P16945758532737709547

`∑[char[A003159(n+1)]]`
-/

namespace A050292.P16945758532737709547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P16945758532737709547

namespace A050292

/-- `∑[char[A003159(n+1)]]` -/
def P16945758532737709547.Spec : Prop :=
  ∀ n, (P16945758532737709547.a n : ℤ) = A050292 n

end A050292

/-! ## A050292.P7186434702574534374

`∑[char[A214682(n+1)]]`
-/

namespace A050292.P7186434702574534374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P7186434702574534374

namespace A050292

/-- `∑[char[A214682(n+1)]]` -/
def P7186434702574534374.Spec : Prop :=
  ∀ n, (P7186434702574534374.a n : ℤ) = A050292 n

end A050292

/-! ## A050292.P17067275839222973874

`∑[char[A300841(n+1)]]`
-/

namespace A050292.P17067275839222973874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050292.P17067275839222973874

namespace A050292

/-- `∑[char[A300841(n+1)]]` -/
def P17067275839222973874.Spec : Prop :=
  ∀ n, (P17067275839222973874.a n : ℤ) = A050292 n

end A050292

/-!
# A050293: Number of 3-fold-free subsets of {1, 2, ..., n}.

The programs for A050293, there is no canonical definition to state claims against.
-/

/-! ## A050293.P12232666449894069650

`A238745(∏[A130285(n+1)])`
-/

namespace A050293.P12232666449894069650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050293.P12232666449894069650

/-! ## A050293.P12503690879998745542

`∩[A032869(n+1), A333953(n+1)]`
-/

namespace A050293.P12503690879998745542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050293.P12503690879998745542

/-! ## A050293.P6533980627491978504

`∩[A055932(A000607(2*n+3)), A055932(n+1)]`
-/

namespace A050293.P6533980627491978504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A000607 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050293.P6533980627491978504

/-!
# A050294: Maximum cardinality of a 3-fold-free subset of {1, 2, ..., n}.

The programs for A050294, the canonical program `A050294.P11969497125930234057` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050294 has offset 1).

The definition of A050294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050294.P11969497125930234057

`n+1-a(floor((n+1)/3)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050294

/-- `n+1-a(floor((n+1)/3)-1)` -/
def P11969497125930234057.Spec : Prop :=
  ∀ n, P11969497125930234057.a n = A050294 (n + 1)

theorem P11969497125930234057.correct : P11969497125930234057.Spec := by
  intro n
  simp only [A050294, Nat.add_sub_cancel]

end A050294

/-! ## A050294.P2854527889821787057

`∑[log2(gcd(2, val(n+1, 3)))]`
-/

namespace A050294.P2854527889821787057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 3) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P2854527889821787057

namespace A050294

/-- `∑[log2(gcd(2, val(n+1, 3)))]` -/
def P2854527889821787057.Spec : Prop :=
  ∀ n, P2854527889821787057.a n = (A050294 (n + 1) : ℝ)

end A050294

/-! ## A050294.P9767792087608206190

`∑[(val(n+1, 3)+1)%2]`
-/

namespace A050294.P9767792087608206190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 3 + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P9767792087608206190

namespace A050294

/-- `∑[(val(n+1, 3)+1)%2]` -/
def P9767792087608206190.Spec : Prop :=
  ∀ n, (P9767792087608206190.a n : ℤ) = A050294 (n + 1)

end A050294

/-! ## A050294.P10995623205276918203

`∑[and(1, val(n+1, 3)+1)]`
-/

namespace A050294.P10995623205276918203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 3 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P10995623205276918203

namespace A050294

/-- `∑[and(1, val(n+1, 3)+1)]` -/
def P10995623205276918203.Spec : Prop :=
  ∀ n, (P10995623205276918203.a n : ℤ) = A050294 (n + 1)

end A050294

/-! ## A050294.P5068036807315620398

`∑[val(or(2, val(n+1, 3)), 2)]`
-/

namespace A050294.P5068036807315620398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 2 (SequenceMachineLib.valuation (n + 1) 3)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P5068036807315620398

namespace A050294

/-- `∑[val(or(2, val(n+1, 3)), 2)]` -/
def P5068036807315620398.Spec : Prop :=
  ∀ n, (P5068036807315620398.a n : ℤ) = A050294 (n + 1)

end A050294

/-! ## A050294.P3039709801516496202

`∑[A014578(n+1)]`
-/

namespace A050294.P3039709801516496202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P3039709801516496202

namespace A050294

/-- `∑[A014578(n+1)]` -/
def P3039709801516496202.Spec : Prop :=
  ∀ n, P3039709801516496202.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P15786265085457315845

`∑[abs(Δ[A163528(n)])]`
-/

namespace A050294.P15786265085457315845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P15786265085457315845

namespace A050294

/-- `∑[abs(Δ[A163528(n)])]` -/
def P15786265085457315845.Spec : Prop :=
  ∀ n, P15786265085457315845.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P17212833286410262799

`∑[abs(A163532(n+1))]`
-/

namespace A050294.P17212833286410262799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163532 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P17212833286410262799

namespace A050294

/-- `∑[abs(A163532(n+1))]` -/
def P17212833286410262799.Spec : Prop :=
  ∀ n, P17212833286410262799.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P15937761854491351376

`∑[1-A182581(n+1)]`
-/

namespace A050294.P15937761854491351376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P15937761854491351376

namespace A050294

/-- `∑[1-A182581(n+1)]` -/
def P15937761854491351376.Spec : Prop :=
  ∀ n, P15937761854491351376.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P260425699108936449

`∑[A182581(3*(n+1))]`
-/

namespace A050294.P260425699108936449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P260425699108936449

namespace A050294

/-- `∑[A182581(3*(n+1))]` -/
def P260425699108936449.Spec : Prop :=
  ∀ n, P260425699108936449.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P5718904293371443581

`∑[A072079(n+1)%2]`
-/

namespace A050294.P5718904293371443581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072079 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P5718904293371443581

namespace A050294

/-- `∑[A072079(n+1)%2]` -/
def P5718904293371443581.Spec : Prop :=
  ∀ n, P5718904293371443581.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P11183266895548744703

`∑[and(1, A051064(n+1))]`
-/

namespace A050294.P11183266895548744703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051064 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P11183266895548744703

namespace A050294

/-- `∑[and(1, A051064(n+1))]` -/
def P11183266895548744703.Spec : Prop :=
  ∀ n, P11183266895548744703.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P5358806020568781061

`1-A186444(n+1)+n`
-/

namespace A050294.P5358806020568781061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A186444 (n + 1) + (n : ℤ)

end

end A050294.P5358806020568781061

namespace A050294

/-- `1-A186444(n+1)+n` -/
def P5358806020568781061.Spec : Prop :=
  ∀ n, P5358806020568781061.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P7735524538510123277

`∑[1-abs(A163533(n+1))]`
-/

namespace A050294.P7735524538510123277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A163533 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P7735524538510123277

namespace A050294

/-- `∑[1-abs(A163533(n+1))]` -/
def P7735524538510123277.Spec : Prop :=
  ∀ n, P7735524538510123277.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P10173401835397162760

`∑[A163533(3*(n+1))²]`
-/

namespace A050294.P10173401835397162760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P10173401835397162760

namespace A050294

/-- `∑[A163533(3*(n+1))²]` -/
def P10173401835397162760.Spec : Prop :=
  ∀ n, P10173401835397162760.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P2582428853927830788

`∑[char[A007417(n+1)-1]]`
-/

namespace A050294.P2582428853927830788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P2582428853927830788

namespace A050294

/-- `∑[char[A007417(n+1)-1]]` -/
def P2582428853927830788.Spec : Prop :=
  ∀ n, (P2582428853927830788.a n : ℤ) = A050294 (n + 1)

end A050294

/-! ## A050294.P14783675505233081302

`∑[and(1, A007949(n+1)+1)]`
-/

namespace A050294.P14783675505233081302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007949 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P14783675505233081302

namespace A050294

/-- `∑[and(1, A007949(n+1)+1)]` -/
def P14783675505233081302.Spec : Prop :=
  ∀ n, P14783675505233081302.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P15809175115490349160

`∑[and(1, A088838(n+1)+1)]`
-/

namespace A050294.P15809175115490349160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088838 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P15809175115490349160

namespace A050294

/-- `∑[and(1, A088838(n+1)+1)]` -/
def P15809175115490349160.Spec : Prop :=
  ∀ n, P15809175115490349160.a n = A050294 (n + 1)

end A050294

/-! ## A050294.P6771459988341368692

`∑[ceil(A007814(val(n+1, 3)+2)/4)]`
-/

namespace A050294.P6771459988341368692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007814 (SequenceMachineLib.valuation (n + 1) 3 + 2) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050294.P6771459988341368692

namespace A050294

/-- `∑[ceil(A007814(val(n+1, 3)+2)/4)]` -/
def P6771459988341368692.Spec : Prop :=
  ∀ n, P6771459988341368692.a n = A050294 (n + 1)

end A050294

/-!
# A050295: Number of strongly triple-free subsets of {1, 2, ..., n}.

The programs for A050295, there is no canonical definition to state claims against.
-/

/-! ## A050295.P7875379141420759190

`A114886(A005314(n)+A000837(n))`
-/

namespace A050295.P7875379141420759190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A005314 n + A000837 n).toNat

end

end A050295.P7875379141420759190

/-! ## A050295.P2764748456924224293

`A000194(A303360(n)+A001787(n))`
-/

namespace A050295.P2764748456924224293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A303360 n + A001787 n).toNat

end

end A050295.P2764748456924224293

/-! ## A050295.P16700906747179769342

`A307405(A007053(n))+A168120(n)`
-/

namespace A050295.P16700906747179769342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307405 (A007053 n).toNat + A168120 n

end

end A050295.P16700906747179769342

/-! ## A050295.P6504945968770904377

`A033677(A011782(n)*A078408(n))`
-/

namespace A050295.P6504945968770904377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A011782 n * A078408 n).toNat

end

end A050295.P6504945968770904377

/-!
# A050296: Maximum cardinality of a strongly triple-free subset of {1, 2, ..., n}.

The programs for A050296, there is no canonical definition to state claims against.
-/

/-! ## A050296.P13888825670188294828

`∑[A000035(A106119(n+1)*A322026(n+1))]`
-/

namespace A050296.P13888825670188294828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A106119 (n + 1) * A322026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050296.P13888825670188294828

/-! ## A050296.P10524905459415314498

`A151878(n)!*∑[A000035(A322026(n+1))]`
-/

namespace A050296.P10524905459415314498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A322026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151878 n).toNat : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050296.P10524905459415314498

/-! ## A050296.P16320030691850567624

`∑[A000035(A154369(n+1)*A322026(n+1))]`
-/

namespace A050296.P16320030691850567624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A154369 (n + 1) * A322026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050296.P16320030691850567624

/-! ## A050296.P6192080116736802247

`∑[A322026(n+1)%A126759(A003586(n+1))]`
-/

namespace A050296.P6192080116736802247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322026 (n + 1)) (A126759 (A003586 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050296.P6192080116736802247

/-! ## A050296.P11983450767213614953

`∑[A126812(A322026(n+1)^4)]`
-/

namespace A050296.P11983450767213614953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126812 (A322026 (n + 1) ^ 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050296.P11983450767213614953

/-! ## A050296.P2714968999703634772

`∑[A126812(A322026(n+1)²²)]`
-/

namespace A050296.P2714968999703634772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126812 ((A322026 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050296.P2714968999703634772

/-!
# A050297: Number of scalars which can be constructed from the Riemann tensor and metric tensor in n dimensions.

The programs for A050297, the canonical program `A050297.P16917891889990109943` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050297 has offset 1).

The definition of A050297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050297.P16917891889990109943

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=14, a(4)=40, a(5)=90, a(6)=175`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050297

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16917891889990109943.Spec : Prop :=
  ∀ n, P16917891889990109943.a n = A050297 (n + 1)

theorem P16917891889990109943.correct : P16917891889990109943.Spec := by
  intro n
  simp only [A050297, Nat.add_sub_cancel]

end A050297

/-! ## A050297.P17838348806626848555

`char[1]+∑[∑[n²]-n]`
-/

namespace A050297.P17838348806626848555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A050297.P17838348806626848555

namespace A050297

/-- `char[1]+∑[∑[n²]-n]` -/
def P17838348806626848555.Spec : Prop :=
  ∀ n, P17838348806626848555.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P11872830364330753193

`or(∑[∑[n²]-n], char[1])`
-/

namespace A050297.P11872830364330753193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050297.P11872830364330753193

namespace A050297

/-- `or(∑[∑[n²]-n], char[1])` -/
def P11872830364330753193.Spec : Prop :=
  ∀ n, P11872830364330753193.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P11628183066716503033

`record[A117662(n)-A159075(n)]`
-/

namespace A050297.P11628183066716503033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050297.P11628183066716503033

namespace A050297

/-- `record[A117662(n)-A159075(n)]` -/
def P11628183066716503033.Spec : Prop :=
  ∀ n, P11628183066716503033.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P6752228185286757823

`A117662(n+1)^(A159075(n)+1)`
-/

namespace A050297.P6752228185286757823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117662 (n + 1) : ℚ) ^ (A159075 n + 1 : ℤ)

end

end A050297.P6752228185286757823

namespace A050297

/-- `A117662(n+1)^(A159075(n)+1)` -/
def P6752228185286757823.Spec : Prop :=
  ∀ n, P6752228185286757823.a n = (A050297 (n + 1) : ℚ)

end A050297

/-! ## A050297.P6855293819614275351

`(A117662(n+1)-A159075(n))*A001511(2*n+5)`
-/

namespace A050297.P6855293819614275351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117662 (n + 1) - A159075 n) * A001511 (2 * n + 5)

end

end A050297.P6855293819614275351

namespace A050297

/-- `(A117662(n+1)-A159075(n))*A001511(2*n+5)` -/
def P6855293819614275351.Spec : Prop :=
  ∀ n, P6855293819614275351.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P8159604273476604737

`A002418(n)%A002817(A233583(n+1))`
-/

namespace A050297.P8159604273476604737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002418 n) (A002817 (A233583 (n + 1)).toNat)

end

end A050297.P8159604273476604737

namespace A050297

/-- `A002418(n)%A002817(A233583(n+1))` -/
def P8159604273476604737.Spec : Prop :=
  ∀ n, P8159604273476604737.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P8574120077684116962

`∑[A051925(n)]^and(1, A069217(n+1))`
-/

namespace A050297.P8574120077684116962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (Int.land 1 (A069217 (n + 1)) : ℤ)

end

end A050297.P8574120077684116962

namespace A050297

/-- `∑[A051925(n)]^and(1, A069217(n+1))` -/
def P8574120077684116962.Spec : Prop :=
  ∀ n, P8574120077684116962.a n = (A050297 (n + 1) : ℚ)

end A050297

/-! ## A050297.P10441067420209594942

`A246181(A246172(n+1)+7)`
-/

namespace A050297.P10441067420209594942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246181 (A246172 (n + 1) + 7).toNat

end

end A050297.P10441067420209594942

namespace A050297

/-- `A246181(A246172(n+1)+7)` -/
def P10441067420209594942.Spec : Prop :=
  ∀ n, P10441067420209594942.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P18314147084344538116

`A246181(A000124(n+5)-8)`
-/

namespace A050297.P18314147084344538116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246181 (A000124 (n + 5) - 8).toNat

end

end A050297.P18314147084344538116

namespace A050297

/-- `A246181(A000124(n+5)-8)` -/
def P18314147084344538116.Spec : Prop :=
  ∀ n, P18314147084344538116.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P7646841411539330702

`A246181(A161680(n+6)-7)`
-/

namespace A050297.P7646841411539330702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246181 (A161680 (n + 6) - 7).toNat

end

end A050297.P7646841411539330702

namespace A050297

/-- `A246181(A161680(n+6)-7)` -/
def P7646841411539330702.Spec : Prop :=
  ∀ n, P7646841411539330702.a n = A050297 (n + 1)

end A050297

/-! ## A050297.P12147308531787484513

`A246181(Δ[A023545(n+1)]-3)`
-/

namespace A050297.P12147308531787484513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246181 (f1 (n + 1) - f1 n - 3).toNat

end

end A050297.P12147308531787484513

namespace A050297

/-- `A246181(Δ[A023545(n+1)]-3)` -/
def P12147308531787484513.Spec : Prop :=
  ∀ n, P12147308531787484513.a n = A050297 (n + 1)

end A050297

/-!
# A050298: Triangle read by rows: T(n,k) = p(r), where r is the (n-k+1)-th number such that A001222(r+1) = k, and p(r) is the r-th prime.

The programs for A050298, there is no canonical definition to state claims against.
-/

/-! ## A050298.P7981754578523571141

`p?[A008578(A078840(n))]`
-/

namespace A050298.P7981754578523571141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A078840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050298.P7981754578523571141

/-! ## A050298.P1041663277512865936

`A008578(A078840(n+1))`
-/

namespace A050298.P1041663277512865936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A078840 (n + 1)).toNat

end

end A050298.P1041663277512865936

/-! ## A050298.P13972358196028990345

`A008578(A091538(comp[C(n, 2)]))`
-/

namespace A050298.P13972358196028990345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A091538 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A050298.P13972358196028990345

/-! ## A050298.P16327197261191934753

`A158611(A078840(n+1)+1)`
-/

namespace A050298.P16327197261191934753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A078840 (n + 1) + 1).toNat

end

end A050298.P16327197261191934753

/-! ## A050298.P14118769468841871743

`A000040(A078840(n+1)-1)`
-/

namespace A050298.P14118769468841871743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A078840 (n + 1) - 1).toNat

end

end A050298.P14118769468841871743

/-! ## A050298.P2321651277663981777

`A000040(A091538(comp[C(n, 2)])-1)`
-/

namespace A050298.P2321651277663981777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091538 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1).toNat

end

end A050298.P2321651277663981777

/-!
# A050299: Numbers k such that ((k-1)! + 1)/k is prime.

The programs for A050299, there is no canonical definition to state claims against.
-/

/-! ## A050299.P7982382660203494456

`record[A020639(A317507(n+1))]`
-/

namespace A050299.P7982382660203494456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A317507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050299.P7982382660203494456

/-! ## A050299.P8603742394093377061

`∪[A317480(n+1), p?[A317507(n+1)]]`
-/

namespace A050299.P8603742394093377061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317480 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050299.P8603742394093377061

/-! ## A050299.P16394412176853126994

`∪[A225886(n+1), A000040(A225906(n+1))]`
-/

namespace A050299.P16394412176853126994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A225906 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050299.P16394412176853126994

/-! ## A050299.P3462713502562840280

`∪[A000040(A225906(n+1)), A317480(n+1)]`
-/

namespace A050299.P3462713502562840280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A225906 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050299.P3462713502562840280

