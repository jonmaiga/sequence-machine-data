import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
# A257703: Number of steps from n to 0 using this algorithm: x -> floor(e*x) if x is odd, and x -> floor(x/e) if x is even.

The programs for A257703, there is no canonical definition to state claims against.
-/

/-! ## A257703.P16671193002146945046

`A073369(n+1)-1`
-/

namespace A257703.P16671193002146945046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073369 (n + 1) - 1

end

end A257703.P16671193002146945046

/-! ## A257703.P15719848962370517767

`A023443(A073369(n+1))`
-/

namespace A257703.P15719848962370517767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073369 (n + 1)).toNat

end

end A257703.P15719848962370517767

/-! ## A257703.P1762638454968904795

`A057918(A073369(n+1)²)`
-/

namespace A257703.P1762638454968904795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A073369 (n + 1) ^ 2).toNat

end

end A257703.P1762638454968904795

/-! ## A257703.P10825209975092450710

`A088226(A073369(n+1)²)`
-/

namespace A257703.P10825209975092450710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A073369 (n + 1) ^ 2).toNat

end

end A257703.P10825209975092450710

/-! ## A257703.P10375299011994094543

`A171173(A073369(n+1)²)`
-/

namespace A257703.P10375299011994094543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A073369 (n + 1) ^ 2).toNat

end

end A257703.P10375299011994094543

/-! ## A257703.P1243527787569913265

`A023444(A073369(n+1)+1)`
-/

namespace A257703.P1243527787569913265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A073369 (n + 1) + 1).toNat

end

end A257703.P1243527787569913265

/-! ## A257703.P5518735987342458636

`A140106(2*A073369(n+1))`
-/

namespace A257703.P5518735987342458636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A073369 (n + 1)).toNat

end

end A257703.P5518735987342458636

/-! ## A257703.P3481221514036180221

`A025581(2*A073369(n+1)²)`
-/

namespace A257703.P3481221514036180221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A073369 (n + 1) ^ 2).toNat

end

end A257703.P3481221514036180221

/-! ## A257703.P8516025948276614544

`A086520(A073369(n+1)²)`
-/

namespace A257703.P8516025948276614544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A073369 (n + 1) ^ 2).toNat

end

end A257703.P8516025948276614544

/-!
# A257704: Number of steps from n to 0 using this algorithm: x -> floor(Pi*x) if x is odd, and x -> floor(x/Pi) if x is even.

The programs for A257704, there is no canonical definition to state claims against.
-/

/-! ## A257704.P16551846337774881656

`A073330(n+1)-1`
-/

namespace A257704.P16551846337774881656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073330 (n + 1) - 1

end

end A257704.P16551846337774881656

/-! ## A257704.P12684876591496920628

`A057918(A073330(n+1)²)`
-/

namespace A257704.P12684876591496920628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A073330 (n + 1) ^ 2).toNat

end

end A257704.P12684876591496920628

/-! ## A257704.P15083723795501889087

`A171173(A073330(n+1)²)`
-/

namespace A257704.P15083723795501889087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A073330 (n + 1) ^ 2).toNat

end

end A257704.P15083723795501889087

/-! ## A257704.P6398138914742080503

`A023444(A073330(n+1)+1)`
-/

namespace A257704.P6398138914742080503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A073330 (n + 1) + 1).toNat

end

end A257704.P6398138914742080503

/-! ## A257704.P637635206062989011

`A289207(A073330(n+1)+1)`
-/

namespace A257704.P637635206062989011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A073330 (n + 1) + 1).toNat

end

end A257704.P637635206062989011

/-! ## A257704.P12612464776179518613

`A023445(A073330(n+1)+2)`
-/

namespace A257704.P12612464776179518613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A073330 (n + 1) + 2).toNat

end

end A257704.P12612464776179518613

/-! ## A257704.P8420698850903598697

`A140106(2*A073330(n+1))`
-/

namespace A257704.P8420698850903598697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A073330 (n + 1)).toNat

end

end A257704.P8420698850903598697

/-! ## A257704.P524506254116293641

`A134824(A073330(n+1)²)+A073330(n+1)`
-/

namespace A257704.P524506254116293641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A073330 (n + 1) ^ 2).toNat + A073330 (n + 1)

end

end A257704.P524506254116293641

/-! ## A257704.P15198107512065844845

`A153881(A073330(n+1)²)+A073330(n+1)`
-/

namespace A257704.P15198107512065844845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A073330 (n + 1) ^ 2).toNat + A073330 (n + 1)

end

end A257704.P15198107512065844845

/-! ## A257704.P8425346319899142186

`A153881(n+2)+A073330(n+1)`
-/

namespace A257704.P8425346319899142186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A073330 (n + 1)

end

end A257704.P8425346319899142186

/-! ## A257704.P17082966213052856067

`A134824(n+2)+A073330(n+1)`
-/

namespace A257704.P17082966213052856067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A073330 (n + 1)

end

end A257704.P17082966213052856067

/-!
# A257705: Sequence (a(n)) generated by Rule 1 (in Comments) with a(1) = 0 and d(1) = 0.

The programs for A257705, there is no canonical definition to state claims against.
-/

/-! ## A257705.P6477685974801259516

`A131388(n+1)-1`
-/

namespace A257705.P6477685974801259516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (n + 1) - 1

end

end A257705.P6477685974801259516

/-! ## A257705.P8502557721352171575

`∑[A131389(n+1)]`
-/

namespace A257705.P8502557721352171575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257705.P8502557721352171575

/-! ## A257705.P13390683268381814705

`A057427(n)*A257878(A028310(n))`
-/

namespace A257705.P13390683268381814705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257878 (A028310 n).toNat

end

end A257705.P13390683268381814705

/-! ## A257705.P10265281035804127471

`A284793(A020639(2*(n+2)))+A131388(n+1)`
-/

namespace A257705.P10265281035804127471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A020639 (2 * (n + 2))).toNat + A131388 (n + 1)

end

end A257705.P10265281035804127471

/-! ## A257705.P3570619576982681777

`A257878(n+1)-A131389(n+2)`
-/

namespace A257705.P3570619576982681777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (n + 1) - A131389 (n + 2)

end

end A257705.P3570619576982681777

/-! ## A257705.P6634778696077732110

`A257706(n+1)+1-A131389(n+2)`
-/

namespace A257705.P6634778696077732110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257706 (n + 1) + (1 - A131389 (n + 2))

end

end A257705.P6634778696077732110

/-! ## A257705.P9790410339532365387

`A023443(A131388(n+1))`
-/

namespace A257705.P9790410339532365387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A131388 (n + 1)).toNat

end

end A257705.P9790410339532365387

/-! ## A257705.P292469873665130048

`A023444(A131388(n+1)+1)`
-/

namespace A257705.P292469873665130048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A131388 (n + 1) + 1).toNat

end

end A257705.P292469873665130048

/-!
# A257706: Sequence (a(n)) generated by Rule 1 (in Comments) with a(1) = 0 and d(1) = 1.

The programs for A257706, there is no canonical definition to state claims against.
-/

/-! ## A257706.P12246541569151937243

`A257878(n+1)-1`
-/

namespace A257706.P12246541569151937243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (n + 1) - 1

end

end A257706.P12246541569151937243

/-! ## A257706.P2773186885932740206

`A257705(n+2)-1`
-/

namespace A257706.P2773186885932740206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 2) - 1

end

end A257706.P2773186885932740206

/-! ## A257706.P2864001340748419663

`A131388(n+2)-2`
-/

namespace A257706.P2864001340748419663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (n + 2) - 2

end

end A257706.P2864001340748419663

/-! ## A257706.P1023431979690809622

`∑[A131389(n+2)]-1`
-/

namespace A257706.P1023431979690809622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A257706.P1023431979690809622

/-! ## A257706.P5723033830266858008

`∑[A131389(A103517(n)-n)]`
-/

namespace A257706.P5723033830266858008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (A103517 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257706.P5723033830266858008

/-! ## A257706.P8120430613295883791

`∑[A131389(n+2)%A008486(n)]`
-/

namespace A257706.P8120430613295883791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131389 (n + 2)) (A008486 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257706.P8120430613295883791

/-! ## A257706.P5469092845334013733

`A023443(A257878(n+1))`
-/

namespace A257706.P5469092845334013733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257878 (n + 1)).toNat

end

end A257706.P5469092845334013733

/-! ## A257706.P1181409437584091471

`A023444(A131388(n+2))`
-/

namespace A257706.P1181409437584091471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A131388 (n + 2)).toNat

end

end A257706.P1181409437584091471

/-! ## A257706.P11577846366141857497

`A023443(A257705(n+2))`
-/

namespace A257706.P11577846366141857497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257705 (n + 2)).toNat

end

end A257706.P11577846366141857497

/-! ## A257706.P14871303986665473488

`A257883(A257465(∑[A131389(n+2)]))`
-/

namespace A257706.P14871303986665473488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257883 (A257465 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A257706.P14871303986665473488

/-!
# A257708: Numbers n such that T(n) + T(n+1) + ... + T(n+24) is a square, where T = A000217 (triangular numbers).

The programs for A257708, the canonical program `A257708.P17679834171026623728` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257708 has offset 1).

The definition of A257708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257708.P17679834171026623728

`A154152(n+3)-12`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A257708

/-- `A154152(n+3)-12` -/
def P17679834171026623728.Spec : Prop :=
  ∀ n, P17679834171026623728.a n = A257708 (n + 1)

theorem P17679834171026623728.correct : P17679834171026623728.Spec := by
  intro n
  simp only [A257708, Nat.add_sub_cancel]

end A257708

/-! ## A257708.P14642415928252230368

`∑[3*Δ[A154138(n+2)]]-2`
-/

namespace A257708.P14642415928252230368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A257708.P14642415928252230368

namespace A257708

/-- `∑[3*Δ[A154138(n+2)]]-2` -/
def P14642415928252230368.Spec : Prop :=
  ∀ n, P14642415928252230368.a n = A257708 (n + 1)

end A257708

/-!
# A257719: Up-down reversals: nondeficient n with deficient sum of proper divisors of n.

The programs for A257719, there is no canonical definition to state claims against.
-/

/-! ## A257719.P5705571229927509349

`filter[A263838(n+1), A294936(#)]`
-/

namespace A257719.P5705571229927509349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A257719.P5705571229927509349

/-! ## A257719.P870637866743991701

`∩[A005101(n+1), A263838(n+1)]`
-/

namespace A257719.P870637866743991701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257719.P870637866743991701

/-! ## A257719.P15194501771232196530

`∩[A023196(n+1), A263838(n+1)]`
-/

namespace A257719.P15194501771232196530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257719.P15194501771232196530

/-! ## A257719.P8978884971984590853

`∩[A177052(n+1), A263838(n+1)]`
-/

namespace A257719.P8978884971984590853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257719.P8978884971984590853

/-! ## A257719.P7334415821865832313

`filter[A263838(n+1), A294937(#)]`
-/

namespace A257719.P7334415821865832313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A257719.P7334415821865832313

/-! ## A257719.P17198721174984360718

`record[A005101(n+1)/A081705(n+1)]`
-/

namespace A257719.P17198721174984360718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005101 (n + 1) : ℚ) / (A081705 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257719.P17198721174984360718

/-! ## A257719.P6880240578017189600

`record[A224907(n+1)/(A081705(n+1)+1)]`
-/

namespace A257719.P6880240578017189600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / (A081705 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257719.P6880240578017189600

/-! ## A257719.P8460042154057852245

`A004525(record[A224907(n+1)/A081705(n+1)])`
-/

namespace A257719.P8460042154057852245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / (A081705 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A257719.P8460042154057852245

/-! ## A257719.P15679802398579958083

`A001281(record[A224907(n+1)/A081705(n+1)])`
-/

namespace A257719.P15679802398579958083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / (A081705 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A257719.P15679802398579958083

/-! ## A257719.P8054501001116175776

`∩[A091194(A217740(n+1)), A263838(n+1)]`
-/

namespace A257719.P8054501001116175776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A217740 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257719.P8054501001116175776

/-!
# A257720: Down-up reversals: if n is deficient and s(n) is nondeficient, where s(n) is the sum of proper divisors of n.

The programs for A257720, there is no canonical definition to state claims against.
-/

/-! ## A257720.P8555259978405799219

`filter[A263838(n+1), A294934(#)]`
-/

namespace A257720.P8555259978405799219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A257720.P8555259978405799219

/-! ## A257720.P13118676028443793734

`filter[A263838(n+1), A294935(#)]`
-/

namespace A257720.P13118676028443793734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A257720.P13118676028443793734

/-! ## A257720.P11348795349937993341

`∩[A005100(n+1), A263838(n+1)]`
-/

namespace A257720.P11348795349937993341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257720.P11348795349937993341

/-! ## A257720.P1139292735816421505

`∩[A263837(n+1), A263838(n+1)]`
-/

namespace A257720.P1139292735816421505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257720.P1139292735816421505

/-! ## A257720.P18199213813105865121

`∩[A125493(n+1), A263838(n+1)]`
-/

namespace A257720.P18199213813105865121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257720.P18199213813105865121

/-! ## A257720.P1876120200835099833

`A005100(eq[A057427(n), A254618(n+1)]+1)`
-/

namespace A257720.P1876120200835099833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A257720.P1876120200835099833

/-!
# A257721: Hexagonal numbers (A000384) that are the sum of two consecutive hexagonal numbers.

The programs for A257721, there is no canonical definition to state claims against.
-/

/-! ## A257721.P3847121329896478248

`A069017(4*n+5)`
-/

namespace A257721.P3847121329896478248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069017 (4 * n + 5)

end

end A257721.P3847121329896478248

/-! ## A257721.P3128951825189661925

`C(A212329(2*(n+1)+1)+2, 2)`
-/

namespace A257721.P3128951825189661925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212329 (2 * (n + 1) + 1) + 2).toNat 2

end

end A257721.P3128951825189661925

/-!
# A257725: Permutation of natural numbers: a(0) = 0, a(lucky(n)) = 1 + 2*a(n-1), a(unlucky(n)) = 2*a(n), where lucky(n) = n-th lucky number A000959, unlucky(n) = n-th unlucky number A050505.

The programs for A257725, there is no canonical definition to state claims against.
-/

/-! ## A257725.P972349466601953106

`A246377(A257732(abs(1-n)+1))%((n+1)^4)`
-/

namespace A257725.P972349466601953106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246377 (A257732 (|1 - (n : ℤ)| + 1).toNat).toNat) ((n + 1) ^ 4 : ℤ)

end

end A257725.P972349466601953106

/-! ## A257725.P806323760173217727

`A257735(A257690(C(2, n+1)+n))-C(2, n+1)`
-/

namespace A257725.P806323760173217727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257735 (A257690 (Nat.choose 2 (n + 1) + n)).toNat - (Nat.choose 2 (n + 1) : ℤ)

end

end A257725.P806323760173217727

/-! ## A257725.P4695826448837354687

`A257735(A257690(n))+a(A002618(n)%n)` with `a(0)=0`
-/

namespace A257725.P4695826448837354687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A257735 (A257690 n).toNat + a (Int.tmod (A002618 n) (n : ℤ)).toNat

end

end A257725.P4695826448837354687

/-! ## A257725.P5035026059164971324

`A257735(A257690(abs(1-n)+1))%A171856(n)`
-/

namespace A257725.P5035026059164971324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257735 (A257690 (|1 - (n : ℤ)| + 1).toNat).toNat) (A171856 n)

end

end A257725.P5035026059164971324

/-! ## A257725.P12701352863917282331

`A257735(A257690(n))%A231092(a(n-1)+1)` with `a(0)=0`
-/

namespace A257725.P12701352863917282331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A257735 (A257690 n).toNat) (A231092 (a (n - 1) + 1).toNat)

end

end A257725.P12701352863917282331

/-! ## A257725.P6082962624240005823

`A257735(A257690(n))+a(A000423(n+3)%6)` with `a(0)=0`
-/

namespace A257725.P6082962624240005823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A257735 (A257690 n).toNat + a (Int.tmod (A000423 (n + 3)) 6).toNat

end

end A257725.P6082962624240005823

/-!
# A257727: Permutation of natural numbers: a(1) = 1, a(oddprime(n)) = 1 + 2*a(n), a(not_an_oddprime(n)) = 2*a(n-1).

The programs for A257727, there is no canonical definition to state claims against.
-/

/-! ## A257727.P1189385769378852445

`A246377(A257730(n+1))`
-/

namespace A257727.P1189385769378852445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (A257730 (n + 1)).toNat

end

end A257727.P1189385769378852445

/-! ## A257727.P18011583774095007966

`A257725(A257801(n+1))`
-/

namespace A257727.P18011583774095007966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A257801 (n + 1)).toNat

end

end A257727.P18011583774095007966

/-! ## A257727.P12475095123263677663

`A135141(A236854(A257730(A026239(A026239(n+1)))))`
-/

namespace A257727.P12475095123263677663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A236854 (A257730 (A026239 (A026239 (n + 1)).toNat).toNat).toNat).toNat

end

end A257727.P12475095123263677663

/-! ## A257727.P1443224009898825106

`A005941(A269847(n+1)%A016114(n+1))`
-/

namespace A257727.P1443224009898825106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (Int.tmod (A269847 (n + 1)) (A016114 (n + 1))).toNat

end

end A257727.P1443224009898825106

/-!
# A257728: Permutation of natural numbers: a(1)=1; a(2n) = not_an_oddprime(1+a(n)), a(2n+1) = oddprime(a(n)).

The programs for A257728, there is no canonical definition to state claims against.
-/

/-! ## A257728.P5241123785143698892

`A257802(A257726(n+1))`
-/

namespace A257728.P5241123785143698892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257802 (A257726 (n + 1)).toNat

end

end A257728.P5241123785143698892

/-! ## A257728.P7656066625445735398

`A257729(A246378(n+1))`
-/

namespace A257728.P7656066625445735398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257729 (A246378 (n + 1)).toNat

end

end A257728.P7656066625445735398

/-! ## A257728.P5620856518685945418

`A257802(A183089(A257736(n+1)))`
-/

namespace A257728.P5620856518685945418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257802 (A183089 (A257736 (n + 1)).toNat).toNat

end

end A257728.P5620856518685945418

/-! ## A257728.P6134497043917613931

`A257802(A257738(A183089(n+1)))`
-/

namespace A257728.P6134497043917613931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257802 (A257738 (A183089 (n + 1)).toNat).toNat

end

end A257728.P6134497043917613931

/-!
# A257729: Permutation of natural numbers: a(1)=1; a(prime(n)) = oddprime(a(n)), a(composite(n)) = not_an_oddprime(1+a(n)).

The programs for A257729, there is no canonical definition to state claims against.
-/

/-! ## A257729.P14880539464521485824

`A257728(A246377(n+1))`
-/

namespace A257729.P14880539464521485824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257728 (A246377 (n + 1)).toNat

end

end A257729.P14880539464521485824

/-! ## A257729.P2707848510634652993

`A257802(A257731(n+1))`
-/

namespace A257729.P2707848510634652993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257802 (A257731 (n + 1)).toNat

end

end A257729.P2707848510634652993

/-! ## A257729.P4612296019975234137

`A257728(A054977(lcm(6, (n+1)^3)/6)*A260421(n+1))`
-/

namespace A257729.P4612296019975234137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257728 (A054977 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat * A260421 (n + 1)).toNat

end

end A257729.P4612296019975234137

/-! ## A257729.P1341546113646854241

`A257728(A183089(A257690(A257725(A257733(n+1)))))`
-/

namespace A257729.P1341546113646854241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257728 (A183089 (A257690 (A257725 (A257733 (n + 1)).toNat).toNat).toNat).toNat

end

end A257729.P1341546113646854241

/-! ## A257729.P5886377822054264743

`A257802(or(A028240(n), A257733(n+1)))`
-/

namespace A257729.P5886377822054264743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257802 (Int.lor (A028240 n) (A257733 (n + 1))).toNat

end

end A257729.P5886377822054264743

/-!
# A257730: Permutation of natural numbers: a(1)=1; a(oddprime(n)) = prime(a(n)), a(not_an_oddprime(n)) = composite(a(n-1)).

The programs for A257730, there is no canonical definition to state claims against.
-/

/-! ## A257730.P5202981065315129055

`A257732(A257801(n+1))`
-/

namespace A257730.P5202981065315129055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257732 (A257801 (n + 1)).toNat

end

end A257730.P5202981065315129055

/-! ## A257730.P6540667353689120599

`A246378(A257727(n+1))`
-/

namespace A257730.P6540667353689120599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257727 (n + 1)).toNat

end

end A257730.P6540667353689120599

/-! ## A257730.P9576783020250148495

`A246378(A257725(A257801(n+1)%A065091(n+1)))`
-/

namespace A257730.P9576783020250148495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257725 (Int.tmod (A257801 (n + 1)) (A065091 (n + 1))).toNat).toNat

end

end A257730.P9576783020250148495

/-! ## A257730.P11307946338532319953

`A246378(A257725(A257801(A246378(A246377(n+1)))))`
-/

namespace A257730.P11307946338532319953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257725 (A257801 (A246378 (A246377 (n + 1)).toNat).toNat).toNat).toNat

end

end A257730.P11307946338532319953

/-! ## A257730.P13394086915486486024

`A246380(A269847(n+1)^A008835(n+1))`
-/

namespace A257730.P13394086915486486024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246380 (SequenceMachineLib.roundAway ((A269847 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A257730.P13394086915486486024

/-!
# A257731: Permutation of natural numbers: a(1) = 1, a(prime(n)) = lucky(1+a(n)), a(composite(n)) = unlucky(a(n)), where prime(n) = n-th prime number A000040, composite(n) = n-th composite number A002808 and lucky = A000959, unlucky = A050505.

The programs for A257731, there is no canonical definition to state claims against.
-/

/-! ## A257731.P1126409785001942125

`A257733(A255421(n+1))`
-/

namespace A257731.P1126409785001942125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257733 (A255421 (n + 1)).toNat

end

end A257731.P1126409785001942125

/-! ## A257731.P3394028810586539108

`A257726(A246377(n+1))`
-/

namespace A257731.P3394028810586539108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A246377 (n + 1)).toNat

end

end A257731.P3394028810586539108

/-! ## A257731.P15520630122625120345

`A257801(A257729(n+1))`
-/

namespace A257731.P15520630122625120345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257801 (A257729 (n + 1)).toNat

end

end A257731.P15520630122625120345

/-! ## A257731.P6900410559486800427

`A257726(A257727(A257729(A257728(A257727(n+1)))))`
-/

namespace A257731.P6900410559486800427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A257727 (A257729 (A257728 (A257727 (n + 1)).toNat).toNat).toNat).toNat

end

end A257731.P6900410559486800427

/-! ## A257731.P7529866611259988147

`A227413(A135141(A257733(n+1)))`
-/

namespace A257731.P7529866611259988147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A135141 (A257733 (n + 1)).toNat).toNat

end

end A257731.P7529866611259988147

/-!
# A257732: Permutation of natural numbers: a(1) = 1, a(lucky(n)) = prime(a(n-1)), a(unlucky(n)) = composite(a(n)), where lucky(n) = n-th lucky number A000959, unlucky(n) = n-th unlucky number A050505, and prime = A000040, composite = A002808.

The programs for A257732, there is no canonical definition to state claims against.
-/

/-! ## A257732.P3135420475130674471

`A255422(A257734(n+1))`
-/

namespace A257732.P3135420475130674471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255422 (A257734 (n + 1)).toNat

end

end A257732.P3135420475130674471

/-! ## A257732.P8138882953391354357

`A246378(A257725(n+1))`
-/

namespace A257732.P8138882953391354357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257725 (n + 1)).toNat

end

end A257732.P8138882953391354357

/-! ## A257732.P7526589373470376410

`A257730(A257802(n+1))`
-/

namespace A257732.P7526589373470376410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257730 (A257802 (n + 1)).toNat

end

end A257732.P7526589373470376410

/-! ## A257732.P16201316001209413222

`A246378(A257727(A257802(n+1)%A065091(n+1)))`
-/

namespace A257732.P16201316001209413222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257727 (Int.tmod (A257802 (n + 1)) (A065091 (n + 1))).toNat).toNat

end

end A257732.P16201316001209413222

/-! ## A257732.P8113526304741809976

`A246378(A257727(A257802(n+1)))%A071904(n+1)`
-/

namespace A257732.P8113526304741809976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246378 (A257727 (A257802 (n + 1)).toNat).toNat) (A071904 (n + 1))

end

end A257732.P8113526304741809976

/-! ## A257732.P15021082656921534456

`A246378(A257727(A257802(A257728(A257727(n+1)))))`
-/

namespace A257732.P15021082656921534456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257727 (A257802 (A257728 (A257727 (n + 1)).toNat).toNat).toNat).toNat

end

end A257732.P15021082656921534456

/-! ## A257732.P7431143621153864176

`A246378(A257690(A257737(n+1)))`
-/

namespace A257732.P7431143621153864176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257690 (A257737 (n + 1)).toNat).toNat

end

end A257732.P7431143621153864176

/-! ## A257732.P17995292018411541241

`A246378(A257735(A257690(n+1)))`
-/

namespace A257732.P17995292018411541241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A257735 (A257690 (n + 1)).toNat).toNat

end

end A257732.P17995292018411541241

/-!
# A257733: Permutation of natural numbers: a(1) = 1, a(ludic(n)) = lucky(1+a(n-1)), a(nonludic(n)) = unlucky(a(n)), where ludic(n) = n-th ludic number A003309, nonludic(n) = n-th nonludic number A192607 and lucky = A000959, unlucky = A050505.

The programs for A257733, there is no canonical definition to state claims against.
-/

/-! ## A257733.P4513821940312670748

`A257731(A255422(n+1))`
-/

namespace A257733.P4513821940312670748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257731 (A255422 (n + 1)).toNat

end

end A257733.P4513821940312670748

/-! ## A257733.P7732889629227553059

`A257726(A237427(n+1))`
-/

namespace A257733.P7732889629227553059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A237427 (n + 1)).toNat

end

end A257733.P7732889629227553059

/-! ## A257733.P1065139936725213453

`A257731(lt[A301469(n), A301768(n+1)])`
-/

namespace A257733.P1065139936725213453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257731 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257733.P1065139936725213453

/-!
# A257734: Permutation of natural numbers: a(1) = 1, a(lucky(n)) = ludic(1+a(n-1)), a(unlucky(n)) = nonludic(a(n)), where lucky(n) = n-th lucky number A000959, unlucky(n) = n-th unlucky number A050505, and ludic = A003309, nonludic = A192607.

The programs for A257734, there is no canonical definition to state claims against.
-/

/-! ## A257734.P8083161491701891687

`A255421(A257732(n+1))`
-/

namespace A257734.P8083161491701891687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255421 (A257732 (n + 1)).toNat

end

end A257734.P8083161491701891687

/-! ## A257734.P7930536250687808266

`A237126(A257725(n+1))`
-/

namespace A257734.P7930536250687808266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (A257725 (n + 1)).toNat

end

end A257734.P7930536250687808266

/-! ## A257734.P1853848031777070215

`A257732(n+1)-A353419(A032091(3*n+7))`
-/

namespace A257734.P1853848031777070215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257732 (n + 1) - A353419 (A032091 (3 * n + 7)).toNat

end

end A257734.P1853848031777070215

/-! ## A257734.P5831999034992122189

`A257732(n+1)-A065718(A288393(n))`
-/

namespace A257734.P5831999034992122189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257732 (n + 1) - A065718 (A288393 n).toNat

end

end A257734.P5831999034992122189

/-! ## A257734.P14177940442783214171

`A257732(n+1)-A185245(A182153(n))`
-/

namespace A257734.P14177940442783214171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257732 (n + 1) - A185245 (A182153 n).toNat

end

end A257734.P14177940442783214171

/-!
# A257735: Permutation of natural numbers: a(n) = A257725(A183089(n)).

The programs for A257735, there is no canonical definition to state claims against.
-/

/-! ## A257735.P5024721334137607409

`A257725(A183089(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257735.P5024721334137607409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A183089 (n + 1)).toNat

end

end A257735.P5024721334137607409

/-! ## A257735.P13473711647585232785

`A246377(A257732(A109497(A183089(2*n+1))))`
-/

namespace A257735.P13473711647585232785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (A257732 (A109497 (A183089 (2 * n + 1)).toNat).toNat).toNat

end

end A257735.P13473711647585232785

/-! ## A257735.P13056139976890352131

`A257725(A257737(A257726(n+1)))`
-/

namespace A257735.P13056139976890352131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A257737 (A257726 (n + 1)).toNat).toNat

end

end A257735.P13056139976890352131

/-! ## A257735.P1269883670600136385

`A257725(A257737(A257731(A246378(n+1))))`
-/

namespace A257735.P1269883670600136385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A257737 (A257731 (A246378 (n + 1)).toNat).toNat).toNat

end

end A257735.P1269883670600136385

/-!
# A257736: Permutation of natural numbers: a(n) = A257690(A257726(n)).

The programs for A257736, there is no canonical definition to state claims against.
-/

/-! ## A257736.P7103268394103494883

`A257690(A257726(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257736.P7103268394103494883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257690 (A257726 (n + 1)).toNat

end

end A257736.P7103268394103494883

/-! ## A257736.P756120660780262341

`A257690(A257801(A257728(n+1)))`
-/

namespace A257736.P756120660780262341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257690 (A257801 (A257728 (n + 1)).toNat).toNat

end

end A257736.P756120660780262341

/-! ## A257736.P12704547891244774895

`A257690(A257731(A246378(n+1)))`
-/

namespace A257736.P12704547891244774895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257690 (A257731 (A246378 (n + 1)).toNat).toNat

end

end A257736.P12704547891244774895

/-! ## A257736.P12851463372967246979

`A257690(A257738(A183089(n+1)))`
-/

namespace A257736.P12851463372967246979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257690 (A257738 (A183089 (n + 1)).toNat).toNat

end

end A257736.P12851463372967246979

/-!
# A257737: Permutation of natural numbers: a(n) = A183089(A257725(n)).

The programs for A257737, there is no canonical definition to state claims against.
-/

/-! ## A257737.P1770672849165399610

`A183089(A257725(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257737.P1770672849165399610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183089 (A257725 (n + 1)).toNat

end

end A257737.P1770672849165399610

/-! ## A257737.P10200874606796741430

`A183089(A246377(A257732(n+1)))`
-/

namespace A257737.P10200874606796741430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183089 (A246377 (A257732 (n + 1)).toNat).toNat

end

end A257737.P10200874606796741430

/-! ## A257737.P13913171850839769843

`A183089(A257735(A257690(n+1)))`
-/

namespace A257737.P13913171850839769843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183089 (A257735 (A257690 (n + 1)).toNat).toNat

end

end A257737.P13913171850839769843

/-! ## A257737.P5083481202295939087

`A183089(A257727(A257802(n+1)))`
-/

namespace A257737.P5083481202295939087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183089 (A257727 (A257802 (n + 1)).toNat).toNat

end

end A257737.P5083481202295939087

/-! ## A257737.P15446438049572354305

`A061858(A018321(n+4))+n+1`
-/

namespace A257737.P15446438049572354305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (A018321 (n + 4)).toNat + (n + 1 : ℤ)

end

end A257737.P15446438049572354305

/-!
# A257738: Permutation of natural numbers: a(n) = A257726(A257690(n)).

The programs for A257738, there is no canonical definition to state claims against.
-/

/-! ## A257738.P1834037656786150894

`A257726(A257690(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257738.P1834037656786150894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A257690 (n + 1)).toNat

end

end A257738.P1834037656786150894

/-! ## A257738.P8503554601855653614

`A257726(A257736(A257725(n+1)))`
-/

namespace A257738.P8503554601855653614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A257736 (A257725 (n + 1)).toNat).toNat

end

end A257738.P8503554601855653614

/-! ## A257738.P585456166641688975

`A326454(A151338(n))+n`
-/

namespace A257738.P585456166641688975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326454 (A151338 n).toNat + (n : ℤ)

end

end A257738.P585456166641688975

/-!
# A257739: Numbers n for which A256999(n) > n; numbers that can be made larger by rotating (by one or more steps) the non-msb bits of their binary representation (with A080541 or A080542).

The programs for A257739, there is no canonical definition to state claims against.
-/

/-! ## A257739.P11416820291463060457

`comp[A257250(n)]`
-/

namespace A257739.P11416820291463060457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257739.P11416820291463060457

/-! ## A257739.P18383577391021325025

`comp[A331857(n)]`
-/

namespace A257739.P18383577391021325025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257739.P18383577391021325025

/-! ## A257739.P18099167155455834775

`comp[A256999(n)]`
-/

namespace A257739.P18099167155455834775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257739.P18099167155455834775

/-! ## A257739.P3315091277512061924

`comp[A257697(n)+A053644(n)]`
-/

namespace A257739.P3315091277512061924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n + A053644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257739.P3315091277512061924

/-! ## A257739.P5572073638112164376

`A000027(lt[n, A256999(n)])`
-/

namespace A257739.P5572073638112164376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257739.P5572073638112164376

/-! ## A257739.P13477350019986798749

`A028310(lt[n, A256999(n)])`
-/

namespace A257739.P13477350019986798749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257739.P13477350019986798749

/-! ## A257739.P7084671875549518478

`lt[A008706(n), A008706(A256999(n))]`
-/

namespace A257739.P7084671875549518478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A256999 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257739.P7084671875549518478

/-! ## A257739.P18059679707006844053

`lt[char[A257250(n)], A257260(2*(n+2))]`
-/

namespace A257739.P18059679707006844053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257250 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257260 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A257739.P18059679707006844053

/-! ## A257739.P9523016495166789052

`eq[char[A257250(n)], A000035(2*n)]`
-/

namespace A257739.P9523016495166789052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257250 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257739.P9523016495166789052

/-! ## A257739.P1664045335756202833

`lt[A233583(n+1), A256999(n)]`
-/

namespace A257739.P1664045335756202833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257739.P1664045335756202833

/-!
# A257740: Number T(n,k) of multisets of nonempty words with a total of n letters over k-ary alphabet such that all k letters occur at least once in the multiset; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A257740, there is no canonical definition to state claims against.
-/

/-! ## A257740.P13820543904403648284

`A035060(A261719(n)+A250261(n))`
-/

namespace A257740.P13820543904403648284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035060 (A261719 n + A250261 n).toNat

end

end A257740.P13820543904403648284

/-! ## A257740.P11453274050796137235

`A135313(n)+A122922(A135313(n+1))`
-/

namespace A257740.P11453274050796137235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n + A122922 (A135313 (n + 1)).toNat

end

end A257740.P11453274050796137235

/-! ## A257740.P11188588890733399734

`A127299(A270882(n))+A091627(A007318(n))`
-/

namespace A257740.P11188588890733399734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A270882 n).toNat + A091627 (A007318 n).toNat

end

end A257740.P11188588890733399734

/-!
# A257741: Number of multisets of nonempty words with a total of n letters over n-ary alphabet such that if a letter occurs in the multiset all predecessors occur at least once.

The programs for A257741, there is no canonical definition to state claims against.
-/

/-! ## A257741.P18397237636947671190

`A053188(A213101(n))+A000354(n)`
-/

namespace A257741.P18397237636947671190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A213101 n).toNat + A000354 n

end

end A257741.P18397237636947671190

/-! ## A257741.P10305323004115762581

`A171970(A244594(n))+A054394(n)`
-/

namespace A257741.P10305323004115762581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A244594 n).toNat + A054394 n

end

end A257741.P10305323004115762581

/-!
# A257742: Number of multisets of nonempty words with a total of 2n letters over n-ary alphabet such that all n letters occur at least once in the multiset.

The programs for A257742, there is no canonical definition to state claims against.
-/

/-! ## A257742.P11622674146042745806

`A257740(∑[4*n])`
-/

namespace A257742.P11622674146042745806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257742.P11622674146042745806

/-! ## A257742.P8654625110526580149

`record[A257740(∑[A071045(n)])]`
-/

namespace A257742.P8654625110526580149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257742.P8654625110526580149

/-! ## A257742.P14004058369678833934

`record[gcd(A204016(n+1), A257740(n))]`
-/

namespace A257742.P14004058369678833934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A257740 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257742.P14004058369678833934

/-! ## A257742.P17209599286241190964

`A257740(A046092(n))^A178334(n)`
-/

namespace A257742.P17209599286241190964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257740 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A257742.P17209599286241190964

/-! ## A257742.P17706981099619073765

`or(A000007(n), A257740(A046092(n)))`
-/

namespace A257742.P17706981099619073765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257740 (A046092 n).toNat)

end

end A257742.P17706981099619073765

/-!
# A257743: Let n'= odd part of n. If n' is 1 or prime, then a(n)=1; otherwise a(n) is 1+ the number of times the map x -> (3*x+1)' must be applied to n' in order to reach 1 or a prime.

The programs for A257743, there is no canonical definition to state claims against.
-/

/-! ## A257743.P15982752575671095274

`A213925(A325355(n+1)!)`
-/

namespace A257743.P15982752575671095274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (Nat.factorial (A325355 (n + 1)).toNat)

end

end A257743.P15982752575671095274

/-! ## A257743.P15533442779310673360

`A327104(12*A325355(n+1))`
-/

namespace A257743.P15533442779310673360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (12 * A325355 (n + 1)).toNat

end

end A257743.P15533442779310673360

/-! ## A257743.P2734212027756679799

`A137734(A325355(n+1)%A372430(n+1))`
-/

namespace A257743.P2734212027756679799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (Int.tmod (A325355 (n + 1)) (A372430 (n + 1))).toNat

end

end A257743.P2734212027756679799

/-! ## A257743.P8389995574199061568

`or(A010054(A024462(n)), A257990(n+1))`
-/

namespace A257743.P8389995574199061568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A024462 n).toNat) (A257990 (n + 1))

end

end A257743.P8389995574199061568

/-! ## A257743.P5246877669440231216

`A353929(A325355(n+1)^A348242(n+1))`
-/

namespace A257743.P5246877669440231216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353929 (SequenceMachineLib.roundAway ((A325355 (n + 1) : ℚ) ^ (A348242 (n + 1) : ℤ))).toNat

end

end A257743.P5246877669440231216

/-!
# A257744: Smallest k such that A257743(k)=n.

The programs for A257744, there is no canonical definition to state claims against.
-/

/-! ## A257744.P16277331954396222431

`A103340(A225901(8^n))`
-/

namespace A257744.P16277331954396222431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103340 (A225901 (8 ^ n)).toNat

end

end A257744.P16277331954396222431

/-!
# A257745: Prime numbers that have a hexagonal Voronoi cell in the Voronoi diagram of the Ulam prime spiral.

The programs for A257745, there is no canonical definition to state claims against.
-/

/-! ## A257745.P15838698755689727296

`record[A079387(∑[A245356(n+1)])]`
-/

namespace A257745.P15838698755689727296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079387 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257745.P15838698755689727296

/-!
# A257750: Quasi-Carmichael numbers.

The programs for A257750, there is no canonical definition to state claims against.
-/

/-! ## A257750.P8407893043399494647

`∩[A132067(n+1), A337984(n+1)]`
-/

namespace A257750.P8407893043399494647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257750.P8407893043399494647

/-!
# A257751: Quasi-Carmichael numbers to exactly one base.

The programs for A257751, there is no canonical definition to state claims against.
-/

/-! ## A257751.P13790399835234017475

`A257750(comp[1-a(and(n, n-1))])` with `a(0)=7, a(1)=0`
-/

namespace A257751.P13790399835234017475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257751.P13790399835234017475

/-! ## A257751.P10098294981655607584

`A257750(comp[∑[∏{e}[n+1, #!]^n-1]])`
-/

namespace A257751.P10098294981655607584
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p)) ^ n : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257751.P10098294981655607584

/-! ## A257751.P8926052735713060972

`A257750(record[A359513(n)])`
-/

namespace A257751.P8926052735713060972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257751.P8926052735713060972

/-! ## A257751.P11761430023077977520

`A257750(comp[A110669(3*n)])`
-/

namespace A257751.P11761430023077977520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110669 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257751.P11761430023077977520

/-! ## A257751.P4466385768597410521

`A257750(comp[A034348(2^n-(C(n, 3)+n))])`
-/

namespace A257751.P4466385768597410521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034348 (2 ^ n - (Nat.choose n 3 + n))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257751.P4466385768597410521

/-!
# A257759: Quasi-Carmichael numbers to at least one negative base and at least one positive base.

The programs for A257759, there is no canonical definition to state claims against.
-/

/-! ## A257759.P16615125703500556953

`∩[A259282(n+1), A259283(n+1)]`
-/

namespace A257759.P16615125703500556953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257759.P16615125703500556953

/-!
# A257762: Numbers n with property that A062234(n) = A062234(n+1).

The programs for A257762, the canonical program `A257762.P13096121525645801001` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257762 has offset 1).

The definition of A257762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257762.P13096121525645801001

`eq[A001223(n+1), A036263(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257762

/-- `eq[A001223(n+1), A036263(n+1)]+1` -/
def P13096121525645801001.Spec : Prop :=
  ∀ n, (P13096121525645801001.a n : ℤ) = A257762 (n + 1)

theorem P13096121525645801001.correct : P13096121525645801001.Spec := by
  intro n
  simp only [A257762, Nat.add_sub_cancel]

end A257762

/-! ## A257762.P4665079745965862482

`eq[2, ratio[A054541(n+1)]]`
-/

namespace A257762.P4665079745965862482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A257762.P4665079745965862482

namespace A257762

/-- `eq[2, ratio[A054541(n+1)]]` -/
def P4665079745965862482.Spec : Prop :=
  ∀ n, (P4665079745965862482.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P2933224201079294139

`eq[2, ratio[A001223(n+1)]]+1`
-/

namespace A257762.P2933224201079294139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A257762.P2933224201079294139

namespace A257762

/-- `eq[2, ratio[A001223(n+1)]]+1` -/
def P2933224201079294139.Spec : Prop :=
  ∀ n, (P2933224201079294139.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P11195384243958990117

`eq[A048852(n), A392034(n+1)]`
-/

namespace A257762.P11195384243958990117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P11195384243958990117

namespace A257762

/-- `eq[A048852(n), A392034(n+1)]` -/
def P11195384243958990117.Spec : Prop :=
  ∀ n, (P11195384243958990117.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P10831489808314400824

`eq[A001747(n+1), A098764(n+1)]`
-/

namespace A257762.P10831489808314400824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P10831489808314400824

namespace A257762

/-- `eq[A001747(n+1), A098764(n+1)]` -/
def P10831489808314400824.Spec : Prop :=
  ∀ n, (P10831489808314400824.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P8284780235976494524

`eq[2*A048852(n), A291463(n+1)]`
-/

namespace A257762.P8284780235976494524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P8284780235976494524

namespace A257762

/-- `eq[2*A048852(n), A291463(n+1)]` -/
def P8284780235976494524.Spec : Prop :=
  ∀ n, (P8284780235976494524.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P692394994165803571

`eq[Δ[A001747(n+1)], A001223(n+1)]`
-/

namespace A257762.P692394994165803571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A257762.P692394994165803571

namespace A257762

/-- `eq[Δ[A001747(n+1)], A001223(n+1)]` -/
def P692394994165803571.Spec : Prop :=
  ∀ n, (P692394994165803571.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P497310360296674968

`eq[Δ[A076368(n+1)], A054541(n+1)]`
-/

namespace A257762.P497310360296674968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A257762.P497310360296674968

namespace A257762

/-- `eq[Δ[A076368(n+1)], A054541(n+1)]` -/
def P497310360296674968.Spec : Prop :=
  ∀ n, (P497310360296674968.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P13296547524282443417

`eq[A001223(n+1), A028334(n+2)]+1`
-/

namespace A257762.P13296547524282443417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257762.P13296547524282443417

namespace A257762

/-- `eq[A001223(n+1), A028334(n+2)]+1` -/
def P13296547524282443417.Spec : Prop :=
  ∀ n, (P13296547524282443417.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P18256539333601857765

`eq[A028334(n+2), A036263(n+1)]+1`
-/

namespace A257762.P18256539333601857765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257762.P18256539333601857765

namespace A257762

/-- `eq[A028334(n+2), A036263(n+1)]+1` -/
def P18256539333601857765.Spec : Prop :=
  ∀ n, (P18256539333601857765.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P11598505045396186194

`eq[2*A051702(n+1), A001223(n+1)]`
-/

namespace A257762.P11598505045396186194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P11598505045396186194

namespace A257762

/-- `eq[2*A051702(n+1), A001223(n+1)]` -/
def P11598505045396186194.Spec : Prop :=
  ∀ n, (P11598505045396186194.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P4535374767793565486

`eq[2*A054541(n+1), A001223(n+1)]`
-/

namespace A257762.P4535374767793565486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P4535374767793565486

namespace A257762

/-- `eq[2*A054541(n+1), A001223(n+1)]` -/
def P4535374767793565486.Spec : Prop :=
  ∀ n, (P4535374767793565486.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P14943582603353156312

`eq[2*A125266(n+1), A001223(n+1)]`
-/

namespace A257762.P14943582603353156312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P14943582603353156312

namespace A257762

/-- `eq[2*A125266(n+1), A001223(n+1)]` -/
def P14943582603353156312.Spec : Prop :=
  ∀ n, (P14943582603353156312.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P116587991490812397

`eq[2*A054541(n+1), Δ[A000040(n+1)]]`
-/

namespace A257762.P116587991490812397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054541 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P116587991490812397

namespace A257762

/-- `eq[2*A054541(n+1), Δ[A000040(n+1)]]` -/
def P116587991490812397.Spec : Prop :=
  ∀ n, (P116587991490812397.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P5165442957364608996

`eq[A001223(n+1), A004277(A054541(n+1))]`
-/

namespace A257762.P5165442957364608996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P5165442957364608996

namespace A257762

/-- `eq[A001223(n+1), A004277(A054541(n+1))]` -/
def P5165442957364608996.Spec : Prop :=
  ∀ n, (P5165442957364608996.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P10663271604293826480

`eq[A004277(A054541(n+1)), A054541(n+2)]`
-/

namespace A257762.P10663271604293826480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A054541 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P10663271604293826480

namespace A257762

/-- `eq[A004277(A054541(n+1)), A054541(n+2)]` -/
def P10663271604293826480.Spec : Prop :=
  ∀ n, (P10663271604293826480.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P8535941269630815504

`eq[2*A001223(A028310(n)), A001223(n+1)]`
-/

namespace A257762.P8535941269630815504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001223 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257762.P8535941269630815504

namespace A257762

/-- `eq[2*A001223(A028310(n)), A001223(n+1)]` -/
def P8535941269630815504.Spec : Prop :=
  ∀ n, (P8535941269630815504.a n : ℤ) = A257762 (n + 1)

end A257762

/-! ## A257762.P6188787834069018815

`A000720(A194581(n+1)-1)`
-/

namespace A257762.P6188787834069018815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A194581 (n + 1) - 1).toNat

end

end A257762.P6188787834069018815

namespace A257762

/-- `A000720(A194581(n+1)-1)` -/
def P6188787834069018815.Spec : Prop :=
  ∀ n, P6188787834069018815.a n = A257762 (n + 1)

end A257762

/-! ## A257762.P16614418905257748076

`A000720(A000010(A194581(n+1)))`
-/

namespace A257762.P16614418905257748076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A194581 (n + 1)).toNat).toNat

end

end A257762.P16614418905257748076

namespace A257762

/-- `A000720(A000010(A194581(n+1)))` -/
def P16614418905257748076.Spec : Prop :=
  ∀ n, P16614418905257748076.a n = A257762 (n + 1)

end A257762

/-!
# A257763: Zeroless numbers n such that n and n^2 have the same set of decimal digits.

The programs for A257763, there is no canonical definition to state claims against.
-/

/-! ## A257763.P7345925826727800749

`filter[A258231(n+1), A068434(#)]`
-/

namespace A257763.P7345925826727800749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068434 (f1 j).toNat = 1) n)

end

end A257763.P7345925826727800749

/-!
# A257764: Lexicographically largest increasing sequence of primes for which the continued square root map (see A257574) produces the decimal expansion of e (Euler's number).

The programs for A257764, there is no canonical definition to state claims against.
-/

/-! ## A257764.P16353348583809864318

`p?[A344214(n+1)-42]`
-/

namespace A257764.P16353348583809864318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344214 (n + 1) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257764.P16353348583809864318

/-! ## A257764.P1646684656031717654

`p?[A348748(n+1)^((gcd(4, n)+1)%4)]`
-/

namespace A257764.P1646684656031717654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1) ^ ((Nat.gcd 4 n + 1) % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257764.P1646684656031717654

/-!
# A257768: Numbers m such that for some power k, m is the sum of d + d^k as d runs through the digits of m.

The programs for A257768, there is no canonical definition to state claims against.
-/

/-! ## A257768.P16173440743360482873

`6*A357579(A038093(n))`
-/

namespace A257768.P16173440743360482873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A357579 (A038093 n).toNat

end

end A257768.P16173440743360482873

/-!
# A257769: Perfect hyper-5 powers: a^^^b, where b <> 1.

The programs for A257769, there is no canonical definition to state claims against.
-/

/-! ## A257769.P796931178393531001

`A257309(n+1)^(1-n)²`
-/

namespace A257769.P796931178393531001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257309 (n + 1) : ℚ) ^ ((1 - (n : ℤ)) ^ 2 : ℤ)

end

end A257769.P796931178393531001

/-!
# A257770: Table read by rows: Row n >= 0 lists numbers k, 0 <= k <= 9, such that n is a Belgian-k number.

The programs for A257770, there is no canonical definition to state claims against.
-/

/-! ## A257770.P3468758604936942829

`((n+1)%A004526(A242474(n+2)))%10`
-/

namespace A257770.P3468758604936942829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A004526 (A242474 (n + 2)).toNat)) 10

end

end A257770.P3468758604936942829

/-! ## A257770.P13151086883198692656

`A320467(2*(n+1))%A126572(C(floor(n/2)+2, 2))`
-/

namespace A257770.P13151086883198692656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320467 (2 * (n + 1))) (A126572 (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2))

end

end A257770.P13151086883198692656

/-! ## A257770.P2785230773656465992

`A257297(lt[A007954(n), A324160(n)])`
-/

namespace A257770.P2785230773656465992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257770.P2785230773656465992

/-! ## A257770.P6574797430246687725

`A047813(A326834(n))%A247227(n+1)`
-/

namespace A257770.P6574797430246687725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047813 (A326834 n).toNat) (A247227 (n + 1))

end

end A257770.P6574797430246687725

/-! ## A257770.P3563187846121776279

`A047813(A326834(n)%A258785(n+1))`
-/

namespace A257770.P3563187846121776279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (Int.tmod (A326834 n) (A258785 (n + 1))).toNat

end

end A257770.P3563187846121776279

/-!
# A257771: Numbers n such that n*k - 1 and n*k + 1 are not both prime for any k < n.

The programs for A257771, there is no canonical definition to state claims against.
-/

/-! ## A257771.P18365515005936246629

`lt[n, A071558(n+1)]+1`
-/

namespace A257771.P18365515005936246629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A257771.P18365515005936246629

/-! ## A257771.P6786690405984916034

`record[gcd(n+1, A226949(n+1))]`
-/

namespace A257771.P6786690405984916034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A226949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257771.P6786690405984916034

/-! ## A257771.P17706763745157806872

`lt[n, A071256(n+1)/(n+1)]+1`
-/

namespace A257771.P17706763745157806872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071256 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A257771.P17706763745157806872

/-! ## A257771.P4585755585959679949

`A133259(lt[n, A071558(n+1)])`
-/

namespace A257771.P4585755585959679949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257771.P4585755585959679949

/-! ## A257771.P3611763996504918438

`A133259(lt[n*A226949(n+1), 2])`
-/

namespace A257771.P3611763996504918438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226949 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A257771.P3611763996504918438

/-!
# A257772: Numbers n>=0 such that (n+1)^3 - n^3 = 3*n^2+3*n+1 is not prime.

The programs for A257772, the canonical program `A257772.P5607000634846873249` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257772 has offset 1).

The definition of A257772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257772.P9261116788127352863

`comp[A111251(n+1)]`
-/

namespace A257772.P9261116788127352863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257772.P9261116788127352863

namespace A257772

/-- `comp[A111251(n+1)]` -/
def P9261116788127352863.Spec : Prop :=
  ∀ n, (P9261116788127352863.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P2803412492615099256

`comp[A002504(n+1)-1]`
-/

namespace A257772.P2803412492615099256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257772.P2803412492615099256

namespace A257772

/-- `comp[A002504(n+1)-1]` -/
def P2803412492615099256.Spec : Prop :=
  ∀ n, (P2803412492615099256.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P4260817247085835118

`comp[floor(A002640(n+1)/3)]`
-/

namespace A257772.P4260817247085835118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002640 (n + 1) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257772.P4260817247085835118

namespace A257772

/-- `comp[floor(A002640(n+1)/3)]` -/
def P4260817247085835118.Spec : Prop :=
  ∀ n, (P4260817247085835118.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P5607000634846873249

`eq[0, A063524(A350090(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257772

/-- `eq[0, A063524(A350090(n))]` -/
def P5607000634846873249.Spec : Prop :=
  ∀ n, (P5607000634846873249.a n : ℤ) = A257772 (n + 1)

theorem P5607000634846873249.correct : P5607000634846873249.Spec := by
  intro n
  simp only [A257772, Nat.add_sub_cancel]

end A257772

/-! ## A257772.P3272777068425153030

`lt[atan(A046691(n)), A350090(n)]`
-/

namespace A257772.P3272777068425153030
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A046691 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A257772.P3272777068425153030

namespace A257772

/-- `lt[atan(A046691(n)), A350090(n)]` -/
def P3272777068425153030.Spec : Prop :=
  ∀ n, (P3272777068425153030.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P2019068073809977338

`lt[atan(A350116(n)-1), A350090(n)]`
-/

namespace A257772.P2019068073809977338
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A350116 n - 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A257772.P2019068073809977338

namespace A257772

/-- `lt[atan(A350116(n)-1), A350090(n)]` -/
def P2019068073809977338.Spec : Prop :=
  ∀ n, (P2019068073809977338.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P5044844388878406418

`eq[A000007(n), A130706(A350090(n))]`
-/

namespace A257772.P5044844388878406418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A350090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257772.P5044844388878406418

namespace A257772

/-- `eq[A000007(n), A130706(A350090(n))]` -/
def P5044844388878406418.Spec : Prop :=
  ∀ n, (P5044844388878406418.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P17910150230031356077

`eq[A130706(n)², A130706(A350090(n))]`
-/

namespace A257772.P17910150230031356077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A350090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257772.P17910150230031356077

namespace A257772

/-- `eq[A130706(n)², A130706(A350090(n))]` -/
def P17910150230031356077.Spec : Prop :=
  ∀ n, (P17910150230031356077.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P7451862013932838361

`eq[A130706(2*n), A130706(A350090(n))]`
-/

namespace A257772.P7451862013932838361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A350090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257772.P7451862013932838361

namespace A257772

/-- `eq[A130706(2*n), A130706(A350090(n))]` -/
def P7451862013932838361.Spec : Prop :=
  ∀ n, (P7451862013932838361.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P5104383284945552617

`lt[A350065(n+1), A350117(A350090(n))+1]`
-/

namespace A257772.P5104383284945552617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350117 (A350090 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257772.P5104383284945552617

namespace A257772

/-- `lt[A350065(n+1), A350117(A350090(n))+1]` -/
def P5104383284945552617.Spec : Prop :=
  ∀ n, (P5104383284945552617.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P16227156573235285229

`lt[A020639(A003215(n)), 2*(n+1)]`
-/

namespace A257772.P16227156573235285229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003215 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A257772.P16227156573235285229

namespace A257772

/-- `lt[A020639(A003215(n)), 2*(n+1)]` -/
def P16227156573235285229.Spec : Prop :=
  ∀ n, (P16227156573235285229.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P9766813483089739705

`lt[A020639(∑[A004277(3*n)]), 2*(n+1)]`
-/

namespace A257772.P9766813483089739705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A257772.P9766813483089739705

namespace A257772

/-- `lt[A020639(∑[A004277(3*n)]), 2*(n+1)]` -/
def P9766813483089739705.Spec : Prop :=
  ∀ n, (P9766813483089739705.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P11540425195784955433

`lt[A020639(6*C(n+1, 2)+1), A271114(n)]`
-/

namespace A257772.P11540425195784955433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * Nat.choose (n + 1) 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257772.P11540425195784955433

namespace A257772

/-- `lt[A020639(6*C(n+1, 2)+1), A271114(n)]` -/
def P11540425195784955433.Spec : Prop :=
  ∀ n, (P11540425195784955433.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P17930426957722947788

`lt[2, A026137(A000005((n+1)*3*n+1)+1)]`
-/

namespace A257772.P17930426957722947788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (A000005 ((n + 1) * (3 * n) + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257772.P17930426957722947788

namespace A257772

/-- `lt[2, A026137(A000005((n+1)*3*n+1)+1)]` -/
def P17930426957722947788.Spec : Prop :=
  ∀ n, (P17930426957722947788.a n : ℤ) = A257772 (n + 1)

end A257772

/-! ## A257772.P1628537091247620490

`eq[1, A000607(A001222(A003215(n)))]`
-/

namespace A257772.P1628537091247620490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A001222 (A003215 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257772.P1628537091247620490

namespace A257772

/-- `eq[1, A000607(A001222(A003215(n)))]` -/
def P1628537091247620490.Spec : Prop :=
  ∀ n, (P1628537091247620490.a n : ℤ) = A257772 (n + 1)

end A257772

/-!
# A257778: Smallest k, such that n is a Belgian-k number.

The programs for A257778, there is no canonical definition to state claims against.
-/

/-! ## A257778.P1980221499541552763

`A257770(∑[A257773(n)]-A257773(n))`
-/

namespace A257778.P1980221499541552763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257770 (∑ j ∈ Finset.range (n + 1), f1 j - A257773 n).toNat

end

end A257778.P1980221499541552763

/-!
# A257779: Largest k, such that n is a Belgian-k number.

The programs for A257779, there is no canonical definition to state claims against.
-/

/-! ## A257779.P11011559142727679286

`A257770(∑[A257773(n)]-1)`
-/

namespace A257779.P11011559142727679286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257770 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A257779.P11011559142727679286

/-!
# A257782: Numbers that are not Belgian-0 numbers.

The programs for A257782, there is no canonical definition to state claims against.
-/

/-! ## A257782.P2588353101789486023

`comp[A106039(n+1)]`
-/

namespace A257782.P2588353101789486023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257782.P2588353101789486023

/-! ## A257782.P17559430975939600428

`lt[0, A257778(n)]`
-/

namespace A257782.P17559430975939600428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257782.P17559430975939600428

/-! ## A257782.P3233305266830556813

`eq[1, A242086(a(A257778(n)))]` with `a(0)=6`
-/

namespace A257782.P3233305266830556813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A242086 (f2 (A257778 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257782.P3233305266830556813

/-! ## A257782.P10742045533991412176

`eq[2, A275720(a(A257778(n)))]` with `a(0)=6`
-/

namespace A257782.P10742045533991412176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A275720 (f2 (A257778 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257782.P10742045533991412176

/-! ## A257782.P15389517188670951866

`eq[1, A003056(ceil(A257778(n)/(n+1)))]`
-/

namespace A257782.P15389517188670951866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈(A257778 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257782.P15389517188670951866

/-!
# A257783: Number T(n,k) of words w of length n such that each letter of the k-ary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A257783, there is no canonical definition to state claims against.
-/

/-! ## A257783.P15628789602534532999

`A226874(n)-A175267(A022166(n))`
-/

namespace A257783.P15628789602534532999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n - A175267 (A022166 n).toNat

end

end A257783.P15628789602534532999

/-! ## A257783.P10463949601247199282

`A226874(n)-A083892(A157149(n))`
-/

namespace A257783.P10463949601247199282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n - A083892 (A157149 n).toNat

end

end A257783.P10463949601247199282

/-! ## A257783.P4201125798607139456

`A226874(n)-A151755(A102365(n))`
-/

namespace A257783.P4201125798607139456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n - A151755 (A102365 n).toNat

end

end A257783.P4201125798607139456

/-! ## A257783.P6401350858212943489

`A226874(n)-A125203(A157156(n))`
-/

namespace A257783.P6401350858212943489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n - A125203 (A157156 n).toNat

end

end A257783.P6401350858212943489

/-! ## A257783.P15148481772430749790

`A226874(n)-A196096(A295682(n))`
-/

namespace A257783.P15148481772430749790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n - A196096 (A295682 n).toNat

end

end A257783.P15148481772430749790

/-!
# A257785: Numbers that are Belgian-k for exactly one k.

The programs for A257785, there is no canonical definition to state claims against.
-/

/-! ## A257785.P11637795995108787565

`eq[1, A257773(n)]`
-/

namespace A257785.P11637795995108787565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257785.P11637795995108787565

/-! ## A257785.P8223236846484036653

`record[(n+1)*(2-A257773(n+1))]`
-/

namespace A257785.P8223236846484036653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A257773 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257785.P8223236846484036653

/-! ## A257785.P3444104732558408861

`eq[A257778(n), A257779(n)]`
-/

namespace A257785.P3444104732558408861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257785.P3444104732558408861

/-! ## A257785.P14506972839740177595

`lt[log2(A257773(n)), A267871(n)]`
-/

namespace A257785.P14506972839740177595
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A257773 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A257785.P14506972839740177595

/-! ## A257785.P13014187125752727142

`lt[A257773(n), A020639(A086909(n+1))]`
-/

namespace A257785.P13014187125752727142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A086909 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257785.P13014187125752727142

/-!
# A257787: Numbers n such that the sum of the digits of n to some power divided by the sum of the digits equal n.

The programs for A257787, there is no canonical definition to state claims against.
-/

/-! ## A257787.P4388275192002828911

`A322847(A254958(n+1))`
-/

namespace A257787.P4388275192002828911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (A254958 (n + 1)).toNat

end

end A257787.P4388275192002828911

/-! ## A257787.P10937150689119990249

`eq[1, A053118(A025155(n))]`
-/

namespace A257787.P10937150689119990249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 (A025155 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257787.P10937150689119990249

/-! ## A257787.P10072574754831746651

`∑[A066799(record[A300549(n)])]`
-/

namespace A257787.P10072574754831746651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257787.P10072574754831746651

/-! ## A257787.P6296898764172363494

`∑[A138262(A058058(n+1))]`
-/

namespace A257787.P6296898764172363494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138262 (A058058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257787.P6296898764172363494

/-! ## A257787.P11091038845848235426

`A347295(A032577(n+1))%83`
-/

namespace A257787.P11091038845848235426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347295 (A032577 (n + 1)).toNat) 83

end

end A257787.P11091038845848235426

/-!
# A257788: Numbers n such that n^3+prime(n) and n^3-prime(n) are prime.

The programs for A257788, there is no canonical definition to state claims against.
-/

/-! ## A257788.P17964328521294590197

`∩[A141526(n+1), A212881(n+1)]`
-/

namespace A257788.P17964328521294590197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257788.P17964328521294590197

/-!
# A257791: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = 2^(n+1)*(2*k - 1), n,k >= 1.

The programs for A257791, the canonical program `A257791.P16391820715187016324` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257791 has offset 1).

The definition of A257791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257791.P16391820715187016324

`4*A054582(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A257791

/-- `4*A054582(n)` -/
def P16391820715187016324.Spec : Prop :=
  ∀ n, P16391820715187016324.a n = A257791 (n + 1)

theorem P16391820715187016324.correct : P16391820715187016324.Spec := by
  intro n
  simp only [A257791, Nat.add_sub_cancel]

end A257791

/-! ## A257791.P11727714426473886388

`4*(A075300(n)+1)`
-/

namespace A257791.P11727714426473886388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A075300 n + 1)

end

end A257791.P11727714426473886388

namespace A257791

/-- `4*(A075300(n)+1)` -/
def P11727714426473886388.Spec : Prop :=
  ∀ n, P11727714426473886388.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P2244908177954696436

`4*(A288870(n)-1)`
-/

namespace A257791.P2244908177954696436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A288870 n - 1)

end

end A257791.P2244908177954696436

namespace A257791

/-- `4*(A288870(n)-1)` -/
def P2244908177954696436.Spec : Prop :=
  ∀ n, P2244908177954696436.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P11015896796072084707

`2*(A241957(n+1)+1)`
-/

namespace A257791.P11015896796072084707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A241957 (n + 1) + 1)

end

end A257791.P11015896796072084707

namespace A257791

/-- `2*(A241957(n+1)+1)` -/
def P11015896796072084707.Spec : Prop :=
  ∀ n, P11015896796072084707.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P3497805617480471414

`4*A135764(A038722(n+1))`
-/

namespace A257791.P3497805617480471414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135764 (A038722 (n + 1)).toNat

end

end A257791.P3497805617480471414

namespace A257791

/-- `4*A135764(A038722(n+1))` -/
def P3497805617480471414.Spec : Prop :=
  ∀ n, P3497805617480471414.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P2566325317979647086

`A090988(n+1)*A174028(n)`
-/

namespace A257791.P2566325317979647086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) * A174028 n

end

end A257791.P2566325317979647086

namespace A257791

/-- `A090988(n+1)*A174028(n)` -/
def P2566325317979647086.Spec : Prop :=
  ∀ n, P2566325317979647086.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P6863186048715329424

`A257852(n+1)+A257499(n+1)`
-/

namespace A257791.P6863186048715329424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257852 (n + 1) + A257499 (n + 1)

end

end A257791.P6863186048715329424

namespace A257791

/-- `A257852(n+1)+A257499(n+1)` -/
def P6863186048715329424.Spec : Prop :=
  ∀ n, P6863186048715329424.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P8195095768399332138

`(A241957(n+1)+1)²/A054582(n)`
-/

namespace A257791.P8195095768399332138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241957 (n + 1) + 1) ^ 2 : ℚ) / (A054582 n : ℚ)

end

end A257791.P8195095768399332138

namespace A257791

/-- `(A241957(n+1)+1)²/A054582(n)` -/
def P8195095768399332138.Spec : Prop :=
  ∀ n, P8195095768399332138.a n = (A257791 (n + 1) : ℚ)

end A257791

/-! ## A257791.P14539216293446692439

`A241957(comp[∑[n]])+1`
-/

namespace A257791.P14539216293446692439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A257791.P14539216293446692439

namespace A257791

/-- `A241957(comp[∑[n]])+1` -/
def P14539216293446692439.Spec : Prop :=
  ∀ n, P14539216293446692439.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P9517151405915036720

`A054582(lt[1, A025581(n)])`
-/

namespace A257791.P9517151405915036720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257791.P9517151405915036720

namespace A257791

/-- `A054582(lt[1, A025581(n)])` -/
def P9517151405915036720.Spec : Prop :=
  ∀ n, P9517151405915036720.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P7001391249357826060

`A054582(lt[1, A242378(n)])`
-/

namespace A257791.P7001391249357826060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257791.P7001391249357826060

namespace A257791

/-- `A054582(lt[1, A242378(n)])` -/
def P7001391249357826060.Spec : Prop :=
  ∀ n, P7001391249357826060.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P12682878942138977878

`A054582(lt[2, A130321(n)])`
-/

namespace A257791.P12682878942138977878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257791.P12682878942138977878

namespace A257791

/-- `A054582(lt[2, A130321(n)])` -/
def P12682878942138977878.Spec : Prop :=
  ∀ n, P12682878942138977878.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P13683239458602139166

`A054582(lt[3, A099375(n)])`
-/

namespace A257791.P13683239458602139166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257791.P13683239458602139166

namespace A257791

/-- `A054582(lt[3, A099375(n)])` -/
def P13683239458602139166.Spec : Prop :=
  ∀ n, P13683239458602139166.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P3441993731994430289

`A054582(lt[2, log2(A130330(n))])`
-/

namespace A257791.P3441993731994430289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130330 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A257791.P3441993731994430289

namespace A257791

/-- `A054582(lt[2, log2(A130330(n))])` -/
def P3441993731994430289.Spec : Prop :=
  ∀ n, P3441993731994430289.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P8128176963738212575

`A054582(lt[1, A007318(n+1)])`
-/

namespace A257791.P8128176963738212575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257791.P8128176963738212575

namespace A257791

/-- `A054582(lt[1, A007318(n+1)])` -/
def P8128176963738212575.Spec : Prop :=
  ∀ n, P8128176963738212575.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P4216422922651930432

`A054582(lt[2, A004736(n+1)])`
-/

namespace A257791.P4216422922651930432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257791.P4216422922651930432

namespace A257791

/-- `A054582(lt[2, A004736(n+1)])` -/
def P4216422922651930432.Spec : Prop :=
  ∀ n, P4216422922651930432.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P4272703731802073936

`A054582(lt[1, A007318(n)]-1)`
-/

namespace A257791.P4272703731802073936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A257791.P4272703731802073936

namespace A257791

/-- `A054582(lt[1, A007318(n)]-1)` -/
def P4272703731802073936.Spec : Prop :=
  ∀ n, P4272703731802073936.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P11599296388566973394

`A054582(lt[1, A130330(n)-2])`
-/

namespace A257791.P11599296388566973394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257791.P11599296388566973394

namespace A257791

/-- `A054582(lt[1, A130330(n)-2])` -/
def P11599296388566973394.Spec : Prop :=
  ∀ n, P11599296388566973394.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P4240324454948563695

`A054582(lt[2, A130330(n)/2])`
-/

namespace A257791.P4240324454948563695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A257791.P4240324454948563695

namespace A257791

/-- `A054582(lt[2, A130330(n)/2])` -/
def P4240324454948563695.Spec : Prop :=
  ∀ n, P4240324454948563695.a n = A257791 (n + 1)

end A257791

/-! ## A257791.P10765068197276565002

`A054582(A131507(n)+2+n)`
-/

namespace A257791.P10765068197276565002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A131507 n + 2 + (n : ℤ)).toNat

end

end A257791.P10765068197276565002

namespace A257791

/-- `A054582(A131507(n)+2+n)` -/
def P10765068197276565002.Spec : Prop :=
  ∀ n, P10765068197276565002.a n = A257791 (n + 1)

end A257791

/-!
# A257792: Expansion of 1/(1-x-x^2-x^3-x^5+x^8-x^9).

The programs for A257792, the canonical program `A257792.P15022976191009756469` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257792 has offset 0).

The definition of A257792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^3-x^5+x^8-x^9))` (program `A257792.P15022976191009756469`, by `A257792.P15022976191009756469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257792.P15022976191009756469

`ogf(1/(1-x-x^2-x^3-x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A257792

/-- `ogf(1/(1-x-x^2-x^3-x^5+x^8-x^9))` -/
def P15022976191009756469.Spec : Prop :=
  ∀ n, P15022976191009756469.a n = A257792 n

theorem P15022976191009756469.correct : P15022976191009756469.Spec := by
  intro n
  simp only [A257792]

end A257792

/-! ## A257792.P11404718073069697809

`a(n-1)+a(n-2)+a(n-3)+a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=14, a(6)=26, a(7)=49, a(8)=92`
-/

namespace A257792.P11404718073069697809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 7, 14, 26, 49, 92] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 5) - a (n - 8) + a (n - 9)

end

end A257792.P11404718073069697809

namespace A257792

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-5)-a(n-8)+a(n-9)` -/
def P11404718073069697809.Spec : Prop :=
  ∀ n, P11404718073069697809.a n = A257792 n

end A257792

/-! ## A257792.P12273007087515538526

`A073188(A148329(n))`
-/

namespace A257792.P12273007087515538526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A148329 n).toNat

end

end A257792.P12273007087515538526

namespace A257792

/-- `A073188(A148329(n))` -/
def P12273007087515538526.Spec : Prop :=
  ∀ n, P12273007087515538526.a n = A257792 n

end A257792

/-! ## A257792.P12634979372499430562

`A276581(A378426(n))`
-/

namespace A257792.P12634979372499430562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A378426 n).toNat

end

end A257792.P12634979372499430562

namespace A257792

/-- `A276581(A378426(n))` -/
def P12634979372499430562.Spec : Prop :=
  ∀ n, P12634979372499430562.a n = A257792 n

end A257792

/-! ## A257792.P12900098025483660381

`A261104(A084086(n)+1-n)`
-/

namespace A257792.P12900098025483660381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A084086 n + (1 - (n : ℤ))).toNat

end

end A257792.P12900098025483660381

namespace A257792

/-- `A261104(A084086(n)+1-n)` -/
def P12900098025483660381.Spec : Prop :=
  ∀ n, P12900098025483660381.a n = A257792 n

end A257792

/-!
# A257795: Bihappy numbers: numbers that reach 1 under iteration of the sum-of-squares-of-two-digits map s_2.

The programs for A257795, there is no canonical definition to state claims against.
-/

/-! ## A257795.P17915435849607805457

`record[(n+1)/A257810(n+1)]`
-/

namespace A257795.P17915435849607805457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A257810 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257795.P17915435849607805457

/-! ## A257795.P8112931725127288161

`record[gcd(floor(n/10), A257950(n+1))]`
-/

namespace A257795.P8112931725127288161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 10⌋ (A257950 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257795.P8112931725127288161

/-! ## A257795.P15873336917231245997

`A257950((n+1)^(1-(∑{digits}[n, #]-n)))`
-/

namespace A257795.P15873336917231245997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A257795.P15873336917231245997

/-! ## A257795.P9256422302125568811

`A257950(A062399(n+1))`
-/

namespace A257795.P9256422302125568811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257950 (A062399 (n + 1)).toNat

end

end A257795.P9256422302125568811

/-! ## A257795.P15990745127533952492

`A257950(A087051(n)+1)`
-/

namespace A257795.P15990745127533952492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257950 (A087051 n + 1).toNat

end

end A257795.P15990745127533952492

/-!
# A257797: Permutation of natural numbers: a(1) = 1, a(triangular(n)) = 1+(2*a(n-1)), a(nontriangular(n)) = 2*n, where triangular = A000217, nontriangular = A014132.

The programs for A257797, there is no canonical definition to state claims against.
-/

/-! ## A257797.P34249694269882987

`A232559(A083047(n)+C(2, A253054(n+1)))`
-/

namespace A257797.P34249694269882987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A083047 n + (Nat.choose 2 (A253054 (n + 1)).toNat : ℤ)).toNat

end

end A257797.P34249694269882987

/-! ## A257797.P7383448770669740386

`A341994(A000578(n))+A232559(A083047(n))`
-/

namespace A257797.P7383448770669740386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A000578 n).toNat + A232559 (A083047 n).toNat

end

end A257797.P7383448770669740386

/-! ## A257797.P13470970969331334300

`A326291(A187330(2*n+1))+A054582(n)`
-/

namespace A257797.P13470970969331334300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A187330 (2 * n + 1)).toNat + A054582 n

end

end A257797.P13470970969331334300

/-! ## A257797.P3176416592530510641

`A054582(n)+A010894(A347872(n+1))`
-/

namespace A257797.P3176416592530510641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n + A010894 ((A347872 (n + 1)).toNat + 21)

end

end A257797.P3176416592530510641

/-! ## A257797.P777758826991889183

`A358654(A345253(A059893(A358654(A083047(n)))))`
-/

namespace A257797.P777758826991889183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358654 (A345253 (A059893 (A358654 (A083047 n).toNat).toNat).toNat).toNat

end

end A257797.P777758826991889183

/-!
# A257799: Parity of binary weight of each term in the infinite trunk of inverted binary beanstalk: a(n) = A010060(A233271(n)).

The programs for A257799, the canonical program `A257799.P15511006834302166355` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257799 has offset 0).

The definition of A257799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257799.P15511006834302166355

`A010060(A233271(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257799

/-- `A010060(A233271(n))` -/
def P15511006834302166355.Spec : Prop :=
  ∀ n, P15511006834302166355.a n = A257799 n

theorem P15511006834302166355.correct : P15511006834302166355.Spec := by
  intro n
  simp only [A257799]

end A257799

/-! ## A257799.P2188838359149419787

`and(A000120(A233271(n)), A001511(2*n+1))`
-/

namespace A257799.P2188838359149419787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A233271 n).toNat) (A001511 (2 * n + 1))

end

end A257799.P2188838359149419787

namespace A257799

/-- `and(A000120(A233271(n)), A001511(2*n+1))` -/
def P2188838359149419787.Spec : Prop :=
  ∀ n, P2188838359149419787.a n = A257799 n

end A257799

/-! ## A257799.P1829991596599328780

`A001285(A233271(n))-A000120(A001316(n))`
-/

namespace A257799.P1829991596599328780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A233271 n).toNat - A000120 (A001316 n).toNat

end

end A257799.P1829991596599328780

namespace A257799

/-- `A001285(A233271(n))-A000120(A001316(n))` -/
def P1829991596599328780.Spec : Prop :=
  ∀ n, P1829991596599328780.a n = A257799 n

end A257799

/-! ## A257799.P5076810527125425553

`A000120(A233271(n))%A001285(A000069(n+1))`
-/

namespace A257799.P5076810527125425553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A233271 n).toNat) (A001285 (A000069 (n + 1)).toNat)

end

end A257799.P5076810527125425553

namespace A257799

/-- `A000120(A233271(n))%A001285(A000069(n+1))` -/
def P5076810527125425553.Spec : Prop :=
  ∀ n, P5076810527125425553.a n = A257799 n

end A257799

/-! ## A257799.P5370904877803602471

`A000120(A001316(n+1))%A001285(A233271(n))`
-/

namespace A257799.P5370904877803602471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A001316 (n + 1)).toNat) (A001285 (A233271 n).toNat)

end

end A257799.P5370904877803602471

namespace A257799

/-- `A000120(A001316(n+1))%A001285(A233271(n))` -/
def P5370904877803602471.Spec : Prop :=
  ∀ n, P5370904877803602471.a n = A257799 n

end A257799

/-! ## A257799.P4853648136573467589

`and(1, A000120(2*A233271(n)))`
-/

namespace A257799.P4853648136573467589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000120 (2 * A233271 n).toNat)

end

end A257799.P4853648136573467589

namespace A257799

/-- `and(1, A000120(2*A233271(n)))` -/
def P4853648136573467589.Spec : Prop :=
  ∀ n, P4853648136573467589.a n = A257799 n

end A257799

