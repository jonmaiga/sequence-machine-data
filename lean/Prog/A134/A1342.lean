import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A134200: E.g.f. satisfies: A(x) = x*(exp(sinh(A(x)))).

The programs for A134200, there is no canonical definition to state claims against.
-/

/-! ## A134200.P935039354575977871

`n*A162650(abs(1-n))`
-/

namespace A134200.P935039354575977871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162650 |1 - (n : ℤ)|.toNat

end

end A134200.P935039354575977871

/-! ## A134200.P8245979252726751425

`sinh(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9, a(4)=68, a(5)=725`
-/

namespace A134200.P8245979252726751425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2, 9, 68, 725] fun n a =>
  Real.sinh (a (n - 1))

end

end A134200.P8245979252726751425

/-!
# A134201: Number of rigid hypergroups of order n.

The programs for A134201, the canonical program `A134201.P4189045000402510338` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134201 has offset 1).

The definition of A134201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134201.P4189045000402510338

`gcd(6, C(2, n²))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134201

/-- `gcd(6, C(2, n²))` -/
def P4189045000402510338.Spec : Prop :=
  ∀ n, (P4189045000402510338.a n : ℤ) = A134201 (n + 1)

theorem P4189045000402510338.correct : P4189045000402510338.Spec := by
  intro n
  simp only [A134201, Nat.add_sub_cancel]

end A134201

/-!
# A134202: Number of rigid Hv-groups of order n.

The programs for A134202, the canonical program `A134202.P7013206317963567532` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134202 has offset 1).

The definition of A134202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134202.P7013206317963567532

`a(n-1)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=14`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134202

/-- `a(n-1)` -/
def P7013206317963567532.Spec : Prop :=
  ∀ n, (P7013206317963567532.a n : ℤ) = A134202 (n + 1)

theorem P7013206317963567532.correct : P7013206317963567532.Spec := by
  intro n
  simp only [A134202, Nat.add_sub_cancel]

end A134202

/-!
# A134204: a(0)=2; for n > 0, a(n) = smallest prime not occurring earlier in the sequence such that a(n-1) + a(n) is a multiple of n. If no such prime exists, the sequence terminates.

The programs for A134204, there is no canonical definition to state claims against.
-/

/-! ## A134204.P1034846460230368799

`A134205(n)-a(n-1)` with `a(0)=2`
-/

namespace A134204.P1034846460230368799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134205 n - a (n - 1)

end

end A134204.P1034846460230368799

/-! ## A134204.P3303666012726142205

`A006530(A023194(n+1)*A042990(n))`
-/

namespace A134204.P3303666012726142205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023194 (n + 1) * A042990 n).toNat

end

end A134204.P3303666012726142205

/-! ## A134204.P4581880839192519822

`A006530(A023194(n+1)*A029743(n+1))`
-/

namespace A134204.P4581880839192519822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023194 (n + 1) * A029743 (n + 1)).toNat

end

end A134204.P4581880839192519822

/-! ## A134204.P2959034943400905636

`A006530(A023194(n+1)*A032758(n+1))`
-/

namespace A134204.P2959034943400905636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023194 (n + 1) * A032758 (n + 1)).toNat

end

end A134204.P2959034943400905636

/-! ## A134204.P18052049670242566295

`A042990(n)+A004016(A254308(2*n+3))`
-/

namespace A134204.P18052049670242566295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n + A004016 (A254308 (2 * n + 3)).toNat

end

end A134204.P18052049670242566295

/-!
# A134205: a(n) = A134204(n)+A134204(n-1).

The programs for A134205, there is no canonical definition to state claims against.
-/

/-! ## A134205.P13943791672916445579

`A134204(n+1)+A134204(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134205.P13943791672916445579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 (n + 1) + A134204 n

end

end A134205.P13943791672916445579

/-! ## A134205.P13454927872612374741

`(n+1)*A134206(n+1)`
-/

namespace A134205.P13454927872612374741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134206 (n + 1)

end

end A134205.P13454927872612374741

/-!
# A134206: a(n) = A134205(n)/n.

The programs for A134206, there is no canonical definition to state claims against.
-/

/-! ## A134206.P9189588299017044345

`A134205(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134206.P9189588299017044345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134205 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A134206.P9189588299017044345

/-! ## A134206.P10534396156423536457

`(A134204(n+1)+A134204(n))/(n+1)`
-/

namespace A134206.P10534396156423536457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134204 (n + 1) + A134204 n : ℚ) / (n + 1 : ℚ)

end

end A134206.P10534396156423536457

/-! ## A134206.P11734596378308167398

`(A134204(n+1)+A134204(n))*(n+1)^A259965(gcd(n, n+1))`
-/

namespace A134206.P11734596378308167398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134204 (n + 1) + A134204 n : ℚ) * (n + 1 : ℚ) ^ (A259965 (Nat.gcd n (n + 1)) : ℤ)

end

end A134206.P11734596378308167398

/-! ## A134206.P820470747215069089

`A022144(A134205(n+1))%A004771(n)`
-/

namespace A134206.P820470747215069089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A134205 (n + 1)).toNat) (A004771 n)

end

end A134206.P820470747215069089

/-! ## A134206.P14091887847382518888

`A022144(A134204(n+1)+A134204(n))%A004771(n)`
-/

namespace A134206.P14091887847382518888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A134204 (n + 1) + A134204 n).toNat) (A004771 n)

end

end A134206.P14091887847382518888

/-!
# A134207: a(0) = 2; for n > 0, a(n) = the smallest prime which is > a(n-1) such that a(n-1) + a(n) is a multiple of n.

The programs for A134207, there is no canonical definition to state claims against.
-/

/-! ## A134207.P17494654338829259348

`A134208(n)-a(n-1)` with `a(0)=2`
-/

namespace A134207.P17494654338829259348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134208 n - a (n - 1)

end

end A134207.P17494654338829259348

/-! ## A134207.P12313832240093777403

`p?[∑[A295205(A135227(n))]]`
-/

namespace A134207.P12313832240093777403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A135227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134207.P12313832240093777403

/-! ## A134207.P17884181349779986993

`record[A134204(n)%A224221(n)]`
-/

namespace A134207.P17884181349779986993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134204 n) (A224221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134207.P17884181349779986993

/-! ## A134207.P13164027018750883833

`record[A134204(n)-A352661(n+1)]`
-/

namespace A134207.P13164027018750883833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n - A352661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134207.P13164027018750883833

/-! ## A134207.P15961256423269820023

`A381431(record[A134204(n)])`
-/

namespace A134207.P15961256423269820023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381431 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134207.P15961256423269820023

/-!
# A134208: a(n) = A134207(n) + A134207(n-1).

The programs for A134208, there is no canonical definition to state claims against.
-/

/-! ## A134208.P16088608918786596923

`A134207(n+1)+A134207(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134208.P16088608918786596923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134207 (n + 1) + A134207 n

end

end A134208.P16088608918786596923

/-! ## A134208.P7890725969507463286

`(n+1)*A134209(n+1)`
-/

namespace A134208.P7890725969507463286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134209 (n + 1)

end

end A134208.P7890725969507463286

/-! ## A134208.P16544273146247604562

`A133244(A002998(n+1))+A133244(n+2)`
-/

namespace A134208.P16544273146247604562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133244 (A002998 (n + 1)).toNat + A133244 (n + 2)

end

end A134208.P16544273146247604562

/-! ## A134208.P7499636042422211443

`A133244(A039723(n+1))+A133244(n+2)`
-/

namespace A134208.P7499636042422211443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133244 (A039723 (n + 1)).toNat + A133244 (n + 2)

end

end A134208.P7499636042422211443

/-! ## A134208.P4646873423732456102

`A133244(A046469(n+1))+A133244(n+2)`
-/

namespace A134208.P4646873423732456102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133244 (A046469 (n + 1)).toNat + A133244 (n + 2)

end

end A134208.P4646873423732456102

/-!
# A134209: a(n) = A134208(n)/n.

The programs for A134209, there is no canonical definition to state claims against.
-/

/-! ## A134209.P5163670747798803069

`A134208(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134209.P5163670747798803069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134208 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A134209.P5163670747798803069

/-! ## A134209.P6431061290087986114

`(A134207(n+1)+A134207(n))/(n+1)`
-/

namespace A134209.P6431061290087986114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134207 (n + 1) + A134207 n : ℚ) / (n + 1 : ℚ)

end

end A134209.P6431061290087986114

/-! ## A134209.P2870097409045542429

`A022144(A134207(n+1)+A134207(n))%A004771(n)`
-/

namespace A134209.P2870097409045542429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A134207 (n + 1) + A134207 n).toNat) (A004771 n)

end

end A134209.P2870097409045542429

/-! ## A134209.P13272593838912961502

`A022144(A134208(n+1))%A004771(n)`
-/

namespace A134209.P13272593838912961502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A134208 (n + 1)).toNat) (A004771 n)

end

end A134209.P13272593838912961502

/-!
# A134210: Positions of 10 after the decimal point in the decimal expansion of Pi.

The programs for A134210, there is no canonical definition to state claims against.
-/

/-! ## A134210.P7336927796381592201

`∩[A037000(n+1), A037008(n+1)-1]`
-/

namespace A134210.P7336927796381592201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134210.P7336927796381592201

/-! ## A134210.P13097895391521125615

`∩[A037008(n+1), A053745(n+1)]-1`
-/

namespace A134210.P13097895391521125615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A134210.P13097895391521125615

/-! ## A134210.P9111898345174228914

`eq[-A095916(n+1), A253828(n+1)]`
-/

namespace A134210.P9111898345174228914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A095916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134210.P9111898345174228914

/-! ## A134210.P13816505799544192236

`A023443(∩[A037008(n+1), A053745(n+1)])`
-/

namespace A134210.P13816505799544192236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134210.P13816505799544192236

/-! ## A134210.P12834549751143803705

`∩[A023443(A014976(n+1)-1), A053745(n+1)-1]`
-/

namespace A134210.P12834549751143803705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A014976 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134210.P12834549751143803705

/-!
# A134211: Numbers that are lunar products of exactly 3 lunar primes.

The programs for A134211, there is no canonical definition to state claims against.
-/

/-! ## A134211.P7885428868148268092

`∩[A087984(n+1), A171786(n+1)]`
-/

namespace A134211.P7885428868148268092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134211.P7885428868148268092

/-! ## A134211.P2978952685277991226

`A162672(A133626(n+1))%A178203(A222111(n+1))`
-/

namespace A134211.P2978952685277991226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162672 (A133626 (n + 1)).toNat) (A178203 (A222111 (n + 1)).toNat)

end

end A134211.P2978952685277991226

/-! ## A134211.P9503696592018194033

`A162672(A087984(n+2)+A083914(8*8*n+13))`
-/

namespace A134211.P9503696592018194033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A087984 (n + 2) + A083914 (8 * (8 * n) + 13)).toNat

end

end A134211.P9503696592018194033

/-! ## A134211.P9929473506548933644

`A162672(A133626(n+1))^A002260(∑[n]+1)`
-/

namespace A134211.P9929473506548933644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162672 (A133626 (n + 1)).toNat : ℚ) ^ (A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A134211.P9929473506548933644

/-! ## A134211.P18263011317484700030

`A162672(A133626(n+1))+and(n, A333952(2*(n+1)))`
-/

namespace A134211.P18263011317484700030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A133626 (n + 1)).toNat + Int.land (n : ℤ) (A333952 (2 * (n + 1)))

end

end A134211.P18263011317484700030

/-! ## A134211.P228733409477295335

`A007318(C(n, 2))*A162672(A133626(n+1))`
-/

namespace A134211.P228733409477295335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A162672 (A133626 (n + 1)).toNat

end

end A134211.P228733409477295335

/-! ## A134211.P14480540722204486916

`A004736(∑[n+1])*A162672(A133626(n+1))`
-/

namespace A134211.P14480540722204486916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j) * A162672 (A133626 (n + 1)).toNat

end

end A134211.P14480540722204486916

/-! ## A134211.P11463632442055473226

`A162672(A133626(n+1))*A300867(A300889(n+1))`
-/

namespace A134211.P11463632442055473226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A133626 (n + 1)).toNat * A300867 (A300889 (n + 1)).toNat

end

end A134211.P11463632442055473226

/-! ## A134211.P16958408147205745537

`A162672(A133626(n+1))/A071920(A052905(n)+3)`
-/

namespace A134211.P16958408147205745537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162672 (A133626 (n + 1)).toNat : ℚ) / (A071920 (A052905 n + 3).toNat : ℚ)

end

end A134211.P16958408147205745537

/-! ## A134211.P11905766718143753520

`A162672(A133626(n+1))+A000007(A000217(n+4)-3)`
-/

namespace A134211.P11905766718143753520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A133626 (n + 1)).toNat + A000007 (A000217 (n + 4) - 3).toNat

end

end A134211.P11905766718143753520

/-! ## A134211.P6467644379379484026

`A162672(A133626(n+1))+A161696(A000217(n+4)+5)`
-/

namespace A134211.P6467644379379484026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A133626 (n + 1)).toNat + A161696 (A000217 (n + 4) + 5).toNat

end

end A134211.P6467644379379484026

/-! ## A134211.P11638541074520894362

`A162672(A133626(n+1))+A161696(A044636(n+1))`
-/

namespace A134211.P11638541074520894362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A133626 (n + 1)).toNat + A161696 (A044636 (n + 1)).toNat

end

end A134211.P11638541074520894362

/-! ## A134211.P6185561528789995327

`A162672(A133626(n+1))+A016406(A056191(n+1))`
-/

namespace A134211.P6185561528789995327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A133626 (n + 1)).toNat + A016406 (A056191 (n + 1)).toNat

end

end A134211.P6185561528789995327

/-! ## A134211.P17276741452955586475

`A162672(A133626(n+1))+A005378(n)%-1/(A305749(n+1)+n)`
-/

namespace A134211.P17276741452955586475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162672 (A133626 (n + 1)).toNat : ℚ) + (Int.tmod (A005378 n) (-1) : ℚ) / (A305749 (n + 1) + (n : ℤ) : ℚ)

end

end A134211.P17276741452955586475

/-! ## A134211.P4628169877249671691

`A043545(A236507(n+1))*A162672(A133626(n+1))`
-/

namespace A134211.P4628169877249671691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A236507 (n + 1)).toNat * A162672 (A133626 (n + 1)).toNat

end

end A134211.P4628169877249671691

/-! ## A134211.P1601686218410869404

`A162672(A133626(n+1)+A014707(n²))`
-/

namespace A134211.P1601686218410869404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A133626 (n + 1) + A014707 (n ^ 2)).toNat

end

end A134211.P1601686218410869404

/-!
# A134212: Positions of 12 after decimal point in decimal expansion of Pi.

The programs for A134212, there is no canonical definition to state claims against.
-/

/-! ## A134212.P16628115920724262408

`∩[A037000(n+1), A037001(n+1)-1]`
-/

namespace A134212.P16628115920724262408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134212.P16628115920724262408

/-! ## A134212.P4821014418733879875

`∩[A037001(n+1), A053745(n+1)]-1`
-/

namespace A134212.P4821014418733879875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A134212.P4821014418733879875

/-! ## A134212.P1988793639865818849

`eq[A095916(n+1), A253828(n+1)]`
-/

namespace A134212.P1988793639865818849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134212.P1988793639865818849

/-! ## A134212.P15405552645875514958

`∩[A037000(n+1), A023443(A037001(n+1))]`
-/

namespace A134212.P15405552645875514958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037001 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134212.P15405552645875514958

/-! ## A134212.P3630676901295942008

`A023443(∩[A037001(n+1), A053745(n+1)])`
-/

namespace A134212.P3630676901295942008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134212.P3630676901295942008

/-!
# A134213: Positions of 13 after decimal point in decimal expansion of Pi.

The programs for A134213, there is no canonical definition to state claims against.
-/

/-! ## A134213.P13412616420700159012

`∩[A037000(n+1), A037002(n+1)-1]`
-/

namespace A134213.P13412616420700159012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134213.P13412616420700159012

/-! ## A134213.P4076809295042958212

`∩[A037002(n+1), A053745(n+1)]-1`
-/

namespace A134213.P4076809295042958212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A134213.P4076809295042958212

/-! ## A134213.P5043280477869216489

`∩[A037000(n+1), A023443(A037002(n+1))]`
-/

namespace A134213.P5043280477869216489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037002 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134213.P5043280477869216489

/-! ## A134213.P10519017646865713990

`A023443(∩[A037002(n+1), A053745(n+1)])`
-/

namespace A134213.P10519017646865713990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134213.P10519017646865713990

/-!
# A134214: Positions of 14 after decimal point in decimal expansion of Pi.

The programs for A134214, there is no canonical definition to state claims against.
-/

/-! ## A134214.P12771681924329253382

`∩[A037000(n+1), A037003(n+1)-1]`
-/

namespace A134214.P12771681924329253382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134214.P12771681924329253382

/-! ## A134214.P4413639163759707642

`∩[A037003(n+1), A053745(n+1)]-1`
-/

namespace A134214.P4413639163759707642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A134214.P4413639163759707642

/-! ## A134214.P7172862980621716381

`∩[A037000(n+1), A023443(A037003(n+1))]`
-/

namespace A134214.P7172862980621716381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037003 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134214.P7172862980621716381

/-! ## A134214.P8001210491510960813

`A023443(∩[A037003(n+1), A053745(n+1)])`
-/

namespace A134214.P8001210491510960813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134214.P8001210491510960813

/-! ## A134214.P5931148267438568919

`A023443(∩[A053745(n+1), A053748(n+1)-1])`
-/

namespace A134214.P5931148267438568919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053748 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134214.P5931148267438568919

/-!
# A134215: Positions of 15 after decimal point in decimal expansion of Pi.

The programs for A134215, there is no canonical definition to state claims against.
-/

/-! ## A134215.P2053866358639507752

`∩[A037000(n+1), A037004(n+1)-1]`
-/

namespace A134215.P2053866358639507752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134215.P2053866358639507752

/-! ## A134215.P9704127189244473959

`∩[A037004(n+1), A053745(n+1)]-1`
-/

namespace A134215.P9704127189244473959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A134215.P9704127189244473959

/-! ## A134215.P4287780556271664699

`∩[A053745(n+1)-1, A023443(A053749(n+1)-1)]`
-/

namespace A134215.P4287780556271664699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053749 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134215.P4287780556271664699

/-!
# A134216: Positions of 16 after decimal point in decimal expansion of Pi.

The programs for A134216, there is no canonical definition to state claims against.
-/

/-! ## A134216.P10824912126179286039

`∩[A037000(n+1), A037005(n+1)-1]`
-/

namespace A134216.P10824912126179286039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134216.P10824912126179286039

/-! ## A134216.P11843352161195482949

`∩[A037005(n+1), A053745(n+1)]-1`
-/

namespace A134216.P11843352161195482949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A134216.P11843352161195482949

/-! ## A134216.P16336575401665627182

`∩[A037000(n+1), A023443(A037005(n+1))]`
-/

namespace A134216.P16336575401665627182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037005 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134216.P16336575401665627182

/-! ## A134216.P11182247855039982071

`A023443(∩[A037005(n+1), A053745(n+1)])`
-/

namespace A134216.P11182247855039982071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134216.P11182247855039982071

/-!
# A134217: Positions of 17 after decimal point in decimal expansion of Pi.

The programs for A134217, there is no canonical definition to state claims against.
-/

/-! ## A134217.P17208500187661628382

`∩[A036974(n+1)-1, A037000(n+1)]`
-/

namespace A134217.P17208500187661628382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134217.P17208500187661628382

/-! ## A134217.P15306935828323611050

`∩[A037000(n+1), A053751(n+1)-2]`
-/

namespace A134217.P15306935828323611050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053751 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134217.P15306935828323611050

/-!
# A134218: Positions of 18 after decimal point in decimal expansion of Pi.

The programs for A134218, there is no canonical definition to state claims against.
-/

/-! ## A134218.P4480137503478428285

`∩[A037000(n+1), A037006(n+1)-1]`
-/

namespace A134218.P4480137503478428285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134218.P4480137503478428285

/-! ## A134218.P1851639163942714888

`A023443(∩[A053745(n+1), A053752(n+1)-1])`
-/

namespace A134218.P1851639163942714888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053752 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134218.P1851639163942714888

/-!
# A134219: Positions of 19 after decimal point in decimal expansion of Pi.

The programs for A134219, there is no canonical definition to state claims against.
-/

/-! ## A134219.P14391462459880862633

`∩[A037000(n+1), A037007(n+1)-1]`
-/

namespace A134219.P14391462459880862633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134219.P14391462459880862633

/-! ## A134219.P3310434270961672080

`∩[A053745(n+1)-1, A023443(A053753(n+1)-1)]`
-/

namespace A134219.P3310434270961672080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053753 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134219.P3310434270961672080

/-!
# A134220: Values n for which integer solutions of Mordell curve y^2=x^3+n have a single value of x (or equivalently of nonnegative y).

The programs for A134220, there is no canonical definition to state claims against.
-/

/-! ## A134220.P9867202760489957110

`eq[1, A134108(n+1)]+1`
-/

namespace A134220.P9867202760489957110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134220.P9867202760489957110

/-! ## A134220.P14112336956743398355

`eq[1, a(A134108(n))-2]` with `a(0)=0, a(1)=3`
-/

namespace A134220.P14112336956743398355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (A134108 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134220.P14112336956743398355

/-! ## A134220.P11052511650537112675

`eq[1, A134108(n^ceil(sin(n)²))]`
-/

namespace A134220.P11052511650537112675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134220.P11052511650537112675

/-! ## A134220.P13795858780796860754

`eq[1, round(sqrt(A081119(n+1)))]+1`
-/

namespace A134220.P13795858780796860754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A081119 (n + 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134220.P13795858780796860754

/-! ## A134220.P10766478234285680700

`eq[1, A134108(A028310(n))]`
-/

namespace A134220.P10766478234285680700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134220.P10766478234285680700

/-! ## A134220.P18080627745172686605

`A020725(eq[1, A134108(n+1)])`
-/

namespace A134220.P18080627745172686605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134220.P18080627745172686605

/-! ## A134220.P10551131573347407562

`eq[1, A134108(A123108(2*n))]`
-/

namespace A134220.P10551131573347407562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134220.P10551131573347407562

/-! ## A134220.P11326030916813777520

`∪[A179146(n+1), A063263(n)]`
-/

namespace A134220.P11326030916813777520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134220.P11326030916813777520

/-! ## A134220.P2878402796349357816

`eq[2, A000045(a(A134108(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A134220.P2878402796349357816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000045 (f2 (A134108 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134220.P2878402796349357816

/-! ## A134220.P14568939647109924910

`eq[2, A000010(a(A134108(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A134220.P14568939647109924910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000010 (f2 (A134108 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134220.P14568939647109924910

/-!
# A134221: Values n for which integer solutions of Mordell curve y^2=x^3+n have 2 different values of x (or equivalently of nonnegative y).

The programs for A134221, there is no canonical definition to state claims against.
-/

/-! ## A134221.P9143968712257958975

`eq[2, A134108(n+1)]+1`
-/

namespace A134221.P9143968712257958975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134221.P9143968712257958975

/-! ## A134221.P7335451892976498505

`eq[2, A134108(A028310(n))]`
-/

namespace A134221.P7335451892976498505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134221.P7335451892976498505

/-! ## A134221.P6959920589796709934

`A020725(eq[2, A134108(n+1)])`
-/

namespace A134221.P6959920589796709934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134221.P6959920589796709934

/-! ## A134221.P12934804556077739055

`eq[2, A134108(A233583(n+1))]`
-/

namespace A134221.P12934804556077739055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134221.P12934804556077739055

/-! ## A134221.P15916822377118664720

`eq[2, A134108(A123108(2*n))]`
-/

namespace A134221.P15916822377118664720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134221.P15916822377118664720

/-! ## A134221.P1262893476207079572

`eq[2, A134108(A000007(n)+n)]`
-/

namespace A134221.P1262893476207079572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134221.P1262893476207079572

/-! ## A134221.P3503060835526018708

`eq[2, A134108(A000038(n)+n)]`
-/

namespace A134221.P3503060835526018708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134221.P3503060835526018708

/-! ## A134221.P13092738382852954229

`∪[A179148(n+1), A017151(n)]`
-/

namespace A134221.P13092738382852954229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017151 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134221.P13092738382852954229

/-! ## A134221.P15920912714137041875

`∪[A179148(n+1), A017247(n)]`
-/

namespace A134221.P15920912714137041875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134221.P15920912714137041875

/-! ## A134221.P9595398687362420743

`∪[A179148(n+1), A017355(n)]`
-/

namespace A134221.P9595398687362420743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134221.P9595398687362420743

/-!
# A134222: Values n for which integer solutions of Mordell curve y^2=x^3+n have 3 different values of x (or equivalently of nonnegative y).

The programs for A134222, there is no canonical definition to state claims against.
-/

/-! ## A134222.P16336828300228693634

`eq[3, A134108(n+1)]+1`
-/

namespace A134222.P16336828300228693634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134222.P16336828300228693634

/-! ## A134222.P11731762672782893630

`eq[1, a(A134108(n))-2]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A134222.P11731762672782893630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f2 =>
  f2 (A134108 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134222.P11731762672782893630

/-! ## A134222.P15999079055673624377

`∪[A161861(n+1), A179150(n+1)]`
-/

namespace A134222.P15999079055673624377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134222.P15999079055673624377

/-! ## A134222.P17492220610888001939

`∪[A179149(n+1), A179150(n+1)]`
-/

namespace A134222.P17492220610888001939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134222.P17492220610888001939

/-! ## A134222.P12560190222830176522

`eq[1, A003128(a(A134108(n)))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A134222.P12560190222830176522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  A003128 (f2 (A134108 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134222.P12560190222830176522

/-! ## A134222.P6065624810438274563

`eq[1, A004197(a(A134108(n)))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=4`
-/

namespace A134222.P6065624810438274563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0, 4] fun n f2 =>
  A004197 (f2 (A134108 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134222.P6065624810438274563

/-! ## A134222.P2298722251839158906

`eq[A134108(A123108(2*n))-3, A000038(n)]`
-/

namespace A134222.P2298722251839158906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A123108 (2 * n)).toNat - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134222.P2298722251839158906

/-!
# A134223: Values n for which integer solutions of Mordell curve y^2=x^3+n have 4 different values of x (or equivalently of nonnegative y).

The programs for A134223, there is no canonical definition to state claims against.
-/

/-! ## A134223.P15059027425122927786

`eq[4, A134108(n+1)]+1`
-/

namespace A134223.P15059027425122927786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134223.P15059027425122927786

/-! ## A134223.P12958734255888682933

`eq[4, A134108(A028310(n))]`
-/

namespace A134223.P12958734255888682933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134223.P12958734255888682933

/-! ## A134223.P60796686892109342

`A020725(eq[4, A134108(n+1)])`
-/

namespace A134223.P60796686892109342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134223.P60796686892109342

/-! ## A134223.P2151695407528145620

`∪[A179152(n+1), A001547(n)]`
-/

namespace A134223.P2151695407528145620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134223.P2151695407528145620

/-! ## A134223.P10834786454528151925

`eq[1, A134108(A123108(2*n))-3]`
-/

namespace A134223.P10834786454528151925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A123108 (2 * n)).toNat - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134223.P10834786454528151925

/-!
# A134224: A004736 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

The programs for A134224, the canonical program `A134224.P9579061537419719941` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134224 has offset 0).

The definition of A134224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134224.P16820956850537152654

`A134231(n+1)+char[∑[n]-2]`
-/

namespace A134224.P16820956850537152654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134224.P16820956850537152654

namespace A134224

/-- `A134231(n+1)+char[∑[n]-2]` -/
def P16820956850537152654.Spec : Prop :=
  ∀ n, P16820956850537152654.a n = A134224 n

end A134224

/-! ## A134224.P16720985812952042444

`A134199(n)+∑[2*n]%comp[∑[n]]-n`
-/

namespace A134224.P16720985812952042444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n + ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))

end

end A134224.P16720985812952042444

namespace A134224

/-- `A134199(n)+∑[2*n]%comp[∑[n]]-n` -/
def P16720985812952042444.Spec : Prop :=
  ∀ n, P16720985812952042444.a n = A134224 n

end A134224

/-! ## A134224.P6445528958186624990

`(A132440(n)+1)*(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A134224.P6445528958186624990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132440 n + 1) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A134224.P6445528958186624990

namespace A134224

/-- `(A132440(n)+1)*(C(comp[∑[n]]-n, 2)-n)` -/
def P6445528958186624990.Spec : Prop :=
  ∀ n, P6445528958186624990.a n = A134224 n

end A134224

/-! ## A134224.P9579061537419719941

`A134199(n)+A114327(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134224

/-- `A134199(n)+A114327(n)` -/
def P9579061537419719941.Spec : Prop :=
  ∀ n, P9579061537419719941.a n = A134224 n

theorem P9579061537419719941.correct : P9579061537419719941.Spec := by
  intro n
  simp only [A134224]

end A134224

/-! ## A134224.P7614203398097317839

`(C(comp[∑[n]]-n, 2)-n)*A051340(n+1)`
-/

namespace A134224.P7614203398097317839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A051340 (n + 1)

end

end A134224.P7614203398097317839

namespace A134224

/-- `(C(comp[∑[n]]-n, 2)-n)*A051340(n+1)` -/
def P7614203398097317839.Spec : Prop :=
  ∀ n, P7614203398097317839.a n = A134224 n

end A134224

/-! ## A134224.P16270524471598606317

`A004736(n+1)*A051340(n+1)`
-/

namespace A134224.P16270524471598606317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A051340 (n + 1)

end

end A134224.P16270524471598606317

namespace A134224

/-- `A004736(n+1)*A051340(n+1)` -/
def P16270524471598606317.Spec : Prop :=
  ∀ n, P16270524471598606317.a n = A134224 n

end A134224

/-! ## A134224.P2594794950086682875

`A051340(n+1)/A130321(n)*A130322(n)`
-/

namespace A134224.P2594794950086682875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051340 (n + 1) : ℚ) / (A130321 n : ℚ) * (A130322 n : ℚ)

end

end A134224.P2594794950086682875

namespace A134224

/-- `A051340(n+1)/A130321(n)*A130322(n)` -/
def P2594794950086682875.Spec : Prop :=
  ∀ n, P2594794950086682875.a n = (A134224 n : ℚ)

end A134224

/-! ## A134224.P5069406562709872685

`(A128076(n+1)-A003056(n))*A051340(n+1)`
-/

namespace A134224.P5069406562709872685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128076 (n + 1) - A003056 n) * A051340 (n + 1)

end

end A134224.P5069406562709872685

namespace A134224

/-- `(A128076(n+1)-A003056(n))*A051340(n+1)` -/
def P5069406562709872685.Spec : Prop :=
  ∀ n, P5069406562709872685.a n = A134224 n

end A134224

/-! ## A134224.P10389319724863397378

`A004736(n+1)/A002260(n+2)*A128077(n+2)`
-/

namespace A134224.P10389319724863397378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A002260 (n + 2) : ℚ) * (A128077 (n + 2) : ℚ)

end

end A134224.P10389319724863397378

namespace A134224

/-- `A004736(n+1)/A002260(n+2)*A128077(n+2)` -/
def P10389319724863397378.Spec : Prop :=
  ∀ n, P10389319724863397378.a n = (A134224 n : ℚ)

end A134224

/-! ## A134224.P12606450991321926997

`lcm(C(comp[∑[n]]-n, 2)-n, Δ[A061579(n+1)])`
-/

namespace A134224.P12606450991321926997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (f3 (n + 1) - f3 n)

end

end A134224.P12606450991321926997

namespace A134224

/-- `lcm(C(comp[∑[n]]-n, 2)-n, Δ[A061579(n+1)])` -/
def P12606450991321926997.Spec : Prop :=
  ∀ n, (P12606450991321926997.a n : ℤ) = A134224 n

end A134224

/-! ## A134224.P13254233815900675943

`A000005(A130321(n))*A051340(n+1)`
-/

namespace A134224.P13254233815900675943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A051340 (n + 1)

end

end A134224.P13254233815900675943

namespace A134224

/-- `A000005(A130321(n))*A051340(n+1)` -/
def P13254233815900675943.Spec : Prop :=
  ∀ n, P13254233815900675943.a n = A134224 n

end A134224

/-!
# A134225: A007436 + A134082 - A000012 as infinite lower triangular matrices; where A000012 = (1; 1,1; 1,1,1; ...).

The programs for A134225, there is no canonical definition to state claims against.
-/

/-! ## A134225.P6526615787228481317

`floor(sqrt(A134224(n)²+5))-1`
-/

namespace A134225.P6526615787228481317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A134224 n ^ 2 + 5) - 1

end

end A134225.P6526615787228481317

/-! ## A134225.P3675144383239142244

`A134082(n)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A134225.P3675144383239142244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A134225.P3675144383239142244

/-! ## A134225.P836533104431489172

`A369062(A134224(n))`
-/

namespace A134225.P836533104431489172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369062 (A134224 n).toNat

end

end A134225.P836533104431489172

/-! ## A134225.P11403459577610451432

`A028310(A134224(n)-1)`
-/

namespace A134225.P11403459577610451432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A134224 n - 1).toNat

end

end A134225.P11403459577610451432

/-! ## A134225.P12702955769814145068

`A134082(n)+A025581(n)`
-/

namespace A134225.P12702955769814145068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n + A025581 n

end

end A134225.P12702955769814145068

/-! ## A134225.P747871312271051002

`A134224(n)-A023532(n)`
-/

namespace A134225.P747871312271051002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134224 n - A023532 n

end

end A134225.P747871312271051002

/-! ## A134225.P7412534303750983168

`A134082(n)+A025660(n+1)`
-/

namespace A134225.P7412534303750983168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n + A025660 (n + 1)

end

end A134225.P7412534303750983168

/-! ## A134225.P7676128553562651226

`A134082(n)+A025669(n+1)`
-/

namespace A134225.P7676128553562651226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n + A025669 (n + 1)

end

end A134225.P7676128553562651226

/-! ## A134225.P17116911803803537696

`A134082(n)+A025677(n+1)`
-/

namespace A134225.P17116911803803537696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n + A025677 (n + 1)

end

end A134225.P17116911803803537696

/-!
# A134226: Triangle T(n, k) = 3*n - 4 if k = n-1 otherwise k, read by rows.

The programs for A134226, the canonical program `A134226.P18145775604649246008` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134226 has offset 1).

The definition of A134226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134226.P11972607180173199292

`A134231(n+1)-A114327(n)`
-/

namespace A134226.P11972607180173199292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1) - A114327 n

end

end A134226.P11972607180173199292

namespace A134226

/-- `A134231(n+1)-A114327(n)` -/
def P11972607180173199292.Spec : Prop :=
  ∀ n, P11972607180173199292.a n = A134226 (n + 1)

end A134226

/-! ## A134226.P18145775604649246008

`A134199(n)-A129184(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134226

/-- `A134199(n)-A129184(n+1)` -/
def P18145775604649246008.Spec : Prop :=
  ∀ n, P18145775604649246008.a n = A134226 (n + 1)

theorem P18145775604649246008.correct : P18145775604649246008.Spec := by
  intro n
  simp only [A134226, Nat.add_sub_cancel]

end A134226

/-! ## A134226.P16512573502536836494

`A134231(n+1)+n-A061579(n)`
-/

namespace A134226.P16512573502536836494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1) + ((n : ℤ) - A061579 n)

end

end A134226.P16512573502536836494

namespace A134226

/-- `A134231(n+1)+n-A061579(n)` -/
def P16512573502536836494.Spec : Prop :=
  ∀ n, P16512573502536836494.a n = A134226 (n + 1)

end A134226

/-! ## A134226.P59126635328378698

`A134231(n+1)+n+1-A038722(n+1)`
-/

namespace A134226.P59126635328378698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1) + ((n + 1 : ℤ) - A038722 (n + 1))

end

end A134226.P59126635328378698

namespace A134226

/-- `A134231(n+1)+n+1-A038722(n+1)` -/
def P59126635328378698.Spec : Prop :=
  ∀ n, P59126635328378698.a n = A134226 (n + 1)

end A134226

/-! ## A134226.P117686249970295506

`A004277(A132440(n))+A002262(n)`
-/

namespace A134226.P117686249970295506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A132440 n).toNat + A002262 n

end

end A134226.P117686249970295506

namespace A134226

/-- `A004277(A132440(n))+A002262(n)` -/
def P117686249970295506.Spec : Prop :=
  ∀ n, P117686249970295506.a n = A134226 (n + 1)

end A134226

/-! ## A134226.P4494410259802701674

`A028310(A134082(n))+A002262(n)`
-/

namespace A134226.P4494410259802701674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A134082 n).toNat + A002262 n

end

end A134226.P4494410259802701674

namespace A134226

/-- `A028310(A134082(n))+A002262(n)` -/
def P4494410259802701674.Spec : Prop :=
  ∀ n, P4494410259802701674.a n = A134226 (n + 1)

end A134226

/-! ## A134226.P2994265232996891154

`A038207(n*A097806(n))+A002262(n)`
-/

namespace A134226.P2994265232996891154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 ((n : ℤ) * A097806 n).toNat + A002262 n

end

end A134226.P2994265232996891154

namespace A134226

/-- `A038207(n*A097806(n))+A002262(n)` -/
def P2994265232996891154.Spec : Prop :=
  ∀ n, P2994265232996891154.a n = A134226 (n + 1)

end A134226

/-! ## A134226.P13087347209301604029

`A002260(n+1)+A134231(n+1)-A004736(n+1)`
-/

namespace A134226.P13087347209301604029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A134231 (n + 1) - A004736 (n + 1))

end

end A134226.P13087347209301604029

namespace A134226

/-- `A002260(n+1)+A134231(n+1)-A004736(n+1)` -/
def P13087347209301604029.Spec : Prop :=
  ∀ n, P13087347209301604029.a n = A134226 (n + 1)

end A134226

/-! ## A134226.P12097883173826039211

`A002260(n*Δ[eq[1, A237452(n+1)]]+1)`
-/

namespace A134226.P12097883173826039211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237452 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1).toNat

end

end A134226.P12097883173826039211

namespace A134226

/-- `A002260(n*Δ[eq[1, A237452(n+1)]]+1)` -/
def P12097883173826039211.Spec : Prop :=
  ∀ n, P12097883173826039211.a n = A134226 (n + 1)

end A134226

/-!
# A134227: Row sums of triangle A134226.

The programs for A134227, the canonical program `A134227.P9813904100303268232` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134227 has offset 1).

The definition of A134227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134227.P13032271571799718998

`ceil(abs(π-∑[n+3]))`
-/

namespace A134227.P13032271571799718998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.pi - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)|⌉

end

end A134227.P13032271571799718998

namespace A134227

/-- `ceil(abs(π-∑[n+3]))` -/
def P13032271571799718998.Spec : Prop :=
  ∀ n, P13032271571799718998.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P686268115103269927

`∑[ceil(atan(n)+1+n)]`
-/

namespace A134227.P686268115103269927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ) + 1 + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P686268115103269927

namespace A134227

/-- `∑[ceil(atan(n)+1+n)]` -/
def P686268115103269927.Spec : Prop :=
  ∀ n, P686268115103269927.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P11179176948878131931

`∑[round(3-acot(n)+n)]`
-/

namespace A134227.P11179176948878131931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 - SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P11179176948878131931

namespace A134227

/-- `∑[round(3-acot(n)+n)]` -/
def P11179176948878131931.Spec : Prop :=
  ∀ n, P11179176948878131931.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P6607581277224454796

`floor(∑[n]+3/acot(n))`
-/

namespace A134227.P6607581277224454796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A134227.P6607581277224454796

namespace A134227

/-- `floor(∑[n]+3/acot(n))` -/
def P6607581277224454796.Spec : Prop :=
  ∀ n, P6607581277224454796.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P14322543795072205470

`∑[3-round(acot(n)-n)]`
-/

namespace A134227.P14322543795072205470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P14322543795072205470

namespace A134227

/-- `∑[3-round(acot(n)-n)]` -/
def P14322543795072205470.Spec : Prop :=
  ∀ n, P14322543795072205470.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P4675423663625112859

`∑[floor(∑[cosh(acot(n-1))])]`
-/

namespace A134227.P4675423663625112859
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P4675423663625112859

namespace A134227

/-- `∑[floor(∑[cosh(acot(n-1))])]` -/
def P4675423663625112859.Spec : Prop :=
  ∀ n, P4675423663625112859.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P9813904100303268232

`∑[a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134227

/-- `∑[a(n-1)+1]` -/
def P9813904100303268232.Spec : Prop :=
  ∀ n, (P9813904100303268232.a n : ℤ) = A134227 (n + 1)

theorem P9813904100303268232.correct : P9813904100303268232.Spec := by
  intro n
  simp only [A134227, Nat.add_sub_cancel]

end A134227

/-! ## A134227.P13202911817677123427

`a(n-1)+3+n` with `a(0)=1, a(1)=4`
-/

namespace A134227.P13202911817677123427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 3 + n

end

end A134227.P13202911817677123427

namespace A134227

/-- `a(n-1)+3+n` -/
def P13202911817677123427.Spec : Prop :=
  ∀ n, (P13202911817677123427.a n : ℤ) = A134227 (n + 1)

end A134227

/-! ## A134227.P6194506483089360000

`∑[3-C(2, n+1)+n]`
-/

namespace A134227.P6194506483089360000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.choose 2 (n + 1) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P6194506483089360000

namespace A134227

/-- `∑[3-C(2, n+1)+n]` -/
def P6194506483089360000.Spec : Prop :=
  ∀ n, P6194506483089360000.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P5263477536447550520

`∑[xor(3, C(2, n+1))+n]`
-/

namespace A134227.P5263477536447550520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.choose 2 (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P5263477536447550520

namespace A134227

/-- `∑[xor(3, C(2, n+1))+n]` -/
def P5263477536447550520.Spec : Prop :=
  ∀ n, (P5263477536447550520.a n : ℤ) = A134227 (n + 1)

end A134227

/-! ## A134227.P18286208512531555187

`∑[floor(atan(n)+n+1)]+n`
-/

namespace A134227.P18286208512531555187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A134227.P18286208512531555187

namespace A134227

/-- `∑[floor(atan(n)+n+1)]+n` -/
def P18286208512531555187.Spec : Prop :=
  ∀ n, P18286208512531555187.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P4734464019635417331

`∑[ceil(n^acot(n)+n+1)]`
-/

namespace A134227.P4734464019635417331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (SequenceMachineLib.acot (n : ℝ)) + (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P4734464019635417331

namespace A134227

/-- `∑[ceil(n^acot(n)+n+1)]` -/
def P4734464019635417331.Spec : Prop :=
  ∀ n, P4734464019635417331.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P14625062966737865573

`∑[round(atan(n²²)+n+1)]`
-/

namespace A134227.P14625062966737865573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((n ^ 2) ^ 2 : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P14625062966737865573

namespace A134227

/-- `∑[round(atan(n²²)+n+1)]` -/
def P14625062966737865573.Spec : Prop :=
  ∀ n, P14625062966737865573.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P2387029450269019976

`∑[round(acot(round(acot(n)))+n+1)]`
-/

namespace A134227.P2387029450269019976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)) : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P2387029450269019976

namespace A134227

/-- `∑[round(acot(round(acot(n)))+n+1)]` -/
def P2387029450269019976.Spec : Prop :=
  ∀ n, P2387029450269019976.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P6817492719058040039

`∑[ogf((1+x-x^3)/(1-2x+x^2))]`
-/

namespace A134227.P6817492719058040039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134227.P6817492719058040039

namespace A134227

/-- `∑[ogf((1+x-x^3)/(1-2x+x^2))]` -/
def P6817492719058040039.Spec : Prop :=
  ∀ n, P6817492719058040039.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P7819070641350537480

`ogf((1+x-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A134227.P7819070641350537480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, -3, 3, -1] n

end

end A134227.P7819070641350537480

namespace A134227

/-- `ogf((1+x-x^3)/(1-3x+3x^2-x^3))` -/
def P7819070641350537480.Spec : Prop :=
  ∀ n, P7819070641350537480.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P10044345735043068601

`record[a(n-1)-(5-n)]` with `a(0)=1, a(1)=0`
-/

namespace A134227.P10044345735043068601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - (5 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134227.P10044345735043068601

namespace A134227

/-- `record[a(n-1)-(5-n)]` -/
def P10044345735043068601.Spec : Prop :=
  ∀ n, P10044345735043068601.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P4851688347426672027

`(n+1)²-C(abs(1-n), 2)`
-/

namespace A134227.P4851688347426672027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.choose |1 - (n : ℤ)|.toNat 2 : ℤ)

end

end A134227.P4851688347426672027

namespace A134227

/-- `(n+1)²-C(abs(1-n), 2)` -/
def P4851688347426672027.Spec : Prop :=
  ∀ n, P4851688347426672027.a n = A134227 (n + 1)

end A134227

/-! ## A134227.P8640999927494579694

`C(n+1, abs(1-n))+3*n`
-/

namespace A134227.P8640999927494579694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) |1 - (n : ℤ)|.toNat + 3 * n

end

end A134227.P8640999927494579694

namespace A134227

/-- `C(n+1, abs(1-n))+3*n` -/
def P8640999927494579694.Spec : Prop :=
  ∀ n, (P8640999927494579694.a n : ℤ) = A134227 (n + 1)

end A134227

/-! ## A134227.P10878211421913878224

`eq[2*n, lcm(2, n)]+∑[n+1]`
-/

namespace A134227.P10878211421913878224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A134227.P10878211421913878224

namespace A134227

/-- `eq[2*n, lcm(2, n)]+∑[n+1]` -/
def P10878211421913878224.Spec : Prop :=
  ∀ n, (P10878211421913878224.a n : ℤ) = A134227 (n + 1)

end A134227

/-!
# A134228: Sum of the odd primes <= 2*10^n.

The programs for A134228, there is no canonical definition to state claims against.
-/

/-! ## A134228.P7626683103242293155

`A134230(n+1)-A134229(n+1)`
-/

namespace A134228.P7626683103242293155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134230 (n + 1) - A134229 (n + 1)

end

end A134228.P7626683103242293155

/-!
# A134229: Sum of the odd composites A071904 less than or equal to 1+2*10^n.

The programs for A134229, there is no canonical definition to state claims against.
-/

/-! ## A134229.P6401902513577270820

`A134230(n+1)-A134228(n+1)`
-/

namespace A134229.P6401902513577270820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134230 (n + 1) - A134228 (n + 1)

end

end A134229.P6401902513577270820

/-!
# A134230: a(n) = (10^n+1)^2 - 1.

The programs for A134230, the canonical program `A134230.P7961735828533681939` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134230 has offset 0).

The definition of A134230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+1)²-1` (program `A134230.P7961735828533681939`, by `A134230.P7961735828533681939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134230.P7961735828533681939

`(10^n+1)²-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134230

/-- `(10^n+1)²-1` -/
def P7961735828533681939.Spec : Prop :=
  ∀ n, P7961735828533681939.a n = A134230 n

theorem P7961735828533681939.correct : P7961735828533681939.Spec := by
  intro n
  simp only [A134230]

end A134230

/-! ## A134230.P6483168552588765335

`abs(1-A033934(n))`
-/

namespace A134230.P6483168552588765335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A033934 n|

end

end A134230.P6483168552588765335

namespace A134230

/-- `abs(1-A033934(n))` -/
def P6483168552588765335.Spec : Prop :=
  ∀ n, P6483168552588765335.a n = A134230 n

end A134230

/-! ## A134230.P15720886282480892911

`abs(A062397(n)²-1)`
-/

namespace A134230.P15720886282480892911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062397 n ^ 2 - 1|

end

end A134230.P15720886282480892911

namespace A134230

/-- `abs(A062397(n)²-1)` -/
def P15720886282480892911.Spec : Prop :=
  ∀ n, P15720886282480892911.a n = A134230 n

end A134230

/-! ## A134230.P13677573329718534009

`abs(1-(A011557(n)+1)²)`
-/

namespace A134230.P13677573329718534009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A011557 n + 1) ^ 2|

end

end A134230.P13677573329718534009

namespace A134230

/-- `abs(1-(A011557(n)+1)²)` -/
def P13677573329718534009.Spec : Prop :=
  ∀ n, P13677573329718534009.a n = A134230 n

end A134230

/-! ## A134230.P18113515069834994876

`abs((A002283(n)+2)²-1)`
-/

namespace A134230.P18113515069834994876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002283 n + 2) ^ 2 - 1|

end

end A134230.P18113515069834994876

namespace A134230

/-- `abs((A002283(n)+2)²-1)` -/
def P18113515069834994876.Spec : Prop :=
  ∀ n, P18113515069834994876.a n = A134230 n

end A134230

/-! ## A134230.P14973555000445526212

`Δ[(10^n+5)/3]*A093137(n)`
-/

namespace A134230.P14973555000445526212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 5 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A093137 n : ℚ)

end

end A134230.P14973555000445526212

namespace A134230

/-- `Δ[(10^n+5)/3]*A093137(n)` -/
def P14973555000445526212.Spec : Prop :=
  ∀ n, P14973555000445526212.a n = (A134230 n : ℚ)

end A134230

/-! ## A134230.P5580553001774804766

`abs(A199682(n)-A225810(n))`
-/

namespace A134230.P5580553001774804766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199682 n - A225810 n|

end

end A134230.P5580553001774804766

namespace A134230

/-- `abs(A199682(n)-A225810(n))` -/
def P5580553001774804766.Spec : Prop :=
  ∀ n, P5580553001774804766.a n = A134230 n

end A134230

/-! ## A134230.P11923095116135354806

`(A062397(n)+1)*A011557(n)`
-/

namespace A134230.P11923095116135354806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062397 n + 1) * A011557 n

end

end A134230.P11923095116135354806

namespace A134230

/-- `(A062397(n)+1)*A011557(n)` -/
def P11923095116135354806.Spec : Prop :=
  ∀ n, P11923095116135354806.a n = A134230 n

end A134230

/-! ## A134230.P14650846102634465345

`(Δ[A002275(n)]+2)*Δ[A002275(n)]`
-/

namespace A134230.P14650846102634465345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2) * (f2 (n + 1) - f2 n)

end

end A134230.P14650846102634465345

namespace A134230

/-- `(Δ[A002275(n)]+2)*Δ[A002275(n)]` -/
def P14650846102634465345.Spec : Prop :=
  ∀ n, P14650846102634465345.a n = A134230 n

end A134230

/-! ## A134230.P3749503996729957386

`(A009964(n)+A000079(n+1))*A000351(n)`
-/

namespace A134230.P3749503996729957386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009964 n + A000079 (n + 1)) * A000351 n

end

end A134230.P3749503996729957386

namespace A134230

/-- `(A009964(n)+A000079(n+1))*A000351(n)` -/
def P3749503996729957386.Spec : Prop :=
  ∀ n, P3749503996729957386.a n = A134230 n

end A134230

/-!
# A134231: Triangle T(n, k) = n -k +1 with T(n, n-1) = 2*n-1 and T(n, n) = 1, read by rows.

The programs for A134231, the canonical program `A134231.P5158807517234732924` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134231 has offset 1).

The definition of A134231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134231.P5158807517234732924

`A134226(n+1)+A114327(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134231

/-- `A134226(n+1)+A114327(n)` -/
def P5158807517234732924.Spec : Prop :=
  ∀ n, P5158807517234732924.a n = A134231 (n + 1)

theorem P5158807517234732924.correct : P5158807517234732924.Spec := by
  intro n
  simp only [A134231, Nat.add_sub_cancel]

end A134231

/-! ## A134231.P8247459806799746211

`A134224(n)-A129184(n+1)`
-/

namespace A134231.P8247459806799746211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134224 n - A129184 (n + 1)

end

end A134231.P8247459806799746211

namespace A134231

/-- `A134224(n)-A129184(n+1)` -/
def P8247459806799746211.Spec : Prop :=
  ∀ n, P8247459806799746211.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P1047786725339729398

`A134226(n+1)+A061579(n)-n`
-/

namespace A134231.P1047786725339729398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1) + (A061579 n - (n : ℤ))

end

end A134231.P1047786725339729398

namespace A134231

/-- `A134226(n+1)+A061579(n)-n` -/
def P1047786725339729398.Spec : Prop :=
  ∀ n, P1047786725339729398.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P12986394210019484681

`A038722(n+1)+A134226(n+1)-(n+1)`
-/

namespace A134231.P12986394210019484681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A134226 (n + 1) - (n + 1 : ℤ))

end

end A134231.P12986394210019484681

namespace A134231

/-- `A038722(n+1)+A134226(n+1)-(n+1)` -/
def P12986394210019484681.Spec : Prop :=
  ∀ n, P12986394210019484681.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P10762303095538468302

`A004736(n+1)+A134226(n+1)-A002260(n+1)`
-/

namespace A134231.P10762303095538468302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A134226 (n + 1) - A002260 (n + 1))

end

end A134231.P10762303095538468302

namespace A134231

/-- `A004736(n+1)+A134226(n+1)-A002260(n+1)` -/
def P10762303095538468302.Spec : Prop :=
  ∀ n, P10762303095538468302.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P1800758396173593581

`A004736(n+1)+A004273(A007318(n)*A073423(n+2))`
-/

namespace A134231.P1800758396173593581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A004273 (A007318 n * A073423 (n + 2)).toNat

end

end A134231.P1800758396173593581

namespace A134231

/-- `A004736(n+1)+A004273(A007318(n)*A073423(n+2))` -/
def P1800758396173593581.Spec : Prop :=
  ∀ n, P1800758396173593581.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P4589733308805801838

`A004736(n+1)+A004273(A007318(n)*A073424(n+2))`
-/

namespace A134231.P4589733308805801838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A004273 (A007318 n * A073424 (n + 2)).toNat

end

end A134231.P4589733308805801838

namespace A134231

/-- `A004736(n+1)+A004273(A007318(n)*A073424(n+2))` -/
def P4589733308805801838.Spec : Prop :=
  ∀ n, P4589733308805801838.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P12841614996707137884

`A134226(n+1)+Δ[A003991(n+1)-A025581(n)]`
-/

namespace A134231.P12841614996707137884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1) + (f1 (n + 1) - f1 n)

end

end A134231.P12841614996707137884

namespace A134231

/-- `A134226(n+1)+Δ[A003991(n+1)-A025581(n)]` -/
def P12841614996707137884.Spec : Prop :=
  ∀ n, P12841614996707137884.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P3901910971084351283

`A122196(A056537(n+1)+A010054(n+2))`
-/

namespace A134231.P3901910971084351283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (A056537 (n + 1) + A010054 (n + 2)).toNat

end

end A134231.P3901910971084351283

namespace A134231

/-- `A122196(A056537(n+1)+A010054(n+2))` -/
def P3901910971084351283.Spec : Prop :=
  ∀ n, P3901910971084351283.a n = A134231 (n + 1)

end A134231

/-! ## A134231.P3562186974051074402

`A004736(n+1)-A112295(n)%A131111(n)`
-/

namespace A134231.P3562186974051074402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - Int.tmod (A112295 n) (A131111 n)

end

end A134231.P3562186974051074402

namespace A134231

/-- `A004736(n+1)-A112295(n)%A131111(n)` -/
def P3562186974051074402.Spec : Prop :=
  ∀ n, P3562186974051074402.a n = A134231 (n + 1)

end A134231

/-!
# A134232: A007318 * M, where M = triangle in which row n consists of n-1 zeros followed by 2n-1, n+1.

The programs for A134232, there is no canonical definition to state claims against.
-/

/-! ## A134232.P6809714073841245102

`A264751(A065672(n+1))+A216973(n)`
-/

namespace A134232.P6809714073841245102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264751 (A065672 (n + 1)).toNat + A216973 n

end

end A134232.P6809714073841245102

/-!
# A134233: (A007318 * A134082 + A134082 * A007318) - A007318 as infinite lower triangular matrices.

The programs for A134233, there is no canonical definition to state claims against.
-/

/-! ## A134233.P9540410669600928818

`A000005(A262616(n)²)*A007318(n)`
-/

namespace A134233.P9540410669600928818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A262616 n ^ 2).toNat * A007318 n

end

end A134233.P9540410669600928818

/-! ## A134233.P14542452752949599270

`A000005(A130321(n)²²)*A007318(n)`
-/

namespace A134233.P14542452752949599270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A130321 n ^ 2) ^ 2).toNat * A007318 n

end

end A134233.P14542452752949599270

/-!
# A134234: Triangle read by rows, n-th row = n terms of 2n, 2n+2, 2n+4, ..., 1; with a(1) = 1.

The programs for A134234, the canonical program `A134234.P7144028086611869884` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134234 has offset 1).

The definition of A134234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134234.P7144028086611869884

`A004277(A094727(n+1)%A131507(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134234

/-- `A004277(A094727(n+1)%A131507(n))` -/
def P7144028086611869884.Spec : Prop :=
  ∀ n, P7144028086611869884.a n = A134234 (n + 1)

theorem P7144028086611869884.correct : P7144028086611869884.Spec := by
  intro n
  simp only [A134234, Nat.add_sub_cancel]

end A134234

/-! ## A134234.P12904812379790364443

`A103517(A051162(n)%A121575(n))`
-/

namespace A134234.P12904812379790364443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A051162 n) (A121575 n)).toNat

end

end A134234.P12904812379790364443

namespace A134234

/-- `A103517(A051162(n)%A121575(n))` -/
def P12904812379790364443.Spec : Prop :=
  ∀ n, P12904812379790364443.a n = A134234 (n + 1)

end A134234

/-! ## A134234.P2069462115355687099

`A103517(A134478(n)%A136124(n+2))`
-/

namespace A134234.P2069462115355687099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A134478 n) (A136124 (n + 2))).toNat

end

end A134234.P2069462115355687099

namespace A134234

/-- `A103517(A134478(n)%A136124(n+2))` -/
def P2069462115355687099.Spec : Prop :=
  ∀ n, P2069462115355687099.a n = A134234 (n + 1)

end A134234

/-! ## A134234.P11092728648370351802

`A053186(A214661(n+1))+A025581(n)+1`
-/

namespace A134234.P11092728648370351802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A214661 (n + 1)).toNat + (A025581 n + 1)

end

end A134234.P11092728648370351802

namespace A134234

/-- `A053186(A214661(n+1))+A025581(n)+1` -/
def P11092728648370351802.Spec : Prop :=
  ∀ n, P11092728648370351802.a n = A134234 (n + 1)

end A134234

/-! ## A134234.P11643516744843871972

`A053186(2*(A292564(n)+1))`
-/

namespace A134234.P11643516744843871972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (2 * (A292564 n + 1)).toNat

end

end A134234.P11643516744843871972

namespace A134234

/-- `A053186(2*(A292564(n)+1))` -/
def P11643516744843871972.Spec : Prop :=
  ∀ n, P11643516744843871972.a n = A134234 (n + 1)

end A134234

/-! ## A134234.P7439590847562636845

`A053186(A292564(n)+A292564(n)+2)`
-/

namespace A134234.P7439590847562636845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A292564 n + (A292564 n + 2)).toNat

end

end A134234.P7439590847562636845

namespace A134234

/-- `A053186(A292564(n)+A292564(n)+2)` -/
def P7439590847562636845.Spec : Prop :=
  ∀ n, P7439590847562636845.a n = A134234 (n + 1)

end A134234

/-! ## A134234.P811918806780329408

`∏{p}[A130321(n), #*A094727(n+1)]`
-/

namespace A134234.P811918806780329408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A094727 (n + 1)

end

end A134234.P811918806780329408

namespace A134234

/-- `∏{p}[A130321(n), #*A094727(n+1)]` -/
def P811918806780329408.Spec : Prop :=
  ∀ n, P811918806780329408.a n = A134234 (n + 1)

end A134234

/-! ## A134234.P16525227143417080677

`A131421(n+1)%A187055(n+1)+1`
-/

namespace A134234.P16525227143417080677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131421 (n + 1)) (A187055 (n + 1)) + 1

end

end A134234.P16525227143417080677

namespace A134234

/-- `A131421(n+1)%A187055(n+1)+1` -/
def P16525227143417080677.Spec : Prop :=
  ∀ n, P16525227143417080677.a n = A134234 (n + 1)

end A134234

/-!
# A134235: Triangle read by rows: a(1) = 1; then n-th row = n terms of (n+2), (n+4), (n+6), ..., n.

The programs for A134235, the canonical program `A134235.P14170243155562586124` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134235 has offset 1).

The definition of A134235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134235.P14170243155562586124

`∑[char[∑[n]]]+2*A048151(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134235

/-- `∑[char[∑[n]]]+2*A048151(n+1)` -/
def P14170243155562586124.Spec : Prop :=
  ∀ n, P14170243155562586124.a n = A134235 (n + 1)

theorem P14170243155562586124.correct : P14170243155562586124.Spec := by
  intro n
  simp only [A134235, Nat.add_sub_cancel]

end A134235

/-! ## A134235.P9271788104806546590

`A158405(n+2)+∑[char[∑[n+1]]]`
-/

namespace A134235.P9271788104806546590
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134235.P9271788104806546590

namespace A134235

/-- `A158405(n+2)+∑[char[∑[n+1]]]` -/
def P9271788104806546590.Spec : Prop :=
  ∀ n, P9271788104806546590.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P16356917854760825370

`∑[char[∑[n]]]+2*A002262(n+1)`
-/

namespace A134235.P16356917854760825370
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A002262 (n + 1)

end

end A134235.P16356917854760825370

namespace A134235

/-- `∑[char[∑[n]]]+2*A002262(n+1)` -/
def P16356917854760825370.Spec : Prop :=
  ∀ n, P16356917854760825370.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P10175261964808864188

`A309557(n)-A130154(n+2)`
-/

namespace A134235.P10175261964808864188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n - A130154 (n + 2)

end

end A134235.P10175261964808864188

namespace A134235

/-- `A309557(n)-A130154(n+2)` -/
def P10175261964808864188.Spec : Prop :=
  ∀ n, P10175261964808864188.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P7438337068946182338

`∑[A010054(n)+Δ[A158405(n+1)]]`
-/

namespace A134235.P7438337068946182338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134235.P7438337068946182338

namespace A134235

/-- `∑[A010054(n)+Δ[A158405(n+1)]]` -/
def P7438337068946182338.Spec : Prop :=
  ∀ n, P7438337068946182338.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P12927539518732544111

`A003056(n+1)+A127948(n+1)+A003056(n)`
-/

namespace A134235.P12927539518732544111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + (A127948 (n + 1) + A003056 n)

end

end A134235.P12927539518732544111

namespace A134235

/-- `A003056(n+1)+A127948(n+1)+A003056(n)` -/
def P12927539518732544111.Spec : Prop :=
  ∀ n, P12927539518732544111.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P6893884943205381083

`A309557(n)-(A077028(n+1)+A004247(n+1))`
-/

namespace A134235.P6893884943205381083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n - (A077028 (n + 1) + A004247 (n + 1))

end

end A134235.P6893884943205381083

namespace A134235

/-- `A309557(n)-(A077028(n+1)+A004247(n+1))` -/
def P6893884943205381083.Spec : Prop :=
  ∀ n, P6893884943205381083.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P4428571933451404510

`A108872(n+2)+A003056(n)-A004736(n+2)`
-/

namespace A134235.P4428571933451404510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 2) + (A003056 n - A004736 (n + 2))

end

end A134235.P4428571933451404510

namespace A134235

/-- `A108872(n+2)+A003056(n)-A004736(n+2)` -/
def P4428571933451404510.Spec : Prop :=
  ∀ n, P4428571933451404510.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P7350866082248238085

`A002262(n+1)+A002262(n+1)+A002024(n+1)`
-/

namespace A134235.P7350866082248238085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) + (A002262 (n + 1) + A002024 (n + 1))

end

end A134235.P7350866082248238085

namespace A134235

/-- `A002262(n+1)+A002262(n+1)+A002024(n+1)` -/
def P7350866082248238085.Spec : Prop :=
  ∀ n, P7350866082248238085.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P9174218959018292291

`A002024(n+1)+A094727(n+2)-A004736(n+2)`
-/

namespace A134235.P9174218959018292291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A094727 (n + 2) - A004736 (n + 2))

end

end A134235.P9174218959018292291

namespace A134235

/-- `A002024(n+1)+A094727(n+2)-A004736(n+2)` -/
def P9174218959018292291.Spec : Prop :=
  ∀ n, P9174218959018292291.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P10306384382187741390

`A007401(A007401(n+2))-A038722(n+2)`
-/

namespace A134235.P10306384382187741390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (A007401 (n + 2)).toNat - A038722 (n + 2)

end

end A134235.P10306384382187741390

namespace A134235

/-- `A007401(A007401(n+2))-A038722(n+2)` -/
def P10306384382187741390.Spec : Prop :=
  ∀ n, P10306384382187741390.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P15847996213143753189

`A074294(2*n+3)+∑[char[∑[n+1]]]`
-/

namespace A134235.P15847996213143753189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (2 * n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134235.P15847996213143753189

namespace A134235

/-- `A074294(2*n+3)+∑[char[∑[n+1]]]` -/
def P15847996213143753189.Spec : Prop :=
  ∀ n, P15847996213143753189.a n = A134235 (n + 1)

end A134235

/-! ## A134235.P339641242059694943

`∑{d}[A087112(n+1), A277707(#)]`
-/

namespace A134235.P339641242059694943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A277707 d

end

end A134235.P339641242059694943

namespace A134235

/-- `∑{d}[A087112(n+1), A277707(#)]` -/
def P339641242059694943.Spec : Prop :=
  ∀ n, P339641242059694943.a n = A134235 (n + 1)

end A134235

/-!
# A134237: Triangle read by rows, a(1) = 1, n-th row n terms of: (2n-1, 2n, 2n+1, ..., followed by n).

The programs for A134237, the canonical program `A134237.P3810954821933463137` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134237 has offset 1).

The definition of A134237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134237.P3810954821933463137

`A131421(n+2)-(A002260(n+1)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134237

/-- `A131421(n+2)-(A002260(n+1)+1)` -/
def P3810954821933463137.Spec : Prop :=
  ∀ n, P3810954821933463137.a n = A134237 (n + 1)

theorem P3810954821933463137.correct : P3810954821933463137.Spec := by
  intro n
  simp only [A134237, Nat.add_sub_cancel]

end A134237

/-! ## A134237.P7924355229585713421

`A131421(n+2)-A131818(n+2)`
-/

namespace A134237.P7924355229585713421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 2) - A131818 (n + 2)

end

end A134237.P7924355229585713421

namespace A134237

/-- `A131421(n+2)-A131818(n+2)` -/
def P7924355229585713421.Spec : Prop :=
  ∀ n, P7924355229585713421.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P9312531892452690881

`2*A051162(n+1)-A002260(n+1)`
-/

namespace A134237.P9312531892452690881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051162 (n + 1) - A002260 (n + 1)

end

end A134237.P9312531892452690881

namespace A134237

/-- `2*A051162(n+1)-A002260(n+1)` -/
def P9312531892452690881.Spec : Prop :=
  ∀ n, P9312531892452690881.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P4973865997484344610

`A005843(A051162(n+1))-A002260(n+1)`
-/

namespace A134237.P4973865997484344610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A051162 (n + 1)).toNat - A002260 (n + 1)

end

end A134237.P4973865997484344610

namespace A134237

/-- `A005843(A051162(n+1))-A002260(n+1)` -/
def P4973865997484344610.Spec : Prop :=
  ∀ n, P4973865997484344610.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P4824292123781328403

`A134478(n+1)+A134478(n+1)-A002260(n+1)`
-/

namespace A134237.P4824292123781328403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (n + 1) + (A134478 (n + 1) - A002260 (n + 1))

end

end A134237.P4824292123781328403

namespace A134237

/-- `A134478(n+1)+A134478(n+1)-A002260(n+1)` -/
def P4824292123781328403.Spec : Prop :=
  ∀ n, P4824292123781328403.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P7629784992778877518

`A216209(A004201(n+1))`
-/

namespace A134237.P7629784992778877518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216209 (A004201 (n + 1)).toNat

end

end A134237.P7629784992778877518

namespace A134237

/-- `A216209(A004201(n+1))` -/
def P7629784992778877518.Spec : Prop :=
  ∀ n, P7629784992778877518.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P3956957332182662672

`A002260(∑[A103451(n)]²+1+n)`
-/

namespace A134237.P3956957332182662672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 + (n : ℤ)).toNat

end

end A134237.P3956957332182662672

namespace A134237

/-- `A002260(∑[A103451(n)]²+1+n)` -/
def P3956957332182662672.Spec : Prop :=
  ∀ n, P3956957332182662672.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P13503448381033900489

`A070770(lt[A056559(n), 1]+1)`
-/

namespace A134237.P13503448381033900489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A134237.P13503448381033900489

namespace A134237

/-- `A070770(lt[A056559(n), 1]+1)` -/
def P13503448381033900489.Spec : Prop :=
  ∀ n, P13503448381033900489.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P2268472076531938940

`A227192(A099627(n))`
-/

namespace A134237.P2268472076531938940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227192 (A099627 n).toNat

end

end A134237.P2268472076531938940

namespace A134237

/-- `A227192(A099627(n))` -/
def P2268472076531938940.Spec : Prop :=
  ∀ n, P2268472076531938940.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P17949383779547687238

`A227192(A173786(n)-1)`
-/

namespace A134237.P17949383779547687238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227192 (A173786 n - 1).toNat

end

end A134237.P17949383779547687238

namespace A134237

/-- `A227192(A173786(n)-1)` -/
def P17949383779547687238.Spec : Prop :=
  ∀ n, P17949383779547687238.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P6420250897771991199

`A227192(∑[A011782(A002262(n))])`
-/

namespace A134237.P6420250897771991199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227192 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134237.P6420250897771991199

namespace A134237

/-- `A227192(∑[A011782(A002262(n))])` -/
def P6420250897771991199.Spec : Prop :=
  ∀ n, P6420250897771991199.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P4293331211647618241

`A227192(∑[A000010(A059268(n))])`
-/

namespace A134237.P4293331211647618241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227192 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134237.P4293331211647618241

namespace A134237

/-- `A227192(∑[A000010(A059268(n))])` -/
def P4293331211647618241.Spec : Prop :=
  ∀ n, P4293331211647618241.a n = A134237 (n + 1)

end A134237

/-! ## A134237.P5619084001819111633

`A326730(A099627(n+1)-1)`
-/

namespace A134237.P5619084001819111633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A099627 (n + 1) - 1).toNat

end

end A134237.P5619084001819111633

namespace A134237

/-- `A326730(A099627(n+1)-1)` -/
def P5619084001819111633.Spec : Prop :=
  ∀ n, P5619084001819111633.a n = A134237 (n + 1)

end A134237

/-!
# A134238: Row sums of triangle A134237.

The programs for A134238, the canonical program `A134238.P11991933842446616285` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134238 has offset 1).

The definition of A134238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134238.P11991933842446616285

`a(n-1)+5*(n+1)-6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134238

/-- `a(n-1)+5*(n+1)-6` -/
def P11991933842446616285.Spec : Prop :=
  ∀ n, P11991933842446616285.a n = A134238 (n + 1)

theorem P11991933842446616285.correct : P11991933842446616285.Spec := by
  intro n
  simp only [A134238, Nat.add_sub_cancel]

end A134238

/-! ## A134238.P2350740717641959607

`(5*(n+1)²-7*(n+1)+4)/2`
-/

namespace A134238.P2350740717641959607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 4 : ℚ) / 2

end

end A134238.P2350740717641959607

namespace A134238

/-- `(5*(n+1)²-7*(n+1)+4)/2` -/
def P2350740717641959607.Spec : Prop :=
  ∀ n, P2350740717641959607.a n = (A134238 (n + 1) : ℚ)

theorem P2350740717641959607.correct : P2350740717641959607.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A134238, Nat.add_sub_cancel, A134238.P2350740717641959607.a, A134238.P11991933842446616285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A134238, Nat.add_sub_cancel, A134238.P2350740717641959607.a, A134238.P11991933842446616285.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A134238

/-! ## A134238.P1824333508578283160

`∑[a(n-1)+5]` with `a(0)=1, a(1)=4`
-/

namespace A134238.P1824333508578283160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134238.P1824333508578283160

namespace A134238

/-- `∑[a(n-1)+5]` -/
def P1824333508578283160.Spec : Prop :=
  ∀ n, (P1824333508578283160.a n : ℤ) = A134238 (n + 1)

end A134238

/-! ## A134238.P6685482641013440812

`∑[record[lcm(2, n)]+n+1]`
-/

namespace A134238.P6685482641013440812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134238.P6685482641013440812

namespace A134238

/-- `∑[record[lcm(2, n)]+n+1]` -/
def P6685482641013440812.Spec : Prop :=
  ∀ n, (P6685482641013440812.a n : ℤ) = A134238 (n + 1)

end A134238

/-! ## A134238.P584891034843392582

`∑[ogf((1+2x+2x^2)/(1-2x+x^2))]`
-/

namespace A134238.P584891034843392582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134238.P584891034843392582

namespace A134238

/-- `∑[ogf((1+2x+2x^2)/(1-2x+x^2))]` -/
def P584891034843392582.Spec : Prop :=
  ∀ n, P584891034843392582.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P5465228267196212338

`ogf((1+2x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A134238.P5465228267196212338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, -3, 3, -1] n

end

end A134238.P5465228267196212338

namespace A134238

/-- `ogf((1+2x+2x^2)/(1-3x+3x^2-x^3))` -/
def P5465228267196212338.Spec : Prop :=
  ∀ n, P5465228267196212338.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P17725580903928936778

`2-∑[a(n-1)-5]` with `a(0)=1`
-/

namespace A134238.P17725580903928936778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134238.P17725580903928936778

namespace A134238

/-- `2-∑[a(n-1)-5]` -/
def P17725580903928936778.Spec : Prop :=
  ∀ n, P17725580903928936778.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P8354658128135723610

`C(n+2, 2)+2*n²`
-/

namespace A134238.P8354658128135723610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + 2 * n ^ 2

end

end A134238.P8354658128135723610

namespace A134238

/-- `C(n+2, 2)+2*n²` -/
def P8354658128135723610.Spec : Prop :=
  ∀ n, (P8354658128135723610.a n : ℤ) = A134238 (n + 1)

end A134238

/-! ## A134238.P1679290453091914119

`∑[4*n]+C(n, 2)+1`
-/

namespace A134238.P1679290453091914119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 + 1)

end

end A134238.P1679290453091914119

namespace A134238

/-- `∑[4*n]+C(n, 2)+1` -/
def P1679290453091914119.Spec : Prop :=
  ∀ n, (P1679290453091914119.a n : ℤ) = A134238 (n + 1)

end A134238

/-! ## A134238.P17347901843231209156

`∑[lcm(5, 5*n)]-(n-1)`
-/

namespace A134238.P17347901843231209156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A134238.P17347901843231209156

namespace A134238

/-- `∑[lcm(5, 5*n)]-(n-1)` -/
def P17347901843231209156.Spec : Prop :=
  ∀ n, P17347901843231209156.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P12036765048602781113

`5*C(n+1, 2)-(n-1)`
-/

namespace A134238.P12036765048602781113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose (n + 1) 2 : ℤ) - ((n : ℤ) - 1)

end

end A134238.P12036765048602781113

namespace A134238

/-- `5*C(n+1, 2)-(n-1)` -/
def P12036765048602781113.Spec : Prop :=
  ∀ n, P12036765048602781113.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P16105003868777719965

`5*n+a(n-1)-1` with `a(0)=1`
-/

namespace A134238.P16105003868777719965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) + (a (n - 1) - 1)

end

end A134238.P16105003868777719965

namespace A134238

/-- `5*n+a(n-1)-1` -/
def P16105003868777719965.Spec : Prop :=
  ∀ n, P16105003868777719965.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P16308556725760967622

`5*n-(1-a(n-1))` with `a(0)=1`
-/

namespace A134238.P16308556725760967622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - (1 - a (n - 1))

end

end A134238.P16308556725760967622

namespace A134238

/-- `5*n-(1-a(n-1))` -/
def P16308556725760967622.Spec : Prop :=
  ∀ n, P16308556725760967622.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P354833927915593849

`∑[5*gcd(n, 2*n)]-(n-1)`
-/

namespace A134238.P354833927915593849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A134238.P354833927915593849

namespace A134238

/-- `∑[5*gcd(n, 2*n)]-(n-1)` -/
def P354833927915593849.Spec : Prop :=
  ∀ n, P354833927915593849.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P18388915983797083963

`Δ[C(n+2, 3)]+n*2*n`
-/

namespace A134238.P18388915983797083963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n * (2 * n) : ℤ)

end

end A134238.P18388915983797083963

namespace A134238

/-- `Δ[C(n+2, 3)]+n*2*n` -/
def P18388915983797083963.Spec : Prop :=
  ∀ n, P18388915983797083963.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P4404527163015852793

`Δ[lcm(n-1, n²)]-∑[n-1]`
-/

namespace A134238.P4404527163015852793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134238.P4404527163015852793

namespace A134238

/-- `Δ[lcm(n-1, n²)]-∑[n-1]` -/
def P4404527163015852793.Spec : Prop :=
  ∀ n, P4404527163015852793.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P14390271199268232055

`C(n, 2)+(n+1)*2*n+1`
-/

namespace A134238.P14390271199268232055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (n + 1) * (2 * n) + 1

end

end A134238.P14390271199268232055

namespace A134238

/-- `C(n, 2)+(n+1)*2*n+1` -/
def P14390271199268232055.Spec : Prop :=
  ∀ n, (P14390271199268232055.a n : ℤ) = A134238 (n + 1)

end A134238

/-! ## A134238.P12782321903492682380

`Δ[2*n*C(n, 2)]-∑[n-1]`
-/

namespace A134238.P12782321903492682380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose n 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134238.P12782321903492682380

namespace A134238

/-- `Δ[2*n*C(n, 2)]-∑[n-1]` -/
def P12782321903492682380.Spec : Prop :=
  ∀ n, P12782321903492682380.a n = A134238 (n + 1)

end A134238

/-! ## A134238.P15583490381012047780

`∑[n+1]+n*xor(1, 2*n+1)`
-/

namespace A134238.P15583490381012047780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * Nat.xor 1 (2 * n + 1)

end

end A134238.P15583490381012047780

namespace A134238

/-- `∑[n+1]+n*xor(1, 2*n+1)` -/
def P15583490381012047780.Spec : Prop :=
  ∀ n, (P15583490381012047780.a n : ℤ) = A134238 (n + 1)

end A134238

/-! ## A134238.P8541147008790363755

`∑[n-1]+or(2, (n+1)*2*n)`
-/

namespace A134238.P8541147008790363755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lor 2 ((n + 1) * (2 * n)) : ℤ)

end

end A134238.P8541147008790363755

namespace A134238

/-- `∑[n-1]+or(2, (n+1)*2*n)` -/
def P8541147008790363755.Spec : Prop :=
  ∀ n, P8541147008790363755.a n = A134238 (n + 1)

end A134238

/-!
# A134239: A127899(unsigned) * A007318.

The programs for A134239, the canonical program `A134239.P17118463381127374769` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134239 has offset 0).

The definition of A134239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134239.P2497626341423458493

`∑[A010054(n)]*A029653(n)`
-/

namespace A134239.P2497626341423458493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A029653 n

end

end A134239.P2497626341423458493

namespace A134239

/-- `∑[A010054(n)]*A029653(n)` -/
def P2497626341423458493.Spec : Prop :=
  ∀ n, P2497626341423458493.a n = A134239 n

end A134239

/-! ## A134239.P8465843520465208459

`A216973(n)+A123097(n+1)`
-/

namespace A134239.P8465843520465208459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A123097 (n + 1)

end

end A134239.P8465843520465208459

namespace A134239

/-- `A216973(n)+A123097(n+1)` -/
def P8465843520465208459.Spec : Prop :=
  ∀ n, P8465843520465208459.a n = A134239 n

end A134239

/-! ## A134239.P5571628086191936224

`A002024(n+1)*A029653(n)`
-/

namespace A134239.P5571628086191936224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A029653 n

end

end A134239.P5571628086191936224

namespace A134239

/-- `A002024(n+1)*A029653(n)` -/
def P5571628086191936224.Spec : Prop :=
  ∀ n, P5571628086191936224.a n = A134239 n

end A134239

/-! ## A134239.P13350007134862780258

`(A003056(n)+1)*A029653(n)`
-/

namespace A134239.P13350007134862780258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A029653 n

end

end A134239.P13350007134862780258

namespace A134239

/-- `(A003056(n)+1)*A029653(n)` -/
def P13350007134862780258.Spec : Prop :=
  ∀ n, P13350007134862780258.a n = A134239 n

end A134239

/-! ## A134239.P4243829104921301644

`A029653(n)*A123578(n+1)`
-/

namespace A134239.P4243829104921301644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n * A123578 (n + 1)

end

end A134239.P4243829104921301644

namespace A134239

/-- `A029653(n)*A123578(n+1)` -/
def P4243829104921301644.Spec : Prop :=
  ∀ n, P4243829104921301644.a n = A134239 n

end A134239

/-! ## A134239.P2483213729021403846

`(comp[A000096(n)]-n)*A029653(n)`
-/

namespace A134239.P2483213729021403846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * A029653 n

end

end A134239.P2483213729021403846

namespace A134239

/-- `(comp[A000096(n)]-n)*A029653(n)` -/
def P2483213729021403846.Spec : Prop :=
  ∀ n, P2483213729021403846.a n = A134239 n

end A134239

/-! ## A134239.P17118463381127374769

`A127952(n+1)+A003506(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134239

/-- `A127952(n+1)+A003506(n+1)` -/
def P17118463381127374769.Spec : Prop :=
  ∀ n, P17118463381127374769.a n = A134239 n

theorem P17118463381127374769.correct : P17118463381127374769.Spec := by
  intro n
  simp only [A134239]

end A134239

/-! ## A134239.P17541438343789752449

`(A007401(n+1)-n)*A029653(n)`
-/

namespace A134239.P17541438343789752449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007401 (n + 1) - (n : ℤ)) * A029653 n

end

end A134239.P17541438343789752449

namespace A134239

/-- `(A007401(n+1)-n)*A029653(n)` -/
def P17541438343789752449.Spec : Prop :=
  ∀ n, P17541438343789752449.a n = A134239 n

end A134239

/-! ## A134239.P16946571656846023941

`sqrt(A061579(n)+1+n)*A029653(n)`
-/

namespace A134239.P16946571656846023941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061579 n + 1 + (n : ℤ) : ℝ) * (A029653 n : ℝ)

end

end A134239.P16946571656846023941

namespace A134239

/-- `sqrt(A061579(n)+1+n)*A029653(n)` -/
def P16946571656846023941.Spec : Prop :=
  ∀ n, P16946571656846023941.a n = (A134239 n : ℝ)

end A134239

/-! ## A134239.P3766164243079578910

`A127952(n+1)+A127952(n+1)+A127952(n)`
-/

namespace A134239.P3766164243079578910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 (n + 1) + (A127952 (n + 1) + A127952 n)

end

end A134239.P3766164243079578910

namespace A134239

/-- `A127952(n+1)+A127952(n+1)+A127952(n)` -/
def P3766164243079578910.Spec : Prop :=
  ∀ n, P3766164243079578910.a n = A134239 n

end A134239

/-! ## A134239.P1926190122415242892

`(A097805(n+1)+A007318(n))*A002024(n+1)`
-/

namespace A134239.P1926190122415242892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A007318 n) * A002024 (n + 1)

end

end A134239.P1926190122415242892

namespace A134239

/-- `(A097805(n+1)+A007318(n))*A002024(n+1)` -/
def P1926190122415242892.Spec : Prop :=
  ∀ n, P1926190122415242892.a n = A134239 n

end A134239

/-! ## A134239.P2906724738766771959

`(A097805(n+1)+A014473(n)+1)*A002024(n+1)`
-/

namespace A134239.P2906724738766771959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + (A014473 n + 1)) * A002024 (n + 1)

end

end A134239.P2906724738766771959

namespace A134239

/-- `(A097805(n+1)+A014473(n)+1)*A002024(n+1)` -/
def P2906724738766771959.Spec : Prop :=
  ∀ n, P2906724738766771959.a n = A134239 n

end A134239

/-! ## A134239.P4529645381434102784

`(A097805(n+1)+(A124927(n)+A073423(n)^n)/2)*A002024(n+1)`
-/

namespace A134239.P4529645381434102784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A097805 (n + 1) : ℚ) + (A124927 n + A073423 n ^ n : ℚ) / 2) * (A002024 (n + 1) : ℚ)

end

end A134239.P4529645381434102784

namespace A134239

/-- `(A097805(n+1)+(A124927(n)+A073423(n)^n)/2)*A002024(n+1)` -/
def P4529645381434102784.Spec : Prop :=
  ∀ n, P4529645381434102784.a n = (A134239 n : ℚ)

end A134239

/-! ## A134239.P11188780275738912461

`A000194(2*n+1)*A029653(n)`
-/

namespace A134239.P11188780275738912461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n + 1) * A029653 n

end

end A134239.P11188780275738912461

namespace A134239

/-- `A000194(2*n+1)*A029653(n)` -/
def P11188780275738912461.Spec : Prop :=
  ∀ n, P11188780275738912461.a n = A134239 n

end A134239

/-! ## A134239.P3226090494304095730

`(A097805(n+1)+ceil(A134060(n)/3))*A002024(n+1)`
-/

namespace A134239.P3226090494304095730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + ⌈(A134060 n : ℚ) / 3⌉) * A002024 (n + 1)

end

end A134239.P3226090494304095730

namespace A134239

/-- `(A097805(n+1)+ceil(A134060(n)/3))*A002024(n+1)` -/
def P3226090494304095730.Spec : Prop :=
  ∀ n, P3226090494304095730.a n = A134239 n

end A134239

/-!
# A134240: Numbers which occur in A105399 but not in A126990.

The programs for A134240, there is no canonical definition to state claims against.
-/

/-! ## A134240.P6839745367883210737

`A102269(A323340(n)+n+2)`
-/

namespace A134240.P6839745367883210737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102269 (A323340 n + (n + 2 : ℤ)).toNat

end

end A134240.P6839745367883210737

/-!
# A134241: a(n) = 8*(n-1)*(n-2)*(n-3)*(6*n^2-37*n+60).

The programs for A134241, the canonical program `A134241.P2129852458002740307` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134241 has offset 1).

The definition of A134241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n*(n-1)*(n-2)*(6*(n+1)²-37*(n+1)+60)` (program `A134241.P2129852458002740307`, by `A134241.P2129852458002740307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134241.P2129852458002740307

`8*n*(n-1)*(n-2)*(6*(n+1)²-37*(n+1)+60)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134241

/-- `8*n*(n-1)*(n-2)*(6*(n+1)²-37*(n+1)+60)` -/
def P2129852458002740307.Spec : Prop :=
  ∀ n, P2129852458002740307.a n = A134241 (n + 1)

theorem P2129852458002740307.correct : P2129852458002740307.Spec := by
  intro n
  simp only [A134241, Nat.add_sub_cancel]

end A134241

/-!
# A134244: Indices k such that k divides A007468(k).

The programs for A134244, there is no canonical definition to state claims against.
-/

/-! ## A134244.P17084601982854953487

`A134245(n+1)/A134246(n+1)`
-/

namespace A134244.P17084601982854953487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134245 (n + 1) : ℚ) / (A134246 (n + 1) : ℚ)

end

end A134244.P17084601982854953487

/-! ## A134244.P3181620296806025252

`record[gcd(A007468(n+1), A053165(n+1))]`
-/

namespace A134244.P3181620296806025252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007468 (n + 1)) (A053165 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134244.P3181620296806025252

/-!
# A134245: Terms in A007468 which are multiples of their indices.

The programs for A134245, there is no canonical definition to state claims against.
-/

/-! ## A134245.P17806449757015218115

`A007468(A134244(n+1))`
-/

namespace A134245.P17806449757015218115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (A134244 (n + 1)).toNat

end

end A134245.P17806449757015218115

/-! ## A134245.P6879265898555260688

`A134244(n+1)*A134246(n+1)`
-/

namespace A134245.P6879265898555260688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134244 (n + 1) * A134246 (n + 1)

end

end A134245.P6879265898555260688

/-! ## A134245.P5279361201913601073

`A007468(record[gcd(A007468(n+1), A053165(n+1))])`
-/

namespace A134245.P5279361201913601073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007468 (n + 1)) (A053165 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A134245.P5279361201913601073

/-!
# A134246: Quotients A134245(n)/A134244(n).

The programs for A134246, there is no canonical definition to state claims against.
-/

/-! ## A134246.P61498574983870227

`A134245(n+1)/A134244(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134246.P61498574983870227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134245 (n + 1) : ℚ) / (A134244 (n + 1) : ℚ)

end

end A134246.P61498574983870227

/-! ## A134246.P1939429165939092934

`A134245(n+1)/record[gcd(A007468(n+1), A053165(n+1))]`
-/

namespace A134246.P1939429165939092934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007468 (n + 1)) (A053165 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134245 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A134246.P1939429165939092934

/-!
# A134247: A007318 * triangle by rows, n-th row = (n-1) zeros followed by T(n), 1.

The programs for A134247, there is no canonical definition to state claims against.
-/

/-! ## A134247.P3289006464839324703

`A129533(n)+A093375(n+1)`
-/

namespace A134247.P3289006464839324703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 n + A093375 (n + 1)

end

end A134247.P3289006464839324703

/-! ## A134247.P13501015327703986954

`floor(A093375(n+1)+A155864(n)/2)`
-/

namespace A134247.P13501015327703986954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093375 (n + 1) : ℚ) + (A155864 n : ℚ) / 2⌋

end

end A134247.P13501015327703986954

/-! ## A134247.P1842848417936674015

`A129533(n)+A103406(A061579(n))`
-/

namespace A134247.P1842848417936674015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 n + A103406 (A061579 n).toNat

end

end A134247.P1842848417936674015

/-! ## A134247.P12832467244757396266

`A093375(n+1)+A004526(A155864(n))`
-/

namespace A134247.P12832467244757396266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) + A004526 (A155864 n).toNat

end

end A134247.P12832467244757396266

/-! ## A134247.P6803338666370043462

`A093375(n+1)+A089196(A155864(n)+1)`
-/

namespace A134247.P6803338666370043462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) + A089196 (A155864 n + 1).toNat

end

end A134247.P6803338666370043462

/-! ## A134247.P4296257879501578207

`A007318(n)+A007318(n+1)*A112367(n+1)`
-/

namespace A134247.P4296257879501578207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007318 (n + 1) * A112367 (n + 1)

end

end A134247.P4296257879501578207

/-! ## A134247.P4056587968945768352

`A093375(n+1)+(A077028(n)-1)/2*A007318(n)`
-/

namespace A134247.P4056587968945768352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093375 (n + 1) : ℚ) + (A077028 n - 1 : ℚ) / 2 * (A007318 n : ℚ)

end

end A134247.P4056587968945768352

/-!
# A134248: M * A007318, M = a triangle by rows, n-th row = (n-1) zeros followed by T(n), 1.

The programs for A134248, there is no canonical definition to state claims against.
-/

/-! ## A134248.P1151357609715259270

`A332809(A108084(n))`
-/

namespace A134248.P1151357609715259270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (A108084 n).toNat

end

end A134248.P1151357609715259270

/-!
# A134249: Triangle read by rows, taken from the lower triangular matrix (M * A000012 + A000012 * M) - A000012; where M = lower triangular matrix with (1,1,1,...) in the main diagonal and the triangular numbers in the subdiagonal and A000012 = (1; 1,1; 1,1,1; ...).

The programs for A134249, there is no canonical definition to state claims against.
-/

/-! ## A134249.P14199082719108357902

`gcd(A112367(n)+2+n, A127648(n))`
-/

namespace A134249.P14199082719108357902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112367 n + 2 + (n : ℤ)) (A127648 n)

end

end A134249.P14199082719108357902

/-! ## A134249.P8518040299727238113

`A002262(n+1)²+A049780(n)+1`
-/

namespace A134249.P8518040299727238113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) ^ 2 + (A049780 n + 1)

end

end A134249.P8518040299727238113

/-! ## A134249.P16861956924643016120

`A004736((n+1)*∑[A185911(n+1)])`
-/

namespace A134249.P16861956924643016120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A134249.P16861956924643016120

/-! ## A134249.P7765207930567290276

`(A112367(n)+2+n)^Δ[A083920(n)]`
-/

namespace A134249.P7765207930567290276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112367 n + 2 + (n : ℤ) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A134249.P7765207930567290276

/-! ## A134249.P2145774847863183033

`A002260((n+1-A002260(n+1))²+(n+1)²+1)`
-/

namespace A134249.P2145774847863183033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (((n + 1 : ℤ) - A002260 (n + 1)) ^ 2 + ((n + 1) ^ 2 : ℤ) + 1).toNat

end

end A134249.P2145774847863183033

/-! ## A134249.P3499638819631347005

`(A112367(n)+2+n)^A001221(sqrt(A262616(n)))`
-/

namespace A134249.P3499638819631347005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112367 n + 2 + (n : ℤ) : ℚ) ^ (A001221 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))).toNat : ℤ)

end

end A134249.P3499638819631347005

/-! ## A134249.P4893937805544228417

`A002262(n+1)²+n+1-A000096(A002262(n))`
-/

namespace A134249.P4893937805544228417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) ^ 2 + ((n + 1 : ℤ) - A000096 (A002262 n).toNat)

end

end A134249.P4893937805544228417

/-! ## A134249.P2650055146375830806

`A004736((n+1)*(A003056(n)+A003056(n+1)²))`
-/

namespace A134249.P2650055146375830806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((n + 1 : ℤ) * (A003056 n + A003056 (n + 1) ^ 2)).toNat

end

end A134249.P2650055146375830806

/-!
# A134250: Expansion of x*(4+9*x-7*x^2) / ((1-x)*(1+3*x-x^2)).

The programs for A134250, the canonical program `A134250.P10622562214614182189` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134250 has offset 1).

The definition of A134250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+9x-7x^2)/(1+2x-4x^2+x^3))` (program `A134250.P10622562214614182189`, by `A134250.P10622562214614182189.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134250.P10622562214614182189

`ogf((4+9x-7x^2)/(1+2x-4x^2+x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134250

/-- `ogf((4+9x-7x^2)/(1+2x-4x^2+x^3))` -/
def P10622562214614182189.Spec : Prop :=
  ∀ n, P10622562214614182189.a n = A134250 (n + 1)

theorem P10622562214614182189.correct : P10622562214614182189.Spec := by
  intro n
  simp only [A134250, Nat.add_sub_cancel]

end A134250

/-! ## A134250.P3599306762028476129

`2-17*(-1)^(n+1)*A006190(n+1)+5*(-1)^(n+1)*A006190(n+2)`
-/

namespace A134250.P3599306762028476129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 17 * (-1) ^ (n + 1) * A006190 (n + 1) + 5 * (-1) ^ (n + 1) * A006190 (n + 2)

end

end A134250.P3599306762028476129

namespace A134250

/-- `2-17*(-1)^(n+1)*A006190(n+1)+5*(-1)^(n+1)*A006190(n+2)` -/
def P3599306762028476129.Spec : Prop :=
  ∀ n, P3599306762028476129.a n = A134250 (n + 1)

end A134250

/-! ## A134250.P1377457404286581532

`a(n-2)+3*(2-a(n-1))` with `a(0)=4, a(1)=1`
-/

namespace A134250.P1377457404286581532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + 3 * (2 - a (n - 1))

end

end A134250.P1377457404286581532

namespace A134250

/-- `a(n-2)+3*(2-a(n-1))` -/
def P1377457404286581532.Spec : Prop :=
  ∀ n, P1377457404286581532.a n = A134250 (n + 1)

end A134250

/-! ## A134250.P10265793748221484007

`a(n-2)-3*(a(n-1)-2)` with `a(0)=4, a(1)=1`
-/

namespace A134250.P10265793748221484007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) - 3 * (a (n - 1) - 2)

end

end A134250.P10265793748221484007

namespace A134250

/-- `a(n-2)-3*(a(n-1)-2)` -/
def P10265793748221484007.Spec : Prop :=
  ∀ n, P10265793748221484007.a n = A134250 (n + 1)

end A134250

/-! ## A134250.P8743344158175668910

`6-(a(n-1)+a(n-1)+a(n-1)-a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A134250.P8743344158175668910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  6 - (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A134250.P8743344158175668910

namespace A134250

/-- `6-(a(n-1)+a(n-1)+a(n-1)-a(n-2))` -/
def P8743344158175668910.Spec : Prop :=
  ∀ n, P8743344158175668910.a n = A134250 (n + 1)

end A134250

/-! ## A134250.P11334383050129135352

`6-(a(n-1)-(a(n-2)-a(n-1)-a(n-1)))` with `a(0)=4, a(1)=1`
-/

namespace A134250.P11334383050129135352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  6 - (a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1)))

end

end A134250.P11334383050129135352

namespace A134250

/-- `6-(a(n-1)-(a(n-2)-a(n-1)-a(n-1)))` -/
def P11334383050129135352.Spec : Prop :=
  ∀ n, P11334383050129135352.a n = A134250 (n + 1)

end A134250

/-!
# A134251: Positions of 1 after decimal point in decimal expansion of 1/Pi.

The programs for A134251, there is no canonical definition to state claims against.
-/

/-! ## A134251.P6107989352026766040

`eq[1, A049541(n)]+1`
-/

namespace A134251.P6107989352026766040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134251.P6107989352026766040

/-! ## A134251.P293420742233706714

`A020725(eq[1, A049541(n)])`
-/

namespace A134251.P293420742233706714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134251.P293420742233706714

/-! ## A134251.P2330428380342470439

`A328399(2*eq[1, A049541(n)])`
-/

namespace A134251.P2330428380342470439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134251.P2330428380342470439

/-! ## A134251.P5279681581924671300

`eq[8, A188340(floor(n²/(n+1)))]`
-/

namespace A134251.P5279681581924671300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134251.P5279681581924671300

/-! ## A134251.P13068491098102649343

`eq[1, A049541(A028310(n)-1)]`
-/

namespace A134251.P13068491098102649343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 (A028310 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134251.P13068491098102649343

/-! ## A134251.P6257024561269117395

`2-A024000(eq[1, A049541(n)])`
-/

namespace A134251.P6257024561269117395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134251.P6257024561269117395

/-! ## A134251.P1713819267336335155

`eq[1, A049541(A004273(n)-n)]`
-/

namespace A134251.P1713819267336335155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134251.P1713819267336335155

/-! ## A134251.P2671587477035052550

`eq[A062157(n)², A049541(abs(1-n))]`
-/

namespace A134251.P2671587477035052550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134251.P2671587477035052550

/-! ## A134251.P17815314618650458752

`A008619(2*eq[1, A049541(n)])`
-/

namespace A134251.P17815314618650458752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134251.P17815314618650458752

/-! ## A134251.P13680506395924035249

`A028242(2*eq[1, A049541(n)])`
-/

namespace A134251.P13680506395924035249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134251.P13680506395924035249

/-! ## A134251.P10382244192022253112

`A029579(2*eq[1, A049541(n)])`
-/

namespace A134251.P10382244192022253112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134251.P10382244192022253112

/-!
# A134252: Positions of 2 after decimal point in decimal expansion of 1/Pi.

The programs for A134252, there is no canonical definition to state claims against.
-/

/-! ## A134252.P1134440801448984066

`eq[2, A049541(n)]+1`
-/

namespace A134252.P1134440801448984066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134252.P1134440801448984066

/-! ## A134252.P16505458642993373867

`eq[2, A049541(abs(1-n))]`
-/

namespace A134252.P16505458642993373867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134252.P16505458642993373867

/-! ## A134252.P13240556701665066261

`A020725(eq[2, A049541(n)])`
-/

namespace A134252.P13240556701665066261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P13240556701665066261

/-! ## A134252.P17764555187798019407

`A065475(eq[2, A049541(n)])`
-/

namespace A134252.P17764555187798019407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P17764555187798019407

/-! ## A134252.P2820956684927341026

`2-A024000(eq[2, A049541(n)])`
-/

namespace A134252.P2820956684927341026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P2820956684927341026

/-! ## A134252.P1974474988504563082

`A328399(2*eq[2, A049541(n)])`
-/

namespace A134252.P1974474988504563082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P1974474988504563082

/-! ## A134252.P8137171023490728198

`A008619(2*eq[2, A049541(n)])`
-/

namespace A134252.P8137171023490728198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P8137171023490728198

/-! ## A134252.P3524837844580019500

`A028242(2*eq[2, A049541(n)])`
-/

namespace A134252.P3524837844580019500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P3524837844580019500

/-! ## A134252.P2321590719925219058

`A029579(2*eq[2, A049541(n)])`
-/

namespace A134252.P2321590719925219058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P2321590719925219058

/-! ## A134252.P8933386931378050880

`A008620(3*eq[2, A049541(n)])`
-/

namespace A134252.P8933386931378050880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134252.P8933386931378050880

/-!
# A134253: Positions of 3 after decimal point in decimal expansion of 1/Pi.

The programs for A134253, there is no canonical definition to state claims against.
-/

/-! ## A134253.P1458856782988780013

`eq[3, A049541(n)]+1`
-/

namespace A134253.P1458856782988780013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134253.P1458856782988780013

/-! ## A134253.P6345046324830692517

`eq[6, A188340(n)]+1`
-/

namespace A134253.P6345046324830692517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134253.P6345046324830692517

/-! ## A134253.P2868428891061105495

`eq[3, A049541(abs(1-n))]`
-/

namespace A134253.P2868428891061105495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134253.P2868428891061105495

/-! ## A134253.P15318206660882901489

`eq[9, A049541(abs(A024000(n)))²]`
-/

namespace A134253.P15318206660882901489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |A024000 n|.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134253.P15318206660882901489

/-! ## A134253.P4715192225127454911

`A028242(2*eq[3, A049541(n)])`
-/

namespace A134253.P4715192225127454911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134253.P4715192225127454911

/-!
# A134254: Positions of 4 after decimal point in decimal expansion of 1/Pi.

The programs for A134254, there is no canonical definition to state claims against.
-/

/-! ## A134254.P13237105447882421832

`eq[4, A049541(n)]+1`
-/

namespace A134254.P13237105447882421832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134254.P13237105447882421832

/-! ## A134254.P14169537539669319526

`eq[4, A049541(abs(1-n))]`
-/

namespace A134254.P14169537539669319526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134254.P14169537539669319526

/-! ## A134254.P129538827173645995

`eq[5, A188340(floor(n²/(n+1)))]`
-/

namespace A134254.P129538827173645995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134254.P129538827173645995

/-! ## A134254.P18416016933855452347

`A020725(eq[4, A049541(n)])`
-/

namespace A134254.P18416016933855452347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134254.P18416016933855452347

/-! ## A134254.P10865244259621902148

`A065475(eq[4, A049541(n)])`
-/

namespace A134254.P10865244259621902148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134254.P10865244259621902148

/-! ## A134254.P15584070281323286548

`A153152(eq[4, A049541(n)])`
-/

namespace A134254.P15584070281323286548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134254.P15584070281323286548

/-! ## A134254.P13580728941115983100

`A020710(eq[4, A049541(n)]-4)`
-/

namespace A134254.P13580728941115983100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 4)

end

end A134254.P13580728941115983100

/-! ## A134254.P6647493297120274709

`A008619(2*eq[4, A049541(n)])`
-/

namespace A134254.P6647493297120274709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134254.P6647493297120274709

/-! ## A134254.P13294838666200770751

`A029579(2*eq[4, A049541(n)])`
-/

namespace A134254.P13294838666200770751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134254.P13294838666200770751

/-!
# A134255: Positions of 5 after decimal point in decimal expansion of 1/Pi.

The programs for A134255, there is no canonical definition to state claims against.
-/

/-! ## A134255.P15458851020594311261

`eq[4, A188340(n)]+1`
-/

namespace A134255.P15458851020594311261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134255.P15458851020594311261

/-! ## A134255.P9150464334197741606

`eq[5, A049541(n)]+1`
-/

namespace A134255.P9150464334197741606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134255.P9150464334197741606

/-! ## A134255.P288916129131973405

`eq[5, A049541(abs(1-n))]`
-/

namespace A134255.P288916129131973405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134255.P288916129131973405

/-! ## A134255.P16946051473812982934

`A020725(eq[5, A049541(n)])`
-/

namespace A134255.P16946051473812982934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134255.P16946051473812982934

/-! ## A134255.P17096003488404900851

`A065475(eq[5, A049541(n)])`
-/

namespace A134255.P17096003488404900851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134255.P17096003488404900851

/-! ## A134255.P8988304954372372133

`A052905(n)-(A055999(n)-eq[5, A049541(n)])`
-/

namespace A134255.P8988304954372372133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - (A055999 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ))

end

end A134255.P8988304954372372133

/-!
# A134256: Positions of 6 after decimal point in decimal expansion of 1/Pi.

The programs for A134256, there is no canonical definition to state claims against.
-/

/-! ## A134256.P4594400449184827860

`eq[3, A188340(n)]+1`
-/

namespace A134256.P4594400449184827860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134256.P4594400449184827860

/-! ## A134256.P64699638265366136

`eq[6, A049541(n)]+1`
-/

namespace A134256.P64699638265366136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134256.P64699638265366136

/-! ## A134256.P3861863510317164075

`eq[6, A049541(abs(1-n))]`
-/

namespace A134256.P3861863510317164075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134256.P3861863510317164075

/-! ## A134256.P7778184359653399641

`A020725(eq[6, A049541(n)])`
-/

namespace A134256.P7778184359653399641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134256.P7778184359653399641

/-! ## A134256.P1260989520493433514

`A065475(eq[6, A049541(n)])`
-/

namespace A134256.P1260989520493433514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134256.P1260989520493433514

/-! ## A134256.P5289381647976309466

`A028242(2*eq[6, A049541(n)])`
-/

namespace A134256.P5289381647976309466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134256.P5289381647976309466

/-!
# A134257: Positions of 7 after decimal point in decimal expansion of 1/Pi.

The programs for A134257, there is no canonical definition to state claims against.
-/

/-! ## A134257.P11159716093807498575

`eq[2, A188340(n)]+1`
-/

namespace A134257.P11159716093807498575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134257.P11159716093807498575

/-! ## A134257.P17918521753053295789

`eq[7, A049541(n)]+1`
-/

namespace A134257.P17918521753053295789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134257.P17918521753053295789

/-! ## A134257.P6128789435619779528

`A020725(eq[7, A049541(n)])`
-/

namespace A134257.P6128789435619779528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134257.P6128789435619779528

/-! ## A134257.P16377550894273173900

`A065475(eq[7, A049541(n)])`
-/

namespace A134257.P16377550894273173900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134257.P16377550894273173900

/-! ## A134257.P17506383751022849598

`A028310(eq[7, A049541(n)]-or(n, -1))`
-/

namespace A134257.P17506383751022849598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

end

end A134257.P17506383751022849598

/-! ## A134257.P7795046833250462632

`eq[7, A049541(abs(A024000(n)))]`
-/

namespace A134257.P7795046833250462632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134257.P7795046833250462632

/-! ## A134257.P12975494526788544121

`A008619(2*eq[7, A049541(n)])`
-/

namespace A134257.P12975494526788544121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134257.P12975494526788544121

/-! ## A134257.P15533021232575156078

`A028242(2*eq[7, A049541(n)])`
-/

namespace A134257.P15533021232575156078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134257.P15533021232575156078

/-! ## A134257.P16443844552258596790

`A117910(3*2*eq[7, A049541(n)])`
-/

namespace A134257.P16443844552258596790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (3 * (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A134257.P16443844552258596790

/-!
# A134258: Positions of 8 after decimal point in decimal expansion of 1/Pi.

The programs for A134258, there is no canonical definition to state claims against.
-/

/-! ## A134258.P15795016746163659149

`eq[1, A188340(n)]+1`
-/

namespace A134258.P15795016746163659149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134258.P15795016746163659149

/-! ## A134258.P8723959027410513456

`eq[8, A049541(n)]+1`
-/

namespace A134258.P8723959027410513456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134258.P8723959027410513456

/-! ## A134258.P633104929473858588

`A065475(eq[8, A049541(n)])`
-/

namespace A134258.P633104929473858588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134258.P633104929473858588

/-! ## A134258.P8979096508780908417

`eq[8, A049541(abs(A024000(n)))]`
-/

namespace A134258.P8979096508780908417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 |A024000 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134258.P8979096508780908417

/-! ## A134258.P15543751307262288852

`A008619(2*eq[8, A049541(n)])`
-/

namespace A134258.P15543751307262288852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134258.P15543751307262288852

/-! ## A134258.P5781418723689590223

`A008611(3*eq[8, A049541(n)])`
-/

namespace A134258.P5781418723689590223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134258.P5781418723689590223

/-! ## A134258.P9718083935577813616

`A103221(6*eq[8, A049541(n)])`
-/

namespace A134258.P9718083935577813616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134258.P9718083935577813616

/-!
# A134259: Positions of 9 after decimal point in decimal expansion of 1/Pi.

The programs for A134259, there is no canonical definition to state claims against.
-/

/-! ## A134259.P17370842837587087508

`eq[9, A049541(n)]+1`
-/

namespace A134259.P17370842837587087508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134259.P17370842837587087508

/-! ## A134259.P14321060721127385236

`A328399(2*eq[9, A049541(n)])`
-/

namespace A134259.P14321060721127385236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134259.P14321060721127385236

/-! ## A134259.P12338894905284674956

`A008619(2*eq[9, A049541(n)])`
-/

namespace A134259.P12338894905284674956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134259.P12338894905284674956

/-! ## A134259.P9794115287806086210

`A028242(2*eq[9, A049541(n)])`
-/

namespace A134259.P9794115287806086210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134259.P9794115287806086210

/-! ## A134259.P11822756265779119955

`A008611(3*eq[9, A049541(n)])`
-/

namespace A134259.P11822756265779119955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134259.P11822756265779119955

/-!
# A134261: E.g.f. satisfies: A(x) = x*(sinh(exp(A(x))-1)+1).

The programs for A134261, there is no canonical definition to state claims against.
-/

/-! ## A134261.P5074990937899743971

`exp(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9, a(4)=68, a(5)=735`
-/

namespace A134261.P5074990937899743971
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2, 9, 68, 735] fun n a =>
  Real.exp (a (n - 1))

end

end A134261.P5074990937899743971

/-! ## A134261.P5727208771252488010

`n*A264749((n^n+n^ceil(n/2))/2)`
-/

namespace A134261.P5727208771252488010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A264749 (SequenceMachineLib.roundAway (((n ^ n : ℚ) + (n : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) / 2)).toNat

end

end A134261.P5727208771252488010

/-!
# A134262: Number of n X n binary matrices with every 1 adjacent to another 1 horizontally or vertically.

The programs for A134262, there is no canonical definition to state claims against.
-/

/-! ## A134262.P9284805946804982061

`A202802(∑[4*n]+1)`
-/

namespace A134262.P9284805946804982061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134262.P9284805946804982061

/-! ## A134262.P4041497058190463615

`lcm(A000034(n), A202802(A001844(n)))`
-/

namespace A134262.P4041497058190463615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A202802 (A001844 n).toNat)

end

end A134262.P4041497058190463615

/-! ## A134262.P5606295550847463544

`or(A000007(n), A202802(A001844(n)))`
-/

namespace A134262.P5606295550847463544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A202802 (A001844 n).toNat)

end

end A134262.P5606295550847463544

/-! ## A134262.P10611730540864663069

`A001987(n+1)*A202802(A001844(n))`
-/

namespace A134262.P10611730540864663069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001987 (n + 1) * A202802 (A001844 n).toNat

end

end A134262.P10611730540864663069

/-! ## A134262.P7332931918162803661

`A146370(n+1)*A202802(A001844(n))`
-/

namespace A134262.P7332931918162803661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146370 (n + 1) * A202802 (A001844 n).toNat

end

end A134262.P7332931918162803661

/-!
# A134264: Coefficients T(j, k) of a partition transform for Lagrange compositional inversion of a function or generating series in terms of the coefficients of the power series for its reciprocal. Enumeration of noncrossing partitions and primitive parking functions. T(n,k) for n >= 1 and 1 <= k <= A000041(n-1), an irregular triangle read by rows.

The programs for A134264, there is no canonical definition to state claims against.
-/

/-! ## A134264.P4890342424636446546

`A298941(A344122(n+2)/2)`
-/

namespace A134264.P4890342424636446546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 2)).toNat

end

end A134264.P4890342424636446546

/-! ## A134264.P282712011862152498

`A355777(n)-A355776(n)`
-/

namespace A134264.P282712011862152498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355777 n - A355776 n

end

end A134264.P282712011862152498

/-! ## A134264.P9205921481470983869

`2*A355777(n)-A356113(n)`
-/

namespace A134264.P9205921481470983869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355777 n - A356113 n

end

end A134264.P9205921481470983869

/-! ## A134264.P7162955516939128854

`A356113(n)-2*A355776(n)`
-/

namespace A134264.P7162955516939128854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356113 n - 2 * A355776 n

end

end A134264.P7162955516939128854

/-! ## A134264.P7240207235327895647

`A005843(A355777(n))-A356113(n)`
-/

namespace A134264.P7240207235327895647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A355777 n).toNat - A356113 n

end

end A134264.P7240207235327895647

/-! ## A134264.P16017338830941001379

`A356113(n)-A005843(A355776(n))`
-/

namespace A134264.P16017338830941001379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356113 n - A005843 (A355776 n).toNat

end

end A134264.P16017338830941001379

/-!
# A134266: Primes associated with the prime gaps listed in A085237.

The programs for A134266, there is no canonical definition to state claims against.
-/

/-! ## A134266.P3472258089963403642

`A000040(A085500(n+1))`
-/

namespace A134266.P3472258089963403642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A085500 (n + 1)).toNat

end

end A134266.P3472258089963403642

/-! ## A134266.P6000030131475576738

`A361823(n+1)-A085237(n+1)`
-/

namespace A134266.P6000030131475576738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361823 (n + 1) - A085237 (n + 1)

end

end A134266.P6000030131475576738

/-! ## A134266.P5419373053853639603

`A361823(n+1)-A001223(A085500(n+1))`
-/

namespace A134266.P5419373053853639603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361823 (n + 1) - A001223 (A085500 (n + 1)).toNat

end

end A134266.P5419373053853639603

/-! ## A134266.P11511925810244932328

`A000040(∑[A348178(n+1)])`
-/

namespace A134266.P11511925810244932328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134266.P11511925810244932328

/-!
# A134267: a(n) = |A090964(n+1) - A090964(n)|.

The programs for A134267, the canonical program `A134267.P13358903498886235129` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134267 has offset 1).

The definition of A134267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134267.P13358903498886235129

`a(n-4)` with `a(0)=3, a(1)=2, a(2)=3, a(3)=2, a(4)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134267

/-- `a(n-4)` -/
def P13358903498886235129.Spec : Prop :=
  ∀ n, (P13358903498886235129.a n : ℤ) = A134267 (n + 1)

theorem P13358903498886235129.correct : P13358903498886235129.Spec := by
  intro n
  simp only [A134267, Nat.add_sub_cancel]

end A134267

/-!
# A134268: a(n+2) = sum_digits[a(n+1)] + sum_digits[a(n)] + sum_digits[a(n+1)]*sum_digits[a(n)], with a(0)=0, a(1)=1.

The programs for A134268, there is no canonical definition to state claims against.
-/

/-! ## A134268.P13657146120985717428

`∑[A143053(∑[A000225(n)])]`
-/

namespace A134268.P13657146120985717428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143053 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134268.P13657146120985717428

/-!
# A134269: Number of solutions to the equation p^k - p^(k-1) = n, where k is a positive integer and p is prime.

The programs for A134269, the canonical program `A134269.P13392884201192576431` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134269 has offset 1).

The definition of A134269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134269.P16916104487731141886

`∑{e}[A381887(n+1), #]`
-/

namespace A134269.P16916104487731141886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381887 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A134269.P16916104487731141886

namespace A134269

/-- `∑{e}[A381887(n+1), #]` -/
def P16916104487731141886.Spec : Prop :=
  ∀ n, (P16916104487731141886.a n : ℤ) = A134269 (n + 1)

end A134269

/-! ## A134269.P13392884201192576431

`∑{d}[n+1, floor(A000010(n+1+#)/(n+1))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134269

/-- `∑{d}[n+1, floor(A000010(n+1+#)/(n+1))]` -/
def P13392884201192576431.Spec : Prop :=
  ∀ n, P13392884201192576431.a n = A134269 (n + 1)

theorem P13392884201192576431.correct : P13392884201192576431.Spec := by
  intro n
  simp only [A134269, Nat.add_sub_cancel]

end A134269

/-! ## A134269.P12062505664947109635

`A001221(A381887(n+1))`
-/

namespace A134269.P12062505664947109635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A381887 (n + 1)).toNat

end

end A134269.P12062505664947109635

namespace A134269

/-- `A001221(A381887(n+1))` -/
def P12062505664947109635.Spec : Prop :=
  ∀ n, P12062505664947109635.a n = A134269 (n + 1)

end A134269

/-! ## A134269.P6077430882116903896

`A105700(A054977(n+4)*A381887(n+1))`
-/

namespace A134269.P6077430882116903896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A054977 (n + 4) * A381887 (n + 1)).toNat

end

end A134269.P6077430882116903896

namespace A134269

/-- `A105700(A054977(n+4)*A381887(n+1))` -/
def P6077430882116903896.Spec : Prop :=
  ∀ n, P6077430882116903896.a n = A134269 (n + 1)

end A134269

/-! ## A134269.P13940192775363334940

`A105700(A057427(n+4)*A381887(n+1))`
-/

namespace A134269.P13940192775363334940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A057427 (n + 4) * A381887 (n + 1)).toNat

end

end A134269.P13940192775363334940

namespace A134269

/-- `A105700(A057427(n+4)*A381887(n+1))` -/
def P13940192775363334940.Spec : Prop :=
  ∀ n, P13940192775363334940.a n = A134269 (n + 1)

end A134269

/-! ## A134269.P17616968281455106969

`A105700(A057979(2*(n+2))*A381887(n+1))`
-/

namespace A134269.P17616968281455106969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A057979 (2 * (n + 2)) * A381887 (n + 1)).toNat

end

end A134269.P17616968281455106969

namespace A134269

/-- `A105700(A057979(2*(n+2))*A381887(n+1))` -/
def P17616968281455106969.Spec : Prop :=
  ∀ n, P17616968281455106969.a n = A134269 (n + 1)

end A134269

/-! ## A134269.P17623799966590375752

`A105700(A381887(n+1))*A155457(n+1)`
-/

namespace A134269.P17623799966590375752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A381887 (n + 1)).toNat * A155457 (n + 1)

end

end A134269.P17623799966590375752

namespace A134269

/-- `A105700(A381887(n+1))*A155457(n+1)` -/
def P17623799966590375752.Spec : Prop :=
  ∀ n, P17623799966590375752.a n = A134269 (n + 1)

end A134269

/-!
# A134270: a(n)=2a(n-1)+a(n-2)-4a(n-4).

The programs for A134270, the canonical program `A134270.P14542421024884263104` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134270 has offset 0).

The definition of A134270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-4*a(n-4)` (program `A134270.P14542421024884263104`, by `A134270.P14542421024884263104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134270.P14542421024884263104

`2*a(n-1)+a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134270

/-- `2*a(n-1)+a(n-2)-4*a(n-4)` -/
def P14542421024884263104.Spec : Prop :=
  ∀ n, P14542421024884263104.a n = A134270 n

theorem P14542421024884263104.correct : P14542421024884263104.Spec := by
  intro n
  simp only [A134270]

end A134270

/-! ## A134270.P6010182903807926159

`ogf((1-x)/(1-2x-x^2+4x^4))`
-/

namespace A134270.P6010182903807926159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -1, 0, 4] n

end

end A134270.P6010182903807926159

namespace A134270

/-- `ogf((1-x)/(1-2x-x^2+4x^4))` -/
def P6010182903807926159.Spec : Prop :=
  ∀ n, P6010182903807926159.a n = A134270 n

end A134270

/-! ## A134270.P3240436965270695326

`2^n-A159284(n)`
-/

namespace A134270.P3240436965270695326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A159284 n

end

end A134270.P3240436965270695326

namespace A134270

/-- `2^n-A159284(n)` -/
def P3240436965270695326.Spec : Prop :=
  ∀ n, P3240436965270695326.a n = A134270 n

end A134270

/-! ## A134270.P10603726027640268601

`a(n-1)+A078026(n)+a(n-1)` with `a(0)=1`
-/

namespace A134270.P10603726027640268601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A078026 n + a (n - 1))

end

end A134270.P10603726027640268601

namespace A134270

/-- `a(n-1)+A078026(n)+a(n-1)` -/
def P10603726027640268601.Spec : Prop :=
  ∀ n, P10603726027640268601.a n = A134270 n

end A134270

/-! ## A134270.P1896519761527667060

`∑[A159286(n)+a(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A134270.P1896519761527667060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A159286 n + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134270.P1896519761527667060

namespace A134270

/-- `∑[A159286(n)+a(n-1)+a(n-1)]` -/
def P1896519761527667060.Spec : Prop :=
  ∀ n, P1896519761527667060.a n = A134270 n

end A134270

/-! ## A134270.P6555870222846708639

`A000079(n)-Δ[A159288(n)]`
-/

namespace A134270.P6555870222846708639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A134270.P6555870222846708639

namespace A134270

/-- `A000079(n)-Δ[A159288(n)]` -/
def P6555870222846708639.Spec : Prop :=
  ∀ n, P6555870222846708639.a n = A134270 n

end A134270

/-! ## A134270.P11065437572025533008

`A000051(n)-(A159284(n)+1)`
-/

namespace A134270.P11065437572025533008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A159284 n + 1)

end

end A134270.P11065437572025533008

namespace A134270

/-- `A000051(n)-(A159284(n)+1)` -/
def P11065437572025533008.Spec : Prop :=
  ∀ n, P11065437572025533008.a n = A134270 n

end A134270

/-! ## A134270.P7656958148558516508

`A000225(n)+1-A159284(n)`
-/

namespace A134270.P7656958148558516508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A159284 n)

end

end A134270.P7656958148558516508

namespace A134270

/-- `A000225(n)+1-A159284(n)` -/
def P7656958148558516508.Spec : Prop :=
  ∀ n, P7656958148558516508.a n = A134270 n

end A134270

/-! ## A134270.P18290487897904352130

`A000079(n)+A159288(n)-A159288(n+1)`
-/

namespace A134270.P18290487897904352130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A159288 n - A159288 (n + 1))

end

end A134270.P18290487897904352130

namespace A134270

/-- `A000079(n)+A159288(n)-A159288(n+1)` -/
def P18290487897904352130.Spec : Prop :=
  ∀ n, P18290487897904352130.a n = A134270 n

end A134270

/-!
# A134271: a(n) = a(n-2) + 2*a(n-3), n > 3; with a(0)=0, a(1)=1, a(2)=2, a(3)=0.

The programs for A134271, the canonical program `A134271.P3668654549743740295` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134271 has offset 0).

The definition of A134271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+2*a(n-3)` (program `A134271.P3668654549743740295`, by `A134271.P3668654549743740295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134271.P3668654549743740295

`a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134271

/-- `a(n-2)+2*a(n-3)` -/
def P3668654549743740295.Spec : Prop :=
  ∀ n, (P3668654549743740295.a n : ℤ) = A134271 n

theorem P3668654549743740295.correct : P3668654549743740295.Spec := by
  intro n
  simp only [A134271]

end A134271

/-! ## A134271.P9199157624729120597

`ogf((x+2x^2-x^3)/(1-x^2-2x^3))`
-/

namespace A134271.P9199157624729120597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -1] [1, 0, -1, -2] n

end

end A134271.P9199157624729120597

namespace A134271

/-- `ogf((x+2x^2-x^3)/(1-x^2-2x^3))` -/
def P9199157624729120597.Spec : Prop :=
  ∀ n, P9199157624729120597.a n = A134271 n

end A134271

/-! ## A134271.P16992548724937744197

`a(n-2)+a(n-3)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A134271.P16992548724937744197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0] fun n a =>
  a (n - 2) + (a (n - 3) + a (n - 3))

end

end A134271.P16992548724937744197

namespace A134271

/-- `a(n-2)+a(n-3)+a(n-3)` -/
def P16992548724937744197.Spec : Prop :=
  ∀ n, (P16992548724937744197.a n : ℤ) = A134271 n

theorem P16992548724937744197.correct : P16992548724937744197.Spec := by
  intro n
  simp only [A134271, Nat.add_sub_cancel, A134271.P16992548724937744197.a, A134271.P3668654549743740295.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134271

/-! ## A134271.P10697328083165158448

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A134271.P10697328083165158448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 0] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A134271.P10697328083165158448

namespace A134271

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P10697328083165158448.Spec : Prop :=
  ∀ n, P10697328083165158448.a n = A134271 n

end A134271

/-! ## A134271.P17535542039012149641

`A052947(n+1)-A159287(abs(1-n))`
-/

namespace A134271.P17535542039012149641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 1) - A159287 |1 - (n : ℤ)|.toNat

end

end A134271.P17535542039012149641

namespace A134271

/-- `A052947(n+1)-A159287(abs(1-n))` -/
def P17535542039012149641.Spec : Prop :=
  ∀ n, P17535542039012149641.a n = A134271 n

end A134271

/-! ## A134271.P12865101179107313232

`A159284(lcm(1-n, n-1))+Δ[A052947(n)]`
-/

namespace A134271.P12865101179107313232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1)) + (f1 (n + 1) - f1 n)

end

end A134271.P12865101179107313232

namespace A134271

/-- `A159284(lcm(1-n, n-1))+Δ[A052947(n)]` -/
def P12865101179107313232.Spec : Prop :=
  ∀ n, P12865101179107313232.a n = A134271 n

end A134271

/-!
# A134272: Alternating row sums of triangle A134151.

The programs for A134272, there is no canonical definition to state claims against.
-/

/-! ## A134272.P7483994757639646208

`∑[A024620(A279554(2*n))-1]`
-/

namespace A134272.P7483994757639646208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (A279554 (2 * n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134272.P7483994757639646208

/-!
# A134273: A certain partition array in Abramowitz-Stegun order (A-St order), called M_3(5).

The programs for A134273, there is no canonical definition to state claims against.
-/

/-! ## A134273.P17629367963987888796

`A036040(n+1)*A134274(n+1)`
-/

namespace A134273.P17629367963987888796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A134274 (n + 1)

end

end A134273.P17629367963987888796

/-! ## A134273.P10809152230254859650

`A124794(A185974(n+1))*A134274(n+1)`
-/

namespace A134273.P10809152230254859650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A134274 (n + 1)

end

end A134273.P10809152230254859650

/-! ## A134273.P4282493794217294584

`A036038(n+1)/A096162(n+1)*A134274(n+1)`
-/

namespace A134273.P4282493794217294584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A134274 (n + 1) : ℚ)

end

end A134273.P4282493794217294584

/-! ## A134273.P8913949239295332011

`A036039(n+1)/A107106(n+1)*A134274(n+1)`
-/

namespace A134273.P8913949239295332011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A134274 (n + 1) : ℚ)

end

end A134273.P8913949239295332011

/-! ## A134273.P12517626086489047289

`A122454(n+1)/A098546(n+1)*A134274(n+1)`
-/

namespace A134273.P12517626086489047289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A134274 (n + 1) : ℚ)

end

end A134273.P12517626086489047289

/-!
# A134274: A certain partition array in Abramowitz-Stegun order (A-St order), called M_3(5)/M_3.

The programs for A134274, there is no canonical definition to state claims against.
-/

/-! ## A134274.P2173051086066965496

`A134273(n+1)/A036040(n+1)`
-/

namespace A134274.P2173051086066965496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134273 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A134274.P2173051086066965496

/-! ## A134274.P12104086055549551070

`A134273(n+1)/A124794(A185974(n+1))`
-/

namespace A134274.P12104086055549551070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134273 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A134274.P12104086055549551070

/-! ## A134274.P16781323440340392639

`A107106(n+1)/A036039(n+1)*A134273(n+1)`
-/

namespace A134274.P16781323440340392639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A134273 (n + 1) : ℚ)

end

end A134274.P16781323440340392639

/-! ## A134274.P1220369641899297903

`A134273(n+1)/A049019(n+1)*A178803(n+1)`
-/

namespace A134274.P1220369641899297903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134273 (n + 1) : ℚ) / (A049019 (n + 1) : ℚ) * (A178803 (n + 1) : ℚ)

end

end A134274.P1220369641899297903

/-! ## A134274.P4957527450533322630

`A134133(n+1)/A130561(n+1)*A134273(n+1)`
-/

namespace A134274.P4957527450533322630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A134273 (n + 1) : ℚ)

end

end A134274.P4957527450533322630

/-!
# A134275: Triangle of numbers obtained from the partition array A134274.

The programs for A134275, there is no canonical definition to state claims against.
-/

/-! ## A134275.P3052277370703945595

`A110026(A142048(n))`
-/

namespace A134275.P3052277370703945595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (A142048 n).toNat

end

end A134275.P3052277370703945595

/-! ## A134275.P11013397649732924433

`A134274(A024647(n+1))`
-/

namespace A134275.P11013397649732924433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134274 (A024647 (n + 1)).toNat

end

end A134275.P11013397649732924433

/-! ## A134275.P6376356648770811777

`A134274(A024648(n+1))`
-/

namespace A134275.P6376356648770811777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134274 (A024648 (n + 1)).toNat

end

end A134275.P6376356648770811777

/-!
# A134278: A certain partition array in Abramowitz-Stegun order (A-St order), called M_3(6).

The programs for A134278, there is no canonical definition to state claims against.
-/

/-! ## A134278.P5971930853659211786

`A036040(n+1)*A134279(n+1)`
-/

namespace A134278.P5971930853659211786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A134279 (n + 1)

end

end A134278.P5971930853659211786

/-! ## A134278.P10976596196970991130

`A124794(A185974(n+1))*A134279(n+1)`
-/

namespace A134278.P10976596196970991130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A134279 (n + 1)

end

end A134278.P10976596196970991130

/-! ## A134278.P16367898108672618407

`A036038(n+1)/A096162(n+1)*A134279(n+1)`
-/

namespace A134278.P16367898108672618407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A134279 (n + 1) : ℚ)

end

end A134278.P16367898108672618407

/-! ## A134278.P15790973698521304530

`A036039(n+1)/A107106(n+1)*A134279(n+1)`
-/

namespace A134278.P15790973698521304530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A134279 (n + 1) : ℚ)

end

end A134278.P15790973698521304530

/-! ## A134278.P469572519728585326

`A122454(n+1)/A098546(n+1)*A134279(n+1)`
-/

namespace A134278.P469572519728585326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A134279 (n + 1) : ℚ)

end

end A134278.P469572519728585326

/-!
# A134279: A certain partition array in Abramowitz-Stegun order (A-St order), called M_3(6)/M_3.

The programs for A134279, there is no canonical definition to state claims against.
-/

/-! ## A134279.P7450698946077971239

`A134278(n+1)/A036040(n+1)`
-/

namespace A134279.P7450698946077971239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134278 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A134279.P7450698946077971239

/-! ## A134279.P2102392004420146305

`A134278(n+1)/A124794(A185974(n+1))`
-/

namespace A134279.P2102392004420146305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134278 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A134279.P2102392004420146305

/-! ## A134279.P5589252142060935249

`A107106(n+1)/A036039(n+1)*A134278(n+1)`
-/

namespace A134279.P5589252142060935249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A134278 (n + 1) : ℚ)

end

end A134279.P5589252142060935249

/-! ## A134279.P10976748958704613755

`A134133(n+1)/A130561(n+1)*A134278(n+1)`
-/

namespace A134279.P10976748958704613755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A134278 (n + 1) : ℚ)

end

end A134279.P10976748958704613755

/-! ## A134279.P12454199595095806083

`A134274(n+1)/A134273(n+1)*A134278(n+1)`
-/

namespace A134279.P12454199595095806083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134274 (n + 1) : ℚ) / (A134273 (n + 1) : ℚ) * (A134278 (n + 1) : ℚ)

end

end A134279.P12454199595095806083

/-!
# A134280: Triangle of numbers obtained from the partition array A134279.

The programs for A134280, there is no canonical definition to state claims against.
-/

/-! ## A134280.P11850059088016227331

`A134279(A024647(n+1))`
-/

namespace A134280.P11850059088016227331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134279 (A024647 (n + 1)).toNat

end

end A134280.P11850059088016227331

/-! ## A134280.P11309914215909787759

`A134279(A024648(n+1))`
-/

namespace A134280.P11309914215909787759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134279 (A024648 (n + 1)).toNat

end

end A134280.P11309914215909787759

/-! ## A134280.P1258657939887596751

`A134279(A024649(n+1))`
-/

namespace A134280.P1258657939887596751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134279 (A024649 (n + 1)).toNat

end

end A134280.P1258657939887596751

/-!
# A134281: Row sums of triangle A134280 (S2(6)').

The programs for A134281, there is no canonical definition to state claims against.
-/

/-! ## A134281.P8243049394700106522

`A241506(A063915(2*n+1))-A049797(n+1)`
-/

namespace A134281.P8243049394700106522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 (A063915 (2 * n + 1)).toNat - A049797 (n + 1)

end

end A134281.P8243049394700106522

/-!
# A134283: A certain partition array in Abramowitz-Stegun (A-St)order, called M_0(3).

The programs for A134283, there is no canonical definition to state claims against.
-/

/-! ## A134283.P1244009220495591285

`A048996(n+1)*A134284(n+1)`
-/

namespace A134283.P1244009220495591285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 (n + 1) * A134284 (n + 1)

end

end A134283.P1244009220495591285

/-! ## A134283.P4512163428142822917

`abs(A111786(n+1)*A134284(n+1))`
-/

namespace A134283.P4512163428142822917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111786 (n + 1) * A134284 (n + 1)|

end

end A134283.P4512163428142822917

/-!
# A134284: A certain partition array in Abramowitz-Stegun order (A-St order), called M_0(3)/M_0.

The programs for A134284, there is no canonical definition to state claims against.
-/

/-! ## A134284.P14300816459938359274

`A134283(n+1)/A048996(n+1)`
-/

namespace A134284.P14300816459938359274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134283 (n + 1) : ℚ) / (A048996 (n + 1) : ℚ)

end

end A134284.P14300816459938359274

/-! ## A134284.P13541344378246842627

`abs(A134283(n+1)/A111786(n+1))`
-/

namespace A134284.P13541344378246842627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A134283 (n + 1) : ℚ) / (A111786 (n + 1) : ℚ)|

end

end A134284.P13541344378246842627

/-!
# A134286: Characteristic sequence for sequence A026905.

The programs for A134286, there is no canonical definition to state claims against.
-/

/-! ## A134286.P16718360881833664794

`char[A000070(n)-2]`
-/

namespace A134286.P16718360881833664794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P16718360881833664794

/-! ## A134286.P16266475065281204639

`char[A025065(n)-2]`
-/

namespace A134286.P16266475065281204639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P16266475065281204639

/-! ## A134286.P1081882028489555863

`A225620(n+1)%2`
-/

namespace A134286.P1081882028489555863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225620 (n + 1)) 2

end

end A134286.P1081882028489555863

/-! ## A134286.P2718371255884785530

`A049019(n+2)%2`
-/

namespace A134286.P2718371255884785530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049019 (n + 2)) 2

end

end A134286.P2718371255884785530

/-! ## A134286.P3798356042106039563

`char[∑[A132825(n+2)]]`
-/

namespace A134286.P3798356042106039563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132825 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P3798356042106039563

/-! ## A134286.P8716377672699157339

`char[∑[A000041(n)]-2]`
-/

namespace A134286.P8716377672699157339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P8716377672699157339

/-! ## A134286.P10337345285857248566

`char[∑[A035363(n+3)]]`
-/

namespace A134286.P10337345285857248566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P10337345285857248566

/-! ## A134286.P14885901857669552625

`char[∑[A035363(n)]-2]`
-/

namespace A134286.P14885901857669552625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P14885901857669552625

/-! ## A134286.P13463119531040904439

`char[∑[A035377(n)]-2]`
-/

namespace A134286.P13463119531040904439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P13463119531040904439

/-! ## A134286.P850314160524898846

`char[∑[A035444(n)]-2]`
-/

namespace A134286.P850314160524898846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P850314160524898846

/-! ## A134286.P15699684570967175770

`char[∑[A174712(n+3)]]`
-/

namespace A134286.P15699684570967175770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P15699684570967175770

/-! ## A134286.P3699117483430389355

`char[∑[A174712(n)]-2]`
-/

namespace A134286.P3699117483430389355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P3699117483430389355

/-! ## A134286.P11924916693351577275

`char[∑[A213598(n)]-2]`
-/

namespace A134286.P11924916693351577275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P11924916693351577275

/-! ## A134286.P8186134872331611599

`char[∑[A330643(n)]-2]`
-/

namespace A134286.P8186134872331611599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P8186134872331611599

/-! ## A134286.P5209207018297100874

`floor(1/A049085(n+1))`
-/

namespace A134286.P5209207018297100874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A049085 (n + 1) : ℚ)⌋

end

end A134286.P5209207018297100874

/-! ## A134286.P16722328323323939676

`char[A026905(n+1)-1]`
-/

namespace A134286.P16722328323323939676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P16722328323323939676

/-! ## A134286.P17735859657154842156

`char[A058682(n+1)+n]`
-/

namespace A134286.P17735859657154842156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P17735859657154842156

/-! ## A134286.P6708081335594799027

`char[∑[A103919(∑[n])]-2]`
-/

namespace A134286.P6708081335594799027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P6708081335594799027

/-! ## A134286.P4883928235751314979

`char[a(n-1)+A000041(n-1)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A134286.P4883928235751314979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 1) + A000041 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134286.P4883928235751314979

/-! ## A134286.P3818332168880806719

`A069123(n+1)%2`
-/

namespace A134286.P3818332168880806719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069123 (n + 1)) 2

end

end A134286.P3818332168880806719

/-!
# A134287: Fifth column of triangle A103371 (without leading zeros).

The programs for A134287, the canonical program `A134287.P73250964200486919` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134287 has offset 0).

The definition of A134287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134287.P73250964200486919

`C(n+4, 4)²*(n+5)/5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134287

/-- `C(n+4, 4)²*(n+5)/5` -/
def P73250964200486919.Spec : Prop :=
  ∀ n, P73250964200486919.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P15015305887172801394

`(C(n+6, 6)*C(n+5, 4)+5*C(n+5, 6)*C(n+5, 4))/(n+5)`
-/

namespace A134287.P15015305887172801394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 * Nat.choose (n + 5) 4 + 5 * Nat.choose (n + 5) 6 * Nat.choose (n + 5) 4 : ℚ) / (n + 5 : ℚ)

end

end A134287.P15015305887172801394

namespace A134287

/-- `(C(n+6, 6)*C(n+5, 4)+5*C(n+5, 6)*C(n+5, 4))/(n+5)` -/
def P15015305887172801394.Spec : Prop :=
  ∀ n, P15015305887172801394.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P9263276605939292435

`C(n+4, 4)*C(n+5, 5)`
-/

namespace A134287.P9263276605939292435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 * Nat.choose (n + 5) 5

end

end A134287.P9263276605939292435

namespace A134287

/-- `C(n+4, 4)*C(n+5, 5)` -/
def P9263276605939292435.Spec : Prop :=
  ∀ n, (P9263276605939292435.a n : ℤ) = A134287 n

end A134287

/-! ## A134287.P10635126863370046453

`∑[∑[∑[n+1]]]*∑[∑[∑[∑[n+1]]]]`
-/

namespace A134287.P10635126863370046453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A134287.P10635126863370046453

namespace A134287

/-- `∑[∑[∑[n+1]]]*∑[∑[∑[∑[n+1]]]]` -/
def P10635126863370046453.Spec : Prop :=
  ∀ n, (P10635126863370046453.a n : ℤ) = A134287 n

end A134287

/-! ## A134287.P4890041707974698285

`lcm(n+1, (n+1)*A006857(n))`
-/

namespace A134287.P4890041707974698285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * A006857 n)

end

end A134287.P4890041707974698285

namespace A134287

/-- `lcm(n+1, (n+1)*A006857(n))` -/
def P4890041707974698285.Spec : Prop :=
  ∀ n, (P4890041707974698285.a n : ℤ) = A134287 n

end A134287

/-! ## A134287.P7835185744243073088

`abs(A001478(n+1)*A006857(n))`
-/

namespace A134287.P7835185744243073088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001478 (n + 1) * A006857 n|

end

end A134287.P7835185744243073088

namespace A134287

/-- `abs(A001478(n+1)*A006857(n))` -/
def P7835185744243073088.Spec : Prop :=
  ∀ n, P7835185744243073088.a n = A134287 n

end A134287

/-! ## A134287.P10446394290602051707

`lcm((n+1)*A006857(n), A160357(n))`
-/

namespace A134287.P10446394290602051707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) * A006857 n) (A160357 n)

end

end A134287.P10446394290602051707

namespace A134287

/-- `lcm((n+1)*A006857(n), A160357(n))` -/
def P10446394290602051707.Spec : Prop :=
  ∀ n, (P10446394290602051707.a n : ℤ) = A134287 n

end A134287

/-! ## A134287.P13474208005317496911

`(n+1)*A006857(n)/A034947(n+1)²`
-/

namespace A134287.P13474208005317496911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) / (A034947 (n + 1) ^ 2 : ℚ)

end

end A134287.P13474208005317496911

namespace A134287

/-- `(n+1)*A006857(n)/A034947(n+1)²` -/
def P13474208005317496911.Spec : Prop :=
  ∀ n, P13474208005317496911.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P16300247826200461186

`A002265(and(3, n-1))+(n+1)*A006857(n)`
-/

namespace A134287.P16300247826200461186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.land 3 ((n : ℤ) - 1)).toNat + (n + 1 : ℤ) * A006857 n

end

end A134287.P16300247826200461186

namespace A134287

/-- `A002265(and(3, n-1))+(n+1)*A006857(n)` -/
def P16300247826200461186.Spec : Prop :=
  ∀ n, P16300247826200461186.a n = A134287 n

end A134287

/-! ## A134287.P14137858668597790449

`((n+1)*A006857(n))^A003415(A020639(n+1))`
-/

namespace A134287.P14137858668597790449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) ^ (A003415 (A020639 (n + 1)).toNat : ℤ)

end

end A134287.P14137858668597790449

namespace A134287

/-- `((n+1)*A006857(n))^A003415(A020639(n+1))` -/
def P14137858668597790449.Spec : Prop :=
  ∀ n, P14137858668597790449.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P166856439455779105

`(n+1)*A006857(n)/A328580(2*(n+1))`
-/

namespace A134287.P166856439455779105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) / (A328580 (2 * (n + 1)) : ℚ)

end

end A134287.P166856439455779105

namespace A134287

/-- `(n+1)*A006857(n)/A328580(2*(n+1))` -/
def P166856439455779105.Spec : Prop :=
  ∀ n, P166856439455779105.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P13658004060274338637

`(n+1)*A006857(n)/A001222(A002476(n+1))`
-/

namespace A134287.P13658004060274338637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) / (A001222 (A002476 (n + 1)).toNat : ℚ)

end

end A134287.P13658004060274338637

namespace A134287

/-- `(n+1)*A006857(n)/A001222(A002476(n+1))` -/
def P13658004060274338637.Spec : Prop :=
  ∀ n, P13658004060274338637.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P13775059083069553765

`(n+1)*A006857(n)/A112622(A015919(n+1))`
-/

namespace A134287.P13775059083069553765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) / (A112622 (A015919 (n + 1)).toNat : ℚ)

end

end A134287.P13775059083069553765

namespace A134287

/-- `(n+1)*A006857(n)/A112622(A015919(n+1))` -/
def P13775059083069553765.Spec : Prop :=
  ∀ n, P13775059083069553765.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P18040980037819534116

`(n+1)*A006857(n)/A112621(A000040(Δ[n²]-n))`
-/

namespace A134287.P18040980037819534116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) / (A112621 (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℚ)

end

end A134287.P18040980037819534116

namespace A134287

/-- `(n+1)*A006857(n)/A112621(A000040(Δ[n²]-n))` -/
def P18040980037819534116.Spec : Prop :=
  ∀ n, P18040980037819534116.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P8100510682047540683

`(n+1)*A006857(n)/A003415(A000040(n+2))`
-/

namespace A134287.P8100510682047540683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) / (A003415 (A000040 (n + 2)).toNat : ℚ)

end

end A134287.P8100510682047540683

namespace A134287

/-- `(n+1)*A006857(n)/A003415(A000040(n+2))` -/
def P8100510682047540683.Spec : Prop :=
  ∀ n, P8100510682047540683.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P14635765564213002962

`(n+1)*A006857(n)/A001222(A064983(n))`
-/

namespace A134287.P14635765564213002962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006857 n : ℚ) / (A001222 (A064983 n).toNat : ℚ)

end

end A134287.P14635765564213002962

namespace A134287

/-- `(n+1)*A006857(n)/A001222(A064983(n))` -/
def P14635765564213002962.Spec : Prop :=
  ∀ n, P14635765564213002962.a n = (A134287 n : ℚ)

end A134287

/-! ## A134287.P13858431943605324713

`record[A213548(n+1)*A213551(n+1)]`
-/

namespace A134287.P13858431943605324713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) * A213551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134287.P13858431943605324713

namespace A134287

/-- `record[A213548(n+1)*A213551(n+1)]` -/
def P13858431943605324713.Spec : Prop :=
  ∀ n, P13858431943605324713.a n = A134287 n

end A134287

/-! ## A134287.P1673396798810453970

`record[A213550(n+1)*A213551(n+1)]`
-/

namespace A134287.P1673396798810453970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1) * A213551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134287.P1673396798810453970

namespace A134287

/-- `record[A213550(n+1)*A213551(n+1)]` -/
def P1673396798810453970.Spec : Prop :=
  ∀ n, P1673396798810453970.a n = A134287 n

end A134287

/-! ## A134287.P14494697912087070324

`A103371(A000096(n+3)+5)`
-/

namespace A134287.P14494697912087070324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 (A000096 (n + 3) + 5).toNat

end

end A134287.P14494697912087070324

namespace A134287

/-- `A103371(A000096(n+3)+5)` -/
def P14494697912087070324.Spec : Prop :=
  ∀ n, P14494697912087070324.a n = A134287 n

end A134287

/-! ## A134287.P15733837628267908841

`A103371(eq[5, A002260(n+1)])`
-/

namespace A134287.P15733837628267908841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134287.P15733837628267908841

namespace A134287

/-- `A103371(eq[5, A002260(n+1)])` -/
def P15733837628267908841.Spec : Prop :=
  ∀ n, P15733837628267908841.a n = A134287 n

end A134287

/-!
# A134288: a(n) = binomial(n+7,7)*binomial(n+7,6)/(n+7).

The programs for A134288, the canonical program `A134288.P6251414703554722772` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134288 has offset 0).

The definition of A134288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134288.P4417740040542598863

`C(n+7, 7)*C(n+6, 5)/6`
-/

namespace A134288.P4417740040542598863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 * Nat.choose (n + 6) 5 : ℚ) / 6

end

end A134288.P4417740040542598863

namespace A134288

/-- `C(n+7, 7)*C(n+6, 5)/6` -/
def P4417740040542598863.Spec : Prop :=
  ∀ n, P4417740040542598863.a n = (A134288 n : ℚ)

end A134288

/-! ## A134288.P1984489581138698953

`C(n+7, 7)*C(n+7, 6)/(n+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134288.P1984489581138698953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 * Nat.choose (n + 7) 6 : ℚ) / (n + 7 : ℚ)

end

end A134288.P1984489581138698953

namespace A134288

/-- `C(n+7, 7)*C(n+7, 6)/(n+7)` -/
def P1984489581138698953.Spec : Prop :=
  ∀ n, P1984489581138698953.a n = (A134288 n : ℚ)

end A134288

/-! ## A134288.P6251414703554722772

`C(n+6, 6)²-C(n+6, 5)*C(n+6, 7)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134288

/-- `C(n+6, 6)²-C(n+6, 5)*C(n+6, 7)` -/
def P6251414703554722772.Spec : Prop :=
  ∀ n, P6251414703554722772.a n = A134288 n

theorem P6251414703554722772.correct : P6251414703554722772.Spec := by
  intro n
  simp only [A134288]

end A134288

/-! ## A134288.P8662374364375988062

`a(n-1)*A000217(n+6)/A000217(n)` with `a(0)=1`
-/

namespace A134288.P8662374364375988062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A000217 (n + 6) : ℚ) / (A000217 n : ℚ)

end

end A134288.P8662374364375988062

namespace A134288

/-- `a(n-1)*A000217(n+6)/A000217(n)` -/
def P8662374364375988062.Spec : Prop :=
  ∀ n, P8662374364375988062.a n = (A134288 n : ℚ)

end A134288

/-! ## A134288.P18081671357375244738

`A006542(n+4)/A047819(n)*A140901(n)`
-/

namespace A134288.P18081671357375244738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006542 (n + 4) : ℚ) / (A047819 n : ℚ) * (A140901 n : ℚ)

end

end A134288.P18081671357375244738

namespace A134288

/-- `A006542(n+4)/A047819(n)*A140901(n)` -/
def P18081671357375244738.Spec : Prop :=
  ∀ n, P18081671357375244738.a n = (A134288 n : ℚ)

end A134288

/-! ## A134288.P10719475279068562424

`A000580(n+7)/A001787(n+1)*A002409(n)`
-/

namespace A134288.P10719475279068562424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) / (A001787 (n + 1) : ℚ) * (A002409 n : ℚ)

end

end A134288.P10719475279068562424

namespace A134288

/-- `A000580(n+7)/A001787(n+1)*A002409(n)` -/
def P10719475279068562424.Spec : Prop :=
  ∀ n, P10719475279068562424.a n = (A134288 n : ℚ)

end A134288

/-! ## A134288.P5927286868285137483

`A001263(A374008(n+1))`
-/

namespace A134288.P5927286868285137483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A374008 (n + 1)).toNat

end

end A134288.P5927286868285137483

namespace A134288

/-- `A001263(A374008(n+1))` -/
def P5927286868285137483.Spec : Prop :=
  ∀ n, P5927286868285137483.a n = A134288 n

end A134288

/-! ## A134288.P17343746772937720335

`A001263(A056119(n)+28)`
-/

namespace A134288.P17343746772937720335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A056119 n + 28).toNat

end

end A134288.P17343746772937720335

namespace A134288

/-- `A001263(A056119(n)+28)` -/
def P17343746772937720335.Spec : Prop :=
  ∀ n, P17343746772937720335.a n = A134288 n

end A134288

/-! ## A134288.P16949697378513637396

`A001263(A000124(n+6)+6)`
-/

namespace A134288.P16949697378513637396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 (n + 6) + 6).toNat

end

end A134288.P16949697378513637396

namespace A134288

/-- `A001263(A000124(n+6)+6)` -/
def P16949697378513637396.Spec : Prop :=
  ∀ n, P16949697378513637396.a n = A134288 n

end A134288

/-! ## A134288.P18195128230903240379

`A001263(A000217(n+6)+7)`
-/

namespace A134288.P18195128230903240379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000217 (n + 6) + 7).toNat

end

end A134288.P18195128230903240379

namespace A134288

/-- `A001263(A000217(n+6)+7)` -/
def P18195128230903240379.Spec : Prop :=
  ∀ n, P18195128230903240379.a n = A134288 n

end A134288

/-! ## A134288.P7070420483086203300

`A001263(A055999(n+4))`
-/

namespace A134288.P7070420483086203300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A055999 (n + 4)).toNat

end

end A134288.P7070420483086203300

namespace A134288

/-- `A001263(A055999(n+4))` -/
def P7070420483086203300.Spec : Prop :=
  ∀ n, P7070420483086203300.a n = A134288 n

end A134288

/-! ## A134288.P5986041721652808275

`A001263(Δ[A026054(n+4)])`
-/

namespace A134288.P5986041721652808275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (f1 (n + 1) - f1 n).toNat

end

end A134288.P5986041721652808275

namespace A134288

/-- `A001263(Δ[A026054(n+4)])` -/
def P5986041721652808275.Spec : Prop :=
  ∀ n, P5986041721652808275.a n = A134288 n

end A134288

/-! ## A134288.P8323740298729253050

`A001263(A000096(n+6)-5)`
-/

namespace A134288.P8323740298729253050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000096 (n + 6) - 5).toNat

end

end A134288.P8323740298729253050

namespace A134288

/-- `A001263(A000096(n+6)-5)` -/
def P8323740298729253050.Spec : Prop :=
  ∀ n, P8323740298729253050.a n = A134288 n

end A134288

/-! ## A134288.P6666942414265466916

`A001263(eq[6, A025581(n)]+1)`
-/

namespace A134288.P6666942414265466916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A134288.P6666942414265466916

namespace A134288

/-- `A001263(eq[6, A025581(n)]+1)` -/
def P6666942414265466916.Spec : Prop :=
  ∀ n, P6666942414265466916.a n = A134288 n

end A134288

/-!
# A134289: Eighth column (and diagonal) of Narayana triangle A001263.

The programs for A134289, the canonical program `A134289.P1640963137435226805` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134289 has offset 0).

The definition of A134289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134289.P1640963137435226805

`C(n+8, 8)*C(n+7, 6)/7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134289

/-- `C(n+8, 8)*C(n+7, 6)/7` -/
def P1640963137435226805.Spec : Prop :=
  ∀ n, P1640963137435226805.a n = (A134289 n : ℚ)

end A134289

/-! ## A134289.P1726105113541714635

`C(n+7, 7)²-C(n+7, 6)*C(n+7, 8)`
-/

namespace A134289.P1726105113541714635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 ^ 2 : ℤ) - (Nat.choose (n + 7) 6 * Nat.choose (n + 7) 8 : ℤ)

end

end A134289.P1726105113541714635

namespace A134289

/-- `C(n+7, 7)²-C(n+7, 6)*C(n+7, 8)` -/
def P1726105113541714635.Spec : Prop :=
  ∀ n, P1726105113541714635.a n = A134289 n

end A134289

/-! ## A134289.P12569014532748764136

`A000580(n+7)/(n+1)*∑[A000580(n+7)]`
-/

namespace A134289.P12569014532748764136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A134289.P12569014532748764136

namespace A134289

/-- `A000580(n+7)/(n+1)*∑[A000580(n+7)]` -/
def P12569014532748764136.Spec : Prop :=
  ∀ n, P12569014532748764136.a n = (A134289 n : ℚ)

end A134289

/-! ## A134289.P8069119745402384684

`A006542(n+4)/A107915(n)*A140902(n)`
-/

namespace A134289.P8069119745402384684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006542 (n + 4) : ℚ) / (A107915 n : ℚ) * (A140902 n : ℚ)

end

end A134289.P8069119745402384684

namespace A134289

/-- `A006542(n+4)/A107915(n)*A140902(n)` -/
def P8069119745402384684.Spec : Prop :=
  ∀ n, P8069119745402384684.a n = (A134289 n : ℚ)

end A134289

/-! ## A134289.P16609359987104479029

`A000580(n+7)/8*A000580(n+8)`
-/

namespace A134289.P16609359987104479029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) / 8 * (A000580 (n + 8) : ℚ)

end

end A134289.P16609359987104479029

namespace A134289

/-- `A000580(n+7)/8*A000580(n+8)` -/
def P16609359987104479029.Spec : Prop :=
  ∀ n, P16609359987104479029.a n = (A134289 n : ℚ)

end A134289

/-! ## A134289.P17236580085085624719

`A001263(A374009(n+1))`
-/

namespace A134289.P17236580085085624719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A374009 (n + 1)).toNat

end

end A134289.P17236580085085624719

namespace A134289

/-- `A001263(A374009(n+1))` -/
def P17236580085085624719.Spec : Prop :=
  ∀ n, P17236580085085624719.a n = A134289 n

end A134289

/-! ## A134289.P13669600809831584846

`A001263(A167614(n+6)+5)`
-/

namespace A134289.P13669600809831584846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A167614 (n + 6) + 5).toNat

end

end A134289.P13669600809831584846

namespace A134289

/-- `A001263(A167614(n+6)+5)` -/
def P13669600809831584846.Spec : Prop :=
  ∀ n, P13669600809831584846.a n = A134289 n

end A134289

/-! ## A134289.P7959541814725152869

`A001263(A000217(n+7)+8)`
-/

namespace A134289.P7959541814725152869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000217 (n + 7) + 8).toNat

end

end A134289.P7959541814725152869

namespace A134289

/-- `A001263(A000217(n+7)+8)` -/
def P7959541814725152869.Spec : Prop :=
  ∀ n, P7959541814725152869.a n = A134289 n

end A134289

/-! ## A134289.P7300607932681134805

`A001263(C(n+8, 2)+1+n)`
-/

namespace A134289.P7300607932681134805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (Nat.choose (n + 8) 2 + 1 + n)

end

end A134289.P7300607932681134805

namespace A134289

/-- `A001263(C(n+8, 2)+1+n)` -/
def P7300607932681134805.Spec : Prop :=
  ∀ n, P7300607932681134805.a n = A134289 n

end A134289

/-! ## A134289.P16472118541958546483

`A001263(A000124(n+8)-8)`
-/

namespace A134289.P16472118541958546483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 (n + 8) - 8).toNat

end

end A134289.P16472118541958546483

namespace A134289

/-- `A001263(A000124(n+8)-8)` -/
def P16472118541958546483.Spec : Prop :=
  ∀ n, P16472118541958546483.a n = A134289 n

end A134289

/-! ## A134289.P17364239369770192303

`A090181(A000217(n+9)-(n+1))`
-/

namespace A134289.P17364239369770192303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A134289.P17364239369770192303

namespace A134289

/-- `A090181(A000217(n+9)-(n+1))` -/
def P17364239369770192303.Spec : Prop :=
  ∀ n, P17364239369770192303.a n = A134289 n

end A134289

/-! ## A134289.P6181928083654650772

`A001263(A167487(n+5)+A005408(n))`
-/

namespace A134289.P6181928083654650772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A167487 (n + 5) + A005408 n).toNat

end

end A134289.P6181928083654650772

namespace A134289

/-- `A001263(A167487(n+5)+A005408(n))` -/
def P6181928083654650772.Spec : Prop :=
  ∀ n, P6181928083654650772.a n = A134289 n

end A134289

/-! ## A134289.P7184877166349852926

`A001263(A005891(n+12)%A028387(n+12))`
-/

namespace A134289.P7184877166349852926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (Int.tmod (A005891 (n + 12)) (A028387 (n + 12))).toNat

end

end A134289.P7184877166349852926

namespace A134289

/-- `A001263(A005891(n+12)%A028387(n+12))` -/
def P7184877166349852926.Spec : Prop :=
  ∀ n, P7184877166349852926.a n = A134289 n

end A134289

/-!
# A134290: Ninth column (and diagonal) of Narayana triangle A001263.

The programs for A134290, the canonical program `A134290.P127976382211200620` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134290 has offset 0).

The definition of A134290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134290.P127976382211200620

`C(n+9, 9)*C(n+8, 7)/8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134290

/-- `C(n+9, 9)*C(n+8, 7)/8` -/
def P127976382211200620.Spec : Prop :=
  ∀ n, P127976382211200620.a n = (A134290 n : ℚ)

end A134290

/-! ## A134290.P5564593056642632445

`A000581(n+8)/(n+1)*∑[A000581(n+8)]`
-/

namespace A134290.P5564593056642632445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A134290.P5564593056642632445

namespace A134290

/-- `A000581(n+8)/(n+1)*∑[A000581(n+8)]` -/
def P5564593056642632445.Spec : Prop :=
  ∀ n, P5564593056642632445.a n = (A134290 n : ℚ)

end A134290

/-! ## A134290.P3314672485854392677

`A000581(n+8)²/∑[A000580(n+7)/A000582(n+9)]`
-/

namespace A134290.P3314672485854392677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) / (A000582 (n + 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) ^ 2 : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134290.P3314672485854392677

namespace A134290

/-- `A000581(n+8)²/∑[A000580(n+7)/A000582(n+9)]` -/
def P3314672485854392677.Spec : Prop :=
  ∀ n, P3314672485854392677.a n = (A134290 n : ℚ)

end A134290

/-! ## A134290.P11580435679528720661

`A000580(n+8)/8*A000582(n+9)`
-/

namespace A134290.P11580435679528720661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 8) : ℚ) / 8 * (A000582 (n + 9) : ℚ)

end

end A134290.P11580435679528720661

namespace A134290

/-- `A000580(n+8)/8*A000582(n+9)` -/
def P11580435679528720661.Spec : Prop :=
  ∀ n, P11580435679528720661.a n = (A134290 n : ℚ)

end A134290

/-! ## A134290.P15343159594234367775

`A001263(A374010(n+1))`
-/

namespace A134290.P15343159594234367775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A374010 (n + 1)).toNat

end

end A134290.P15343159594234367775

namespace A134290

/-- `A001263(A374010(n+1))` -/
def P15343159594234367775.Spec : Prop :=
  ∀ n, P15343159594234367775.a n = A134290 n

end A134290

/-! ## A134290.P15854534401339500347

`A001263(A155212(n+5))`
-/

namespace A134290.P15854534401339500347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A155212 (n + 5)).toNat

end

end A134290.P15854534401339500347

namespace A134290

/-- `A001263(A155212(n+5))` -/
def P15854534401339500347.Spec : Prop :=
  ∀ n, P15854534401339500347.a n = A134290 n

end A134290

/-! ## A134290.P4352227299131894416

`A142468(∑[n+2]+3)`
-/

namespace A134290.P4352227299131894416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A134290.P4352227299131894416

namespace A134290

/-- `A142468(∑[n+2]+3)` -/
def P4352227299131894416.Spec : Prop :=
  ∀ n, P4352227299131894416.a n = A134290 n

end A134290

/-!
# A134291: Tenth column (and diagonal) of Narayana triangle A001263.

The programs for A134291, the canonical program `A134291.P6607209048792712017` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134291 has offset 0).

The definition of A134291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134291.P6607209048792712017

`C(n+10, 10)*C(n+9, 8)/9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134291

/-- `C(n+10, 10)*C(n+9, 8)/9` -/
def P6607209048792712017.Spec : Prop :=
  ∀ n, P6607209048792712017.a n = (A134291 n : ℚ)

end A134291

/-! ## A134291.P17166489784812942013

`∑[A000581(n+8)]/(n+1)*A001287(n)`
-/

namespace A134291.P17166489784812942013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A001287 (n + 10) : ℚ)

end

end A134291.P17166489784812942013

namespace A134291

/-- `∑[A000581(n+8)]/(n+1)*A001287(n)` -/
def P17166489784812942013.Spec : Prop :=
  ∀ n, P17166489784812942013.a n = (A134291 n : ℚ)

end A134291

/-! ## A134291.P9681733355954489605

`A000582(n+9)/(n+1)*∑[A000582(n+9)]`
-/

namespace A134291.P9681733355954489605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (n + 9) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A134291.P9681733355954489605

namespace A134291

/-- `A000582(n+9)/(n+1)*∑[A000582(n+9)]` -/
def P9681733355954489605.Spec : Prop :=
  ∀ n, P9681733355954489605.a n = (A134291 n : ℚ)

end A134291

/-! ## A134291.P14454252890444318922

`A001263(A374011(n+1))`
-/

namespace A134291.P14454252890444318922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A374011 (n + 1)).toNat

end

end A134291.P14454252890444318922

namespace A134291

/-- `A001263(A374011(n+1))` -/
def P14454252890444318922.Spec : Prop :=
  ∀ n, P14454252890444318922.a n = A134291 n

end A134291

/-! ## A134291.P11323879857716430814

`A001263(A166136(n+8)+4)`
-/

namespace A134291.P11323879857716430814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A166136 (n + 8) + 4).toNat

end

end A134291.P11323879857716430814

namespace A134291

/-- `A001263(A166136(n+8)+4)` -/
def P11323879857716430814.Spec : Prop :=
  ∀ n, P11323879857716430814.a n = A134291 n

end A134291

/-! ## A134291.P12737395955700105792

`A001263(A000217(n+9)+10)`
-/

namespace A134291.P12737395955700105792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000217 (n + 9) + 10).toNat

end

end A134291.P12737395955700105792

namespace A134291

/-- `A001263(A000217(n+9)+10)` -/
def P12737395955700105792.Spec : Prop :=
  ∀ n, P12737395955700105792.a n = A134291 n

end A134291

/-! ## A134291.P17023180608592345434

`A001263(A000124(n+10)-(n+1))`
-/

namespace A134291.P17023180608592345434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A134291.P17023180608592345434

namespace A134291

/-- `A001263(A000124(n+10)-(n+1))` -/
def P17023180608592345434.Spec : Prop :=
  ∀ n, P17023180608592345434.a n = A134291 n

end A134291

/-! ## A134291.P18381374870935227322

`A001263(A056000(n+6)+1)`
-/

namespace A134291.P18381374870935227322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A056000 (n + 6) + 1).toNat

end

end A134291.P18381374870935227322

namespace A134291

/-- `A001263(A056000(n+6)+1)` -/
def P18381374870935227322.Spec : Prop :=
  ∀ n, P18381374870935227322.a n = A134291 n

end A134291

/-! ## A134291.P8411005762275919172

`A001263(A143689(A020715(n))-A104675(n))`
-/

namespace A134291.P8411005762275919172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A143689 (A020715 n).toNat - A104675 n).toNat

end

end A134291.P8411005762275919172

namespace A134291

/-- `A001263(A143689(A020715(n))-A104675(n))` -/
def P8411005762275919172.Spec : Prop :=
  ∀ n, P8411005762275919172.a n = A134291 n

end A134291

/-! ## A134291.P12577038983175226390

`A111600(n)/A000142(n+1)`
-/

namespace A134291.P12577038983175226390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111600 (n + 10) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A134291.P12577038983175226390

namespace A134291

/-- `A111600(n)/A000142(n+1)` -/
def P12577038983175226390.Spec : Prop :=
  ∀ n, P12577038983175226390.a n = (A134291 n : ℚ)

end A134291

/-!
# A134292: Triangle in which row n is the lexicographically earliest solution to the prime circle problem for 2n.

The programs for A134292, there is no canonical definition to state claims against.
-/

/-! ## A134292.P498320601465850318

`gcd(A224822(A333931(n+1)), A240834(n+2))`
-/

namespace A134292.P498320601465850318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224822 (A333931 (n + 1)).toNat) (A240834 (n + 2))

end

end A134292.P498320601465850318

/-!
# A134293: Number of ways to pair up {2..2n+1} so the sum of each pair is prime.

The programs for A134293, there is no canonical definition to state claims against.
-/

/-! ## A134293.P13129191617191710262

`sqrt(A073364(2*n+3))`
-/

namespace A134293.P13129191617191710262
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073364 (2 * n + 3) : ℝ)

end

end A134293.P13129191617191710262

/-! ## A134293.P18096391241934094340

`A103687(2*(n+1))/A000341(n+1)`
-/

namespace A134293.P18096391241934094340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103687 (2 * (n + 1)) : ℚ) / (A000341 (n + 1) : ℚ)

end

end A134293.P18096391241934094340

/-! ## A134293.P498039526130765811

`∏[A103687(2*(n+1))/A103687(2*n+1)]`
-/

namespace A134293.P498039526130765811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103687 (2 * (n + 1)) : ℚ) / (A103687 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A134293.P498039526130765811

/-!
# A134294: "Maximal" Hamilton numbers. Differs from usual Hamilton numbers starting at n=4.

The programs for A134294, there is no canonical definition to state claims against.
-/

/-! ## A134294.P4690760066274400390

`A002090(n+1)-A215703(n)`
-/

namespace A134294.P4690760066274400390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002090 (n + 1) - A215703 n

end

end A134294.P4690760066274400390

/-! ## A134294.P3906922056228760450

`A002090(n+1)-A273693(n)`
-/

namespace A134294.P3906922056228760450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002090 (n + 1) - A273693 n

end

end A134294.P3906922056228760450

/-! ## A134294.P16156178775895867271

`A002090(n+1)-A299038(n)`
-/

namespace A134294.P16156178775895867271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002090 (n + 1) - A299038 n

end

end A134294.P16156178775895867271

/-!
# A134295: a(n) = Sum_{k=1..n} ((n-k)!*(k-1)! - (-1)^k).

The programs for A134295, there is no canonical definition to state claims against.
-/

/-! ## A134295.P7035237470649573458

`A003149(n)+char[2*n]`
-/

namespace A134295.P7035237470649573458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134295.P7035237470649573458

/-! ## A134295.P10721954441995181166

`A059841(n)+A003149(n)`
-/

namespace A134295.P10721954441995181166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A003149 n

end

end A134295.P10721954441995181166

/-! ## A134295.P13775408579475691554

`A109613(n)+A003149(n)-n`
-/

namespace A134295.P13775408579475691554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + (A003149 n - (n : ℤ))

end

end A134295.P13775408579475691554

/-! ## A134295.P8015080005097656354

`Δ[A008619(n+1)]+∑[A186374(n+1)]`
-/

namespace A134295.P8015080005097656354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134295.P8015080005097656354

/-! ## A134295.P16353597760723993200

`A057427(A147607(n))+A003149(n)`
-/

namespace A134295.P16353597760723993200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A147607 n).toNat + A003149 n

end

end A134295.P16353597760723993200

/-!
# A134296: Quotients A134295(p)/p = (1/p) * Sum_{k=1..p} ((p-k)!*(k-1)! - (-1)^k), where p = prime(n).

The programs for A134296, there is no canonical definition to state claims against.
-/

/-! ## A134296.P7147472901713038805

`A134295(A000040(n+1))/A000040(n+1)`
-/

namespace A134296.P7147472901713038805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134295 (A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A134296.P7147472901713038805

/-! ## A134296.P8516954283084449532

`A134295(A051750(n+1))/A051750(n+1)`
-/

namespace A134296.P8516954283084449532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134295 (A051750 (n + 1)).toNat : ℚ) / (A051750 (n + 1) : ℚ)

end

end A134296.P8516954283084449532

/-! ## A134296.P15945967516309620781

`A134295(A109611(n+1))/A109611(n+1)`
-/

namespace A134296.P15945967516309620781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134295 (A109611 (n + 1)).toNat : ℚ) / (A109611 (n + 1) : ℚ)

end

end A134296.P15945967516309620781

/-! ## A134296.P2994960649522574709

`A134295(A219697(n+1))/A219697(n+1)`
-/

namespace A134296.P2994960649522574709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134295 (A219697 (n + 1)).toNat : ℚ) / (A219697 (n + 1) : ℚ)

end

end A134296.P2994960649522574709

/-!
# A134297: a(n) = 107*n.

The programs for A134297, the canonical program `A134297.P12068665844462061984` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134297 has offset 0).

The definition of A134297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `107*n` (program `A134297.P12068665844462061984`, by `A134297.P12068665844462061984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134297.P12068665844462061984

`107*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134297

/-- `107*n` -/
def P12068665844462061984.Spec : Prop :=
  ∀ n, (P12068665844462061984.a n : ℤ) = A134297 n

theorem P12068665844462061984.correct : P12068665844462061984.Spec := by
  intro n
  simp only [A134297]

end A134297

/-!
# A134298: a(n) = (107*n)^5.

The programs for A134298, the canonical program `A134298.P16795157517620320594` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134298 has offset 0).

The definition of A134298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(107*n)^5` (program `A134298.P16795157517620320594`, by `A134298.P16795157517620320594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134298.P16795157517620320594

`(107*n)^5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134298

/-- `(107*n)^5` -/
def P16795157517620320594.Spec : Prop :=
  ∀ n, (P16795157517620320594.a n : ℤ) = A134298 n

theorem P16795157517620320594.correct : P16795157517620320594.Spec := by
  intro n
  simp only [A134298]

end A134298

/-!
# A134299: Maximal length of a sequence such that v(0)=n, v(k+2) = v(k)-v(k+1), v(k) >= 0.

The programs for A134299, there is no canonical definition to state claims against.
-/

/-! ## A134299.P4201566050496228254

`ceil(A199088(n+1)+acot(n))`
-/

namespace A134299.P4201566050496228254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199088 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

end

end A134299.P4201566050496228254

/-! ## A134299.P2602275985903614598

`floor(A199088(C(n+1, n))+acot(n))+1`
-/

namespace A134299.P2602275985903614598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199088 (Nat.choose (n + 1) n) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋ + 1

end

end A134299.P2602275985903614598

/-! ## A134299.P6146642542167800304

`floor(A199088(-xor(n, -1))+acot(n))+1`
-/

namespace A134299.P6146642542167800304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199088 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋ + 1

end

end A134299.P6146642542167800304

/-! ## A134299.P3683919307407008211

`floor(A199088(Δ[n²]-n)+acot(n))+1`
-/

namespace A134299.P3683919307407008211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199088 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋ + 1

end

end A134299.P3683919307407008211

/-! ## A134299.P8292917930858751296

`A199088(n+1)+A054977(n)`
-/

namespace A134299.P8292917930858751296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199088 (n + 1) + A054977 n

end

end A134299.P8292917930858751296

/-! ## A134299.P9685689961097901080

`A199088(n+1)+A000038(n)!`
-/

namespace A134299.P9685689961097901080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199088 (n + 1) + (Nat.factorial (A000038 n).toNat : ℤ)

end

end A134299.P9685689961097901080

/-! ## A134299.P13749995766131426123

`A199088(n+1)+A073423(n)!`
-/

namespace A134299.P13749995766131426123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199088 (n + 1) + (Nat.factorial (A073423 n).toNat : ℤ)

end

end A134299.P13749995766131426123

/-! ## A134299.P14423318198005041564

`A199088(n+1)+A000007(n)+1`
-/

namespace A134299.P14423318198005041564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199088 (n + 1) + (A000007 n + 1)

end

end A134299.P14423318198005041564

/-! ## A134299.P1249372914860615991

`A199088(n+1)+A057428(n)+2`
-/

namespace A134299.P1249372914860615991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199088 (n + 1) + (A057428 n + 2)

end

end A134299.P1249372914860615991

