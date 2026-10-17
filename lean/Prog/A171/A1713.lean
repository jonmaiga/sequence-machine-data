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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
import Seq.Opaque.C026

/-!
# A171308: Number of 0..2 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171308, there is no canonical definition to state claims against.
-/

/-! ## A171308.P5520600640518292452

`A171307(∑[n+3]+1)`
-/

namespace A171308.P5520600640518292452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A171308.P5520600640518292452

/-! ## A171308.P2834748501099413226

`record[A171307(A198464(n+1))]`
-/

namespace A171308.P2834748501099413226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171308.P2834748501099413226

/-! ## A171308.P14604930260594816187

`record[A171307(A101881(n+2))]`
-/

namespace A171308.P14604930260594816187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171308.P14604930260594816187

/-! ## A171308.P5673069604333269994

`A171307(A034856(n+2))+char[18]`
-/

namespace A171308.P5673069604333269994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171308.P5673069604333269994

/-! ## A171308.P7695309734772946132

`A007318(C(2, n))*A171307(A034856(n+2))`
-/

namespace A171308.P7695309734772946132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A171307 (A034856 (n + 2)).toNat

end

end A171308.P7695309734772946132

/-!
# A171309: Number of 0..3 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171309, there is no canonical definition to state claims against.
-/

/-! ## A171309.P16086532447841777101

`A171307(∑[n+4]+3)`
-/

namespace A171309.P16086532447841777101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A171309.P16086532447841777101

/-! ## A171309.P16556316415721354625

`or(char[1], A171307(A055998(n+2)))`
-/

namespace A171309.P16556316415721354625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A171307 (A055998 (n + 2)).toNat)

end

end A171309.P16556316415721354625

/-! ## A171309.P6271482158776635552

`A171307(Δ[A034857(n+1)])+char[24]`
-/

namespace A171309.P6271482158776635552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171309.P6271482158776635552

/-! ## A171309.P13923430412796179087

`record[A171307(A141214(val(n+1, 2)+1))]`
-/

namespace A171309.P13923430412796179087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171309.P13923430412796179087

/-! ## A171309.P8406955444015210003

`record[A171307(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A171309.P8406955444015210003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171309.P8406955444015210003

/-!
# A171310: Number of 0..4 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171310, there is no canonical definition to state claims against.
-/

/-! ## A171310.P6983900566797079616

`A171307(∑[n+5]+6)`
-/

namespace A171310.P6983900566797079616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A171310.P6983900566797079616

/-! ## A171310.P1839292818672348889

`or(char[8], A171307(A046691(n+3)))`
-/

namespace A171310.P1839292818672348889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A171307 (A046691 (n + 3)).toNat)

end

end A171310.P1839292818672348889

/-! ## A171310.P4098003611133960348

`A171307(A000124(n+5)-5)*A288120(n)`
-/

namespace A171310.P4098003611133960348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000124 (n + 5) - 5).toNat * A288120 n

end

end A171310.P4098003611133960348

/-! ## A171310.P13783579710759682667

`A217156(n+1)+A171307(A000124(n+5)-5)`
-/

namespace A171310.P13783579710759682667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) + A171307 (A000124 (n + 5) - 5).toNat

end

end A171310.P13783579710759682667

/-! ## A171310.P8206028813727928601

`A171307(A046691(n+3))^A041973(A282189(n+1))`
-/

namespace A171310.P8206028813727928601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171307 (A046691 (n + 3)).toNat : ℚ) ^ (A041973 (A282189 (n + 1)).toNat : ℤ)

end

end A171310.P8206028813727928601

/-!
# A171311: Number of 0..5 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171311, there is no canonical definition to state claims against.
-/

/-! ## A171311.P3114506980935762197

`A171307(∑[n+6]+10)`
-/

namespace A171311.P3114506980935762197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A171311.P3114506980935762197

/-! ## A171311.P14595146370710866712

`A171307(A052905(n+3))+A000007(n+3)`
-/

namespace A171311.P14595146370710866712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A052905 (n + 3)).toNat + A000007 (n + 3)

end

end A171311.P14595146370710866712

/-! ## A171311.P13089796858549591850

`lcm(A077008(n+2), A171307(A052905(n+3)))`
-/

namespace A171311.P13089796858549591850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077008 (n + 2)) (A171307 (A052905 (n + 3)).toNat)

end

end A171311.P13089796858549591850

/-! ## A171311.P7845869617212535841

`A171307(A052905(n+3))%A218190(2*(n+1))`
-/

namespace A171311.P7845869617212535841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171307 (A052905 (n + 3)).toNat) (A218190 (2 * (n + 1)))

end

end A171311.P7845869617212535841

/-! ## A171311.P7741332874194392297

`A171307(A052905(n+3))%A186655(n+2)`
-/

namespace A171311.P7741332874194392297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171307 (A052905 (n + 3)).toNat) (A186655 (n + 2))

end

end A171311.P7741332874194392297

/-!
# A171312: Number of 0..6 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171312, there is no canonical definition to state claims against.
-/

/-! ## A171312.P11040476946837104001

`A171307(A055999(n+4))`
-/

namespace A171312.P11040476946837104001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A055999 (n + 4)).toNat

end

end A171312.P11040476946837104001

/-! ## A171312.P8725061971801158189

`A171307(eq[4, A219347(n)])`
-/

namespace A171312.P8725061971801158189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171312.P8725061971801158189

/-! ## A171312.P5565039706925078498

`A171307(eq[6, A193592(n)])`
-/

namespace A171312.P5565039706925078498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171312.P5565039706925078498

/-! ## A171312.P12471770870778037550

`A171307(Δ[A023551(n+2)])`
-/

namespace A171312.P12471770870778037550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (f1 (n + 1) - f1 n).toNat

end

end A171312.P12471770870778037550

/-! ## A171312.P16537737833596464590

`A171307(A155212(n+3)+2)`
-/

namespace A171312.P16537737833596464590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A155212 (n + 3) + 2).toNat

end

end A171312.P16537737833596464590

/-!
# A171313: Number of 0..7 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171313, there is no canonical definition to state claims against.
-/

/-! ## A171313.P9690880005911089905

`A171307(eq[5, A219347(n)])`
-/

namespace A171313.P9690880005911089905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171313.P9690880005911089905

/-! ## A171313.P12932524576327536297

`A171307(eq[7, A193592(n)])`
-/

namespace A171313.P12932524576327536297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171313.P12932524576327536297

/-! ## A171313.P14006157576460696504

`A171307(eq[64, A166065(n)])`
-/

namespace A171313.P14006157576460696504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171313.P14006157576460696504

/-! ## A171313.P8391544653701858100

`A171307(A155212(n+4)+1)`
-/

namespace A171313.P8391544653701858100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A155212 (n + 4) + 1).toNat

end

end A171313.P8391544653701858100

/-! ## A171313.P9509042091417318228

`A171307(A052905(n+5)-2)`
-/

namespace A171313.P9509042091417318228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A052905 (n + 5) - 2).toNat

end

end A171313.P9509042091417318228

/-!
# A171314: Number of 0..8 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171314, there is no canonical definition to state claims against.
-/

/-! ## A171314.P17657461133533310080

`A171307(C(n+9, 2)+n+1)`
-/

namespace A171314.P17657461133533310080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (Nat.choose (n + 9) 2 + (n + 1))

end

end A171314.P17657461133533310080

/-! ## A171314.P8476405974092186783

`A171307(A155212(n+5))`
-/

namespace A171314.P8476405974092186783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A155212 (n + 5)).toNat

end

end A171314.P8476405974092186783

/-! ## A171314.P1004064595534805524

`A171307(eq[6, A219347(n)])`
-/

namespace A171314.P1004064595534805524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171314.P1004064595534805524

/-! ## A171314.P7907679581323777368

`A171307(eq[8, A193592(n)])`
-/

namespace A171314.P7907679581323777368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171314.P7907679581323777368

/-! ## A171314.P7962033041009362072

`A171307(A051936(n+9)+1)`
-/

namespace A171314.P7962033041009362072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A051936 (n + 9) + 1).toNat

end

end A171314.P7962033041009362072

/-!
# A171315: Number of 0..9 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171315, there is no canonical definition to state claims against.
-/

/-! ## A171315.P8975029136697560157

`A171307(eq[8, A219347(n)])`
-/

namespace A171315.P8975029136697560157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171315.P8975029136697560157

/-! ## A171315.P205450569872911852

`A171307(eq[9, A193592(n)])`
-/

namespace A171315.P205450569872911852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171315.P205450569872911852

/-! ## A171315.P11635155083484636792

`A171307(A055999(n+7)-3)`
-/

namespace A171315.P11635155083484636792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A055999 (n + 7) - 3).toNat

end

end A171315.P11635155083484636792

/-! ## A171315.P8463741949663196442

`A171307(A000124(n+10)-10)`
-/

namespace A171315.P8463741949663196442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000124 (n + 10) - 10).toNat

end

end A171315.P8463741949663196442

/-! ## A171315.P15802472483206307168

`A171307(eq[10, A194959(n+5)])`
-/

namespace A171315.P15802472483206307168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171315.P15802472483206307168

/-!
# A171316: Number of 0..10 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171316, there is no canonical definition to state claims against.
-/

/-! ## A171316.P9563984973890867471

`A171307(A056000(n+7))`
-/

namespace A171316.P9563984973890867471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A056000 (n + 7)).toNat

end

end A171316.P9563984973890867471

/-! ## A171316.P5204498633471300729

`A171307(eq[10, A193592(n)])`
-/

namespace A171316.P5204498633471300729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171316.P5204498633471300729

/-! ## A171316.P18296344925544427125

`A171307(eq[10, A219347(n)])`
-/

namespace A171316.P18296344925544427125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171316.P18296344925544427125

/-! ## A171316.P11561292335693423243

`A171307(eq[10, A025581(n)]+1)`
-/

namespace A171316.P11561292335693423243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171316.P11561292335693423243

/-! ## A171316.P18296698802328150659

`A171307(eq[18, A185782(n+1)])`
-/

namespace A171316.P18296698802328150659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171316.P18296698802328150659

/-!
# A171317: Number of 0..11 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171317, there is no canonical definition to state claims against.
-/

/-! ## A171317.P14613252119149846004

`A171307(eq[11, A193592(n)])`
-/

namespace A171317.P14613252119149846004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171317.P14613252119149846004

/-! ## A171317.P7855917514306058512

`A171307(eq[12, A219347(n)])`
-/

namespace A171317.P7855917514306058512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171317.P7855917514306058512

/-! ## A171317.P2775358578132470779

`A171307(eq[20, A185782(n+1)])`
-/

namespace A171317.P2775358578132470779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171317.P2775358578132470779

/-! ## A171317.P13469001871505038319

`A171307(A000217(n+11)+n+1)`
-/

namespace A171317.P13469001871505038319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000217 (n + 11) + (n + 1 : ℤ)).toNat

end

end A171317.P13469001871505038319

/-! ## A171317.P3204883835531601241

`A171307(A161680(n+12)+1+n)`
-/

namespace A171317.P3204883835531601241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A161680 (n + 12) + 1 + (n : ℤ)).toNat

end

end A171317.P3204883835531601241

/-!
# A171318: Number of 0..12 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171318, there is no canonical definition to state claims against.
-/

/-! ## A171318.P7629839664414253443

`A171307(eq[12, A193592(n)])`
-/

namespace A171318.P7629839664414253443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171318.P7629839664414253443

/-! ## A171318.P14929211317884641394

`A171307(eq[15, A219347(n)])`
-/

namespace A171318.P14929211317884641394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171318.P14929211317884641394

/-! ## A171318.P344539921847931764

`A171307(eq[22, A185782(n+1)])`
-/

namespace A171318.P344539921847931764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171318.P344539921847931764

/-! ## A171318.P7627512116832747662

`A171307(A000217(n+12)+n+1)`
-/

namespace A171318.P7627512116832747662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000217 (n + 12) + (n + 1 : ℤ)).toNat

end

end A171318.P7627512116832747662

/-!
# A171319: Number of 0..13 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171319, there is no canonical definition to state claims against.
-/

/-! ## A171319.P7135899937553474653

`A171307(eq[13, A193592(n)])`
-/

namespace A171319.P7135899937553474653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171319.P7135899937553474653

/-! ## A171319.P10515339301170868591

`A171307(eq[18, A219347(n)])`
-/

namespace A171319.P10515339301170868591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171319.P10515339301170868591

/-!
# A171320: Number of 0..14 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171320, there is no canonical definition to state claims against.
-/

/-! ## A171320.P13377931538460769033

`A171307(eq[14, A193592(n)])`
-/

namespace A171320.P13377931538460769033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171320.P13377931538460769033

/-! ## A171320.P18188697748556898224

`A171307(eq[22, A219347(n)])`
-/

namespace A171320.P18188697748556898224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171320.P18188697748556898224

/-! ## A171320.P16107998063245026074

`A171307(A168109(n+4)+A043317(n+1))`
-/

namespace A171320.P16107998063245026074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A168109 (n + 4) + A043317 (n + 1)).toNat

end

end A171320.P16107998063245026074

/-!
# A171321: Number of 0..15 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171321, there is no canonical definition to state claims against.
-/

/-! ## A171321.P16515892302572128779

`A171307(eq[15, A193592(n)])`
-/

namespace A171321.P16515892302572128779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171321.P16515892302572128779

/-! ## A171321.P17846107920974757548

`A171307(eq[27, A219347(n)])`
-/

namespace A171321.P17846107920974757548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171321.P17846107920974757548

/-!
# A171322: Number of 0..16 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171322, there is no canonical definition to state claims against.
-/

/-! ## A171322.P11423355059025054302

`A171307(eq[16, A193592(n)])`
-/

namespace A171322.P11423355059025054302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171322.P11423355059025054302

/-!
# A171338: Number of permutations of 0..n-1 v[1..n] with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171338, there is no canonical definition to state claims against.
-/

/-! ## A171338.P1096049736454342421

`A014320(Δ[A002135(n)]+1)`
-/

namespace A171338.P1096049736454342421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (f1 (n + 1) - f1 n + 1).toNat

end

end A171338.P1096049736454342421

/-! ## A171338.P1508649478314356343

`A215700(n+1)+∑[A014437(n)]`
-/

namespace A171338.P1508649478314356343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215700 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171338.P1508649478314356343

/-!
# A171339: Number of permutations of 1..n v[1..n] with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171339, there is no canonical definition to state claims against.
-/

/-! ## A171339.P8900521479722082000

`A071996(3*(n+1)!)`
-/

namespace A171339.P8900521479722082000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (3 * Nat.factorial (n + 1))

end

end A171339.P8900521479722082000

/-! ## A171339.P10960228390535389484

`A172308(A138803(n+1))+1`
-/

namespace A171339.P10960228390535389484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (A138803 (n + 1)).toNat + 1

end

end A171339.P10960228390535389484

/-!
# A171340: Number of 1..n integer arrays v[1..3] of length 3 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..2.

The programs for A171340, there is no canonical definition to state claims against.
-/

/-! ## A171340.P1279096010688031220

`A171275(∑[n+2]+4)`
-/

namespace A171340.P1279096010688031220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A171340.P1279096010688031220

/-! ## A171340.P7339554162093322101

`A171275(A167614(n+1))+char[23]`
-/

namespace A171340.P7339554162093322101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171340.P7339554162093322101

/-! ## A171340.P11423402429424682928

`record[gcd(A171275(n+1), A303913(n))]`
-/

namespace A171340.P11423402429424682928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171275 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171340.P11423402429424682928

/-! ## A171340.P3757582007700165560

`A171275(A000096(n+1)+4)+char[19]`
-/

namespace A171340.P3757582007700165560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171340.P3757582007700165560

/-! ## A171340.P3093465020796769623

`record[gcd(A171275(n+5), A185782(n+2))]`
-/

namespace A171340.P3093465020796769623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171275 (n + 5)) (A185782 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171340.P3093465020796769623

/-!
# A171341: Number of 1..n integer arrays v[1..4] of length 4 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..3.

The programs for A171341, there is no canonical definition to state claims against.
-/

/-! ## A171341.P18330643129051470991

`A171275(∑[n+3]+7)`
-/

namespace A171341.P18330643129051470991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A171341.P18330643129051470991

/-! ## A171341.P13526008906407480971

`A171275(A055999(n)+10)+char[19]`
-/

namespace A171341.P13526008906407480971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171341.P13526008906407480971

/-! ## A171341.P11052033538879539949

`or(char[1], A171275(A052905(n)+9))`
-/

namespace A171341.P11052033538879539949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A171275 (A052905 n + 9).toNat)

end

end A171341.P11052033538879539949

/-! ## A171341.P9900745256090635645

`A007318(C(2, n))*A171275(A052905(n)+9)`
-/

namespace A171341.P9900745256090635645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A171275 (A052905 n + 9).toNat

end

end A171341.P9900745256090635645

/-! ## A171341.P7815301467949178562

`∑{d}[A171275(A055999(n)+10), A000010(#)]`
-/

namespace A171341.P7815301467949178562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A171341.P7815301467949178562

/-!
# A171342: Number of 1..n integer arrays v[1..5] of length 5 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..4.

The programs for A171342, there is no canonical definition to state claims against.
-/

/-! ## A171342.P18391514637527316792

`A171275(∑[n+4]+11)`
-/

namespace A171342.P18391514637527316792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A171342.P18391514637527316792

/-! ## A171342.P15430211090228454840

`A185284(n)+A171275(A167499(n+3))`
-/

namespace A171342.P15430211090228454840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A171275 (A167499 (n + 3)).toNat

end

end A171342.P15430211090228454840

/-! ## A171342.P4568395392659587867

`or(A025460(n), A171275(A167499(n+3)))`
-/

namespace A171342.P4568395392659587867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025460 n) (A171275 (A167499 (n + 3)).toNat)

end

end A171342.P4568395392659587867

/-! ## A171342.P13951434595788069373

`A171275(A167499(n+3))+A000038(2*(n+1))`
-/

namespace A171342.P13951434595788069373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167499 (n + 3)).toNat + A000038 (2 * (n + 1))

end

end A171342.P13951434595788069373

/-! ## A171342.P3889249870341481371

`A302048(A171391(n+1))+A171275(A167499(n+3))`
-/

namespace A171342.P3889249870341481371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A171391 (n + 1)).toNat + A171275 (A167499 (n + 3)).toNat

end

end A171342.P3889249870341481371

/-!
# A171343: Number of 1..n integer arrays v[1..6] of length 6 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..5.

The programs for A171343, there is no canonical definition to state claims against.
-/

/-! ## A171343.P12121755999113600560

`A171275(A166136(n+4))`
-/

namespace A171343.P12121755999113600560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A166136 (n + 4)).toNat

end

end A171343.P12121755999113600560

/-! ## A171343.P6000348544397762760

`A171275(A056115(n)+21)`
-/

namespace A171343.P6000348544397762760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A056115 n + 21).toNat

end

end A171343.P6000348544397762760

/-! ## A171343.P1525091907743026049

`A171275(eq[6, A256910(n)])`
-/

namespace A171343.P1525091907743026049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171343.P1525091907743026049

/-! ## A171343.P8365533789180206480

`A171275(A167499(n+4)+1)`
-/

namespace A171343.P8365533789180206480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167499 (n + 4) + 1).toNat

end

end A171343.P8365533789180206480

/-! ## A171343.P11546980259061885202

`A171275(A167614(n+4)+3)`
-/

namespace A171343.P11546980259061885202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167614 (n + 4) + 3).toNat

end

end A171343.P11546980259061885202

/-!
# A171344: Number of 1..n integer arrays v[1..7] of length 7 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..6.

The programs for A171344, there is no canonical definition to state claims against.
-/

/-! ## A171344.P16848725099069822210

`A171275(A167487(n+5))`
-/

namespace A171344.P16848725099069822210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167487 (n + 5)).toNat

end

end A171344.P16848725099069822210

/-! ## A171344.P15978163864978971619

`A171275(A056119(n)+28)`
-/

namespace A171344.P15978163864978971619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A056119 n + 28).toNat

end

end A171344.P15978163864978971619

/-! ## A171344.P17227463265671163146

`A171275(eq[11, A066657(n)])`
-/

namespace A171344.P17227463265671163146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171344.P17227463265671163146

/-! ## A171344.P4567670341504174193

`A171275(A166136(n+5)+1)`
-/

namespace A171344.P4567670341504174193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A166136 (n + 5) + 1).toNat

end

end A171344.P4567670341504174193

/-! ## A171344.P6794808341856201801

`A171275(A167499(n+5)+2)`
-/

namespace A171344.P6794808341856201801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167499 (n + 5) + 2).toNat

end

end A171344.P6794808341856201801

/-!
# A171345: Number of 1..n integer arrays v[1..8] of length 8 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..7.

The programs for A171345, there is no canonical definition to state claims against.
-/

/-! ## A171345.P6846616358068227807

`A171275(eq[13, A066657(n)])`
-/

namespace A171345.P6846616358068227807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171345.P6846616358068227807

/-! ## A171345.P17462794749951878225

`A171275(A167487(n+6)+1)`
-/

namespace A171345.P17462794749951878225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167487 (n + 6) + 1).toNat

end

end A171345.P17462794749951878225

/-! ## A171345.P6578325950184469332

`A171275(A167614(n+6)+5)`
-/

namespace A171345.P6578325950184469332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A167614 (n + 6) + 5).toNat

end

end A171345.P6578325950184469332

/-! ## A171345.P11979798106374557511

`A171275(A000124(n+7)+7)`
-/

namespace A171345.P11979798106374557511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000124 (n + 7) + 7).toNat

end

end A171345.P11979798106374557511

/-! ## A171345.P11687078632615633248

`A171275(eq[9, A131818(n+1)])`
-/

namespace A171345.P11687078632615633248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171345.P11687078632615633248

/-!
# A171346: Number of 1..n integer arrays v[1..9] of length 9 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..8.

The programs for A171346, there is no canonical definition to state claims against.
-/

/-! ## A171346.P16347289619794316742

`A171275(eq[17, A066657(n)])`
-/

namespace A171346.P16347289619794316742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171346.P16347289619794316742

/-! ## A171346.P6021758943375597675

`A171275(A000217(n+8)+9)`
-/

namespace A171346.P6021758943375597675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000217 (n + 8) + 9).toNat

end

end A171346.P6021758943375597675

/-! ## A171346.P14780939468385600090

`A171275(eq[8, A002262(n)]+1)`
-/

namespace A171346.P14780939468385600090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171346.P14780939468385600090

/-! ## A171346.P16443564792048686863

`A171275(eq[10, A131818(n+1)])`
-/

namespace A171346.P16443564792048686863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171346.P16443564792048686863

/-! ## A171346.P494468143105973648

`A171275(eq[9, A002260(n+1)]+1)`
-/

namespace A171346.P494468143105973648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171346.P494468143105973648

/-!
# A171347: Number of 1..n integer arrays v[1..10] of length 10 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..9.

The programs for A171347, there is no canonical definition to state claims against.
-/

/-! ## A171347.P4079210554088075847

`A171275(A000217(n+9)+10)`
-/

namespace A171347.P4079210554088075847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000217 (n + 9) + 10).toNat

end

end A171347.P4079210554088075847

/-! ## A171347.P13407822689636650190

`A171275(eq[9, A002262(n)]+1)`
-/

namespace A171347.P13407822689636650190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171347.P13407822689636650190

/-! ## A171347.P16955271530147221882

`A171275(eq[11, A131818(n+1)])`
-/

namespace A171347.P16955271530147221882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171347.P16955271530147221882

/-! ## A171347.P8688090735134614963

`A171275(eq[11, A237448(n+1)])`
-/

namespace A171347.P8688090735134614963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171347.P8688090735134614963

/-! ## A171347.P4133792805318216952

`A171275(C(A102357(n+1), 2)-n)`
-/

namespace A171347.P4133792805318216952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (Nat.choose (A102357 (n + 1)).toNat 2 - n)

end

end A171347.P4133792805318216952

/-!
# A171348: Number of 1..n integer arrays v[1..11] of length 11 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..10.

The programs for A171348, there is no canonical definition to state claims against.
-/

/-! ## A171348.P8899899246631684363

`A171275(eq[19, A066657(n)])`
-/

namespace A171348.P8899899246631684363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171348.P8899899246631684363

/-! ## A171348.P4759869590922111316

`A171275(eq[12, A131818(n+1)])`
-/

namespace A171348.P4759869590922111316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171348.P4759869590922111316

/-! ## A171348.P213077102354827695

`A171275(eq[12, A237448(n+1)])`
-/

namespace A171348.P213077102354827695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171348.P213077102354827695

/-!
# A171349: Number of 1..n integer arrays v[1..12] of length 12 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..11.

The programs for A171349, there is no canonical definition to state claims against.
-/

/-! ## A171349.P12926303085195310591

`A171275(eq[23, A066657(n)])`
-/

namespace A171349.P12926303085195310591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171349.P12926303085195310591

/-! ## A171349.P3881349666634132049

`A171275(eq[11, A002262(n)]+1)`
-/

namespace A171349.P3881349666634132049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171349.P3881349666634132049

/-! ## A171349.P15165648606646676464

`A171275(eq[13, A131818(n+1)])`
-/

namespace A171349.P15165648606646676464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171349.P15165648606646676464

/-! ## A171349.P14054793318590760161

`A171275(eq[13, A237448(n+1)])`
-/

namespace A171349.P14054793318590760161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171349.P14054793318590760161

/-!
# A171350: Number of 1..n integer arrays v[1..13] of length 13 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..12.

The programs for A171350, there is no canonical definition to state claims against.
-/

/-! ## A171350.P15622758175654194368

`A171275(eq[29, A066657(n)])`
-/

namespace A171350.P15622758175654194368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171350.P15622758175654194368

/-! ## A171350.P2578576685711519970

`A171275(eq[12, A025668(n+1)])`
-/

namespace A171350.P2578576685711519970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171350.P2578576685711519970

/-! ## A171350.P3461554062188675345

`A171275(eq[14, A131818(n+1)])`
-/

namespace A171350.P3461554062188675345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171350.P3461554062188675345

/-! ## A171350.P9521525681828075739

`A171275(eq[14, A237448(n+1)])`
-/

namespace A171350.P9521525681828075739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171350.P9521525681828075739

/-!
# A171351: Number of 1..n integer arrays v[1..14] of length 14 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..13.

The programs for A171351, there is no canonical definition to state claims against.
-/

/-! ## A171351.P520821712448859402

`A171275(eq[31, A066657(n)])`
-/

namespace A171351.P520821712448859402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171351.P520821712448859402

/-! ## A171351.P12102745802778041296

`A171275(eq[15, A131818(n+1)])`
-/

namespace A171351.P12102745802778041296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171351.P12102745802778041296

/-! ## A171351.P10748621868471216130

`A171275(A000217(n+14)-n)`
-/

namespace A171351.P10748621868471216130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000217 (n + 14) - (n : ℤ)).toNat

end

end A171351.P10748621868471216130

/-!
# A171352: Number of 1..n integer arrays v[1..15] of length 15 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..14.

The programs for A171352, there is no canonical definition to state claims against.
-/

/-! ## A171352.P6821430183705847979

`A171275(eq[16, A131818(n+1)])`
-/

namespace A171352.P6821430183705847979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171352.P6821430183705847979

/-!
# A171353: Number of 1..n integer arrays v[1..16] of length 16 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..15.

The programs for A171353, there is no canonical definition to state claims against.
-/

/-! ## A171353.P8430365190282810089

`A171275(eq[41, A066657(n)])`
-/

namespace A171353.P8430365190282810089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171353.P8430365190282810089

/-!
# A171354: Number of 0..n-1 integer arrays v[1..3] of length 3 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..2.

The programs for A171354, there is no canonical definition to state claims against.
-/

/-! ## A171354.P5307301199747389100

`A171307(∑[n+2]+4)`
-/

namespace A171354.P5307301199747389100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A171354.P5307301199747389100

/-! ## A171354.P18234939951490409825

`A171307(A167614(n+1))+char[24]`
-/

namespace A171354.P18234939951490409825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171354.P18234939951490409825

/-! ## A171354.P808887059398374218

`A171307(A167499(n)+n)+char[24]`
-/

namespace A171354.P808887059398374218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171354.P808887059398374218

/-! ## A171354.P6039189836207460294

`A185037(n)+A171307(A167614(n+1))`
-/

namespace A171354.P6039189836207460294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + A171307 (A167614 (n + 1)).toNat

end

end A171354.P6039189836207460294

/-! ## A171354.P14869861898873049552

`A185284(n)+A171307(A167614(n+1))`
-/

namespace A171354.P14869861898873049552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A171307 (A167614 (n + 1)).toNat

end

end A171354.P14869861898873049552

/-!
# A171355: Number of 0..n-1 integer arrays v[1..4] of length 4 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..3.

The programs for A171355, there is no canonical definition to state claims against.
-/

/-! ## A171355.P14756392630617424189

`A171307(∑[n+3]+7)`
-/

namespace A171355.P14756392630617424189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A171355.P14756392630617424189

/-! ## A171355.P7552135247254353729

`or(char[1], A171307(A046691(n+1)+8))`
-/

namespace A171355.P7552135247254353729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A171307 (A046691 (n + 1) + 8).toNat)

end

end A171355.P7552135247254353729

/-! ## A171355.P11119528108055597447

`lcm((-1)^n, A171307(A052905(n)+9))`
-/

namespace A171355.P11119528108055597447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A171307 (A052905 n + 9).toNat)

end

end A171355.P11119528108055597447

/-! ## A171355.P7358521116079948834

`A033999(n)²*A171307(A055999(n)+10)`
-/

namespace A171355.P7358521116079948834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A171307 (A055999 n + 10).toNat

end

end A171355.P7358521116079948834

/-! ## A171355.P14855406136729792099

`A171307(A055999(n)+10)^A340596(2*n+1)`
-/

namespace A171355.P14855406136729792099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171307 (A055999 n + 10).toNat : ℚ) ^ (A340596 (2 * n + 1) : ℤ)

end

end A171355.P14855406136729792099

/-!
# A171356: Number of 0..n-1 integer arrays v[1..5] of length 5 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..4.

The programs for A171356, there is no canonical definition to state claims against.
-/

/-! ## A171356.P1525563747804642633

`A171307(∑[n+4]+11)`
-/

namespace A171356.P1525563747804642633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A171356.P1525563747804642633

/-! ## A171356.P4499211626313741259

`A057427(n)*A171307(A167499(n+3))`
-/

namespace A171356.P4499211626313741259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A171307 (A167499 (n + 3)).toNat

end

end A171356.P4499211626313741259

/-! ## A171356.P1431839073300706570

`A171307(A056000(n)+15)%A000515(n)`
-/

namespace A171356.P1431839073300706570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171307 (A056000 n + 15).toNat) (A000515 n)

end

end A171356.P1431839073300706570

/-! ## A171356.P1970144830884809770

`A324731(n+1)+A171307(A167499(n+3))`
-/

namespace A171356.P1970144830884809770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1) + A171307 (A167499 (n + 3)).toNat

end

end A171356.P1970144830884809770

/-! ## A171356.P6185597720982754341

`A097031(n+1)*A171307(A167499(n+3))`
-/

namespace A171356.P6185597720982754341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1) * A171307 (A167499 (n + 3)).toNat

end

end A171356.P6185597720982754341

/-!
# A171357: Number of 0..n-1 integer arrays v[1..6] of length 6 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..5.

The programs for A171357, there is no canonical definition to state claims against.
-/

/-! ## A171357.P12654795261192043101

`A171307(∑[n+5]+16)`
-/

namespace A171357.P12654795261192043101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A171357.P12654795261192043101

/-!
# A171358: Number of 0..n-1 integer arrays v[1..7] of length 7 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..6.

The programs for A171358, there is no canonical definition to state claims against.
-/

/-! ## A171358.P17707706362546049830

`A171307(A167487(n+5))`
-/

namespace A171358.P17707706362546049830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A167487 (n + 5)).toNat

end

end A171358.P17707706362546049830

/-! ## A171358.P6440185612045167038

`A171307(A056119(n)+28)`
-/

namespace A171358.P6440185612045167038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A056119 n + 28).toNat

end

end A171358.P6440185612045167038

/-! ## A171358.P14190319671360952902

`A171307(eq[11, A066657(n)])`
-/

namespace A171358.P14190319671360952902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171358.P14190319671360952902

/-! ## A171358.P2243625496379840712

`A171307(A166136(n+5)+1)`
-/

namespace A171358.P2243625496379840712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A166136 (n + 5) + 1).toNat

end

end A171358.P2243625496379840712

/-! ## A171358.P7776180748326613361

`A171307(A167499(n+5)+2)`
-/

namespace A171358.P7776180748326613361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A167499 (n + 5) + 2).toNat

end

end A171358.P7776180748326613361

/-!
# A171359: Number of 0..n-1 integer arrays v[1..8] of length 8 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..7.

The programs for A171359, there is no canonical definition to state claims against.
-/

/-! ## A171359.P7468228723258011445

`A171307(eq[13, A066657(n)])`
-/

namespace A171359.P7468228723258011445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171359.P7468228723258011445

/-! ## A171359.P1133730923797227757

`A171307(A000217(n+7)+8)`
-/

namespace A171359.P1133730923797227757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000217 (n + 7) + 8).toNat

end

end A171359.P1133730923797227757

/-! ## A171359.P5625293424739883265

`A171307(A161680(n+8)+8)`
-/

namespace A171359.P5625293424739883265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A161680 (n + 8) + 8).toNat

end

end A171359.P5625293424739883265

/-! ## A171359.P14201798427805585367

`A171307(eq[7, A002262(n)]+1)`
-/

namespace A171359.P14201798427805585367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171359.P14201798427805585367

/-! ## A171359.P2016761075505826484

`A171307(eq[9, A131818(n+1)])`
-/

namespace A171359.P2016761075505826484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171359.P2016761075505826484

/-!
# A171360: Number of 0..n-1 integer arrays v[1..9] of length 9 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..8.

The programs for A171360, there is no canonical definition to state claims against.
-/

/-! ## A171360.P10257432542491255429

`A171307(eq[17, A066657(n)])`
-/

namespace A171360.P10257432542491255429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171360.P10257432542491255429

/-! ## A171360.P17179458411682954647

`A171307(A167499(n+7)+4)`
-/

namespace A171360.P17179458411682954647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A167499 (n + 7) + 4).toNat

end

end A171360.P17179458411682954647

/-! ## A171360.P17774526927703405875

`A171307(A000124(n+8)+8)`
-/

namespace A171360.P17774526927703405875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000124 (n + 8) + 8).toNat

end

end A171360.P17774526927703405875

/-! ## A171360.P8101986350425884641

`A171307(A155212(n+4)+17)`
-/

namespace A171360.P8101986350425884641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A155212 (n + 4) + 17).toNat

end

end A171360.P8101986350425884641

/-! ## A171360.P9913267852225159570

`A171307(eq[8, A002262(n)]+1)`
-/

namespace A171360.P9913267852225159570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171360.P9913267852225159570

/-!
# A171361: Number of 0..n-1 integer arrays v[1..10] of length 10 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..9.

The programs for A171361, there is no canonical definition to state claims against.
-/

/-! ## A171361.P5494985384695290239

`A171307(A168109(n)-n)`
-/

namespace A171361.P5494985384695290239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A168109 n - (n : ℤ)).toNat

end

end A171361.P5494985384695290239

/-! ## A171361.P4997435075246745437

`A171307(A167614(n+8)+7)`
-/

namespace A171361.P4997435075246745437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A167614 (n + 8) + 7).toNat

end

end A171361.P4997435075246745437

/-! ## A171361.P3888040702618133519

`A171307(A161680(n+10)+10)`
-/

namespace A171361.P3888040702618133519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A161680 (n + 10) + 10).toNat

end

end A171361.P3888040702618133519

/-! ## A171361.P1221080172418994486

`A171307(eq[10, A130270(n+1)])`
-/

namespace A171361.P1221080172418994486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171361.P1221080172418994486

/-! ## A171361.P6237070697596871748

`A171307(eq[11, A123229(n+1)])`
-/

namespace A171361.P6237070697596871748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171361.P6237070697596871748

/-!
# A171362: Number of 0..n-1 integer arrays v[1..11] of length 11 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..10.

The programs for A171362, there is no canonical definition to state claims against.
-/

/-! ## A171362.P16590246549824349987

`A171307(A168109(n)+11)`
-/

namespace A171362.P16590246549824349987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A168109 n + 11).toNat

end

end A171362.P16590246549824349987

/-! ## A171362.P9682675736435490291

`A171307(eq[19, A066657(n)])`
-/

namespace A171362.P9682675736435490291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171362.P9682675736435490291

/-! ## A171362.P17782394952209864564

`A171307(A167499(n+9)+6)`
-/

namespace A171362.P17782394952209864564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A167499 (n + 9) + 6).toNat

end

end A171362.P17782394952209864564

/-! ## A171362.P1478374761285525861

`A171307(A000217(n+10)+11)`
-/

namespace A171362.P1478374761285525861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000217 (n + 10) + 11).toNat

end

end A171362.P1478374761285525861

/-! ## A171362.P17509749122565584769

`A171307(A161680(n+11)+11)`
-/

namespace A171362.P17509749122565584769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A161680 (n + 11) + 11).toNat

end

end A171362.P17509749122565584769

/-!
# A171363: Number of 0..n-1 integer arrays v[1..12] of length 12 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..11.

The programs for A171363, there is no canonical definition to state claims against.
-/

/-! ## A171363.P3991574406323406924

`A171307(eq[23, A066657(n)])`
-/

namespace A171363.P3991574406323406924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171363.P3991574406323406924

/-! ## A171363.P3485322687664405616

`A171307(A000096(n+10)+13)`
-/

namespace A171363.P3485322687664405616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000096 (n + 10) + 13).toNat

end

end A171363.P3485322687664405616

/-! ## A171363.P12804313400568023733

`A171307(eq[13, A123229(n+1)])`
-/

namespace A171363.P12804313400568023733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171363.P12804313400568023733

/-! ## A171363.P7585385338727981285

`A171307(eq[13, A131818(n+1)])`
-/

namespace A171363.P7585385338727981285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171363.P7585385338727981285

/-!
# A171364: Number of 0..n-1 integer arrays v[1..13] of length 13 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..12.

The programs for A171364, there is no canonical definition to state claims against.
-/

/-! ## A171364.P3224299118986594504

`A171307(eq[29, A066657(n)])`
-/

namespace A171364.P3224299118986594504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171364.P3224299118986594504

/-! ## A171364.P5449206206841465745

`A171307(A000217(n+12)+13)`
-/

namespace A171364.P5449206206841465745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A000217 (n + 12) + 13).toNat

end

end A171364.P5449206206841465745

/-! ## A171364.P6748193308766362344

`A171307(eq[14, A131818(n+1)])`
-/

namespace A171364.P6748193308766362344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171364.P6748193308766362344

/-!
# A171365: Number of 0..n-1 integer arrays v[1..14] of length 14 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..13.

The programs for A171365, there is no canonical definition to state claims against.
-/

/-! ## A171365.P14540708306700008872

`A171307(eq[31, A066657(n)])`
-/

namespace A171365.P14540708306700008872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171365.P14540708306700008872

/-! ## A171365.P9395769436045945312

`A171307(eq[13, A002262(n)]+1)`
-/

namespace A171365.P9395769436045945312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171365.P9395769436045945312

/-! ## A171365.P9812405133669517322

`A171307(eq[15, A131818(n+1)])`
-/

namespace A171365.P9812405133669517322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171365.P9812405133669517322

/-!
# A171366: Number of 0..n-1 integer arrays v[1..15] of length 15 with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..14.

The programs for A171366, there is no canonical definition to state claims against.
-/

/-! ## A171366.P15857388326361710987

`A171307(eq[37, A066657(n)])`
-/

namespace A171366.P15857388326361710987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171366.P15857388326361710987

/-!
# A171367: Antidiagonal sums of triangle of Stirling numbers of 2nd kind A048993.

The programs for A171367, there is no canonical definition to state claims against.
-/

/-! ## A171367.P6993415172428624339

`A363071(n)-a(n-1)` with `a(0)=1`
-/

namespace A171367.P6993415172428624339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A363071 n - a (n - 1)

end

end A171367.P6993415172428624339

/-! ## A171367.P10475261453148915981

`A024427(n-a(2%n))` with `a(0)=1, a(1)=0`
-/

namespace A171367.P10475261453148915981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A024427 ((n : ℤ) - a (2 % n)).toNat

end

end A171367.P10475261453148915981

/-! ## A171367.P6562918869706082163

`A363071(n+1)-Δ[A320964(n)]`
-/

namespace A171367.P6562918869706082163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363071 (n + 1) - (f1 (n + 1) - f1 n)

end

end A171367.P6562918869706082163

/-! ## A171367.P5473338785740706856

`A363071(n+1)+A320964(n)-A320964(n+1)`
-/

namespace A171367.P5473338785740706856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363071 (n + 1) + (A320964 n - A320964 (n + 1))

end

end A171367.P5473338785740706856

/-! ## A171367.P12924074861746229532

`round(sqrt(A290717(n+1)/A158057(n)))`
-/

namespace A171367.P12924074861746229532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A290717 (n + 1) : ℚ) / (A158057 n : ℚ) : ℝ))

end

end A171367.P12924074861746229532

/-!
# A171368: Another version of A126216.

The programs for A171368, there is no canonical definition to state claims against.
-/

/-! ## A171368.P11591034074267856409

`dr(A127672(A000032(A318557(n+2))))`
-/

namespace A171368.P11591034074267856409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127672 (A000032 (A318557 (n + 2)).toNat).toNat)

end

end A171368.P11591034074267856409

/-! ## A171368.P14766436711793520606

`A103609(A151722(n)+A108044(n))`
-/

namespace A171368.P14766436711793520606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A151722 n + A108044 n).toNat

end

end A171368.P14766436711793520606

/-! ## A171368.P15218707247780335816

`A103609(A108044(n))^A019428(n)`
-/

namespace A171368.P15218707247780335816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 (A108044 n).toNat : ℚ) ^ (A019428 n : ℤ)

end

end A171368.P15218707247780335816

/-! ## A171368.P1654909518560047596

`A025427(A022098(A108044(n)+A000038(n)))`
-/

namespace A171368.P1654909518560047596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A022098 (A108044 n + A000038 n).toNat).toNat

end

end A171368.P1654909518560047596

/-! ## A171368.P6226150314715321550

`and(A185452(A000292(2*n+3)), A195040(n+1))`
-/

namespace A171368.P6226150314715321550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185452 (A000292 (2 * n + 3)).toNat) (A195040 (n + 1))

end

end A171368.P6226150314715321550

/-!
# A171369: Triangle read by rows, replace 2's with 3's in A169695.

The programs for A171369, the canonical program `A171369.P11393066662093134406` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171369 has offset 1).

The definition of A171369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171369.P11393066662093134406

`gcd(3, Δ[floor(sqrt(n))])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171369

/-- `gcd(3, Δ[floor(sqrt(n))])` -/
def P11393066662093134406.Spec : Prop :=
  ∀ n, (P11393066662093134406.a n : ℤ) = A171369 (n + 1)

theorem P11393066662093134406.correct : P11393066662093134406.Spec := by
  intro n
  simp only [A171369, Nat.add_sub_cancel]

end A171369

/-! ## A171369.P5625717809803610488

`3-Δ[2*floor(sqrt(n))]`
-/

namespace A171369.P5625717809803610488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A171369.P5625717809803610488

namespace A171369

/-- `3-Δ[2*floor(sqrt(n))]` -/
def P5625717809803610488.Spec : Prop :=
  ∀ n, P5625717809803610488.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P18443351186397794074

`C(3, 1-Δ[floor(sqrt(n))])`
-/

namespace A171369.P18443351186397794074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A171369.P18443351186397794074

namespace A171369

/-- `C(3, 1-Δ[floor(sqrt(n))])` -/
def P18443351186397794074.Spec : Prop :=
  ∀ n, (P18443351186397794074.a n : ℤ) = A171369 (n + 1)

end A171369

/-! ## A171369.P16729601044924726603

`or(1, 2-Δ[floor(sqrt(n))])`
-/

namespace A171369.P16729601044924726603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A171369.P16729601044924726603

namespace A171369

/-- `or(1, 2-Δ[floor(sqrt(n))])` -/
def P16729601044924726603.Spec : Prop :=
  ∀ n, P16729601044924726603.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P10680986529725865899

`3/a(Δ[floor(sqrt(n))])` with `a(0)=1`
-/

namespace A171369.P10680986529725865899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 / a ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A171369.P10680986529725865899

namespace A171369

/-- `3/a(Δ[floor(sqrt(n))])` -/
def P10680986529725865899.Spec : Prop :=
  ∀ n, P10680986529725865899.a n = (A171369 (n + 1) : ℚ)

end A171369

/-! ## A171369.P10114675182147418967

`3^xor(1, Δ[floor(sqrt(n))])`
-/

namespace A171369.P10114675182147418967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A171369.P10114675182147418967

namespace A171369

/-- `3^xor(1, Δ[floor(sqrt(n))])` -/
def P10114675182147418967.Spec : Prop :=
  ∀ n, P10114675182147418967.a n = (A171369 (n + 1) : ℚ)

end A171369

/-! ## A171369.P14247771251550657479

`∑{d}[2-Δ[floor(sqrt(n))], #]`
-/

namespace A171369.P14247771251550657479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A171369.P14247771251550657479

namespace A171369

/-- `∑{d}[2-Δ[floor(sqrt(n))], #]` -/
def P14247771251550657479.Spec : Prop :=
  ∀ n, (P14247771251550657479.a n : ℤ) = A171369 (n + 1)

end A171369

/-! ## A171369.P4206941558050865074

`ceil(acot(char[n²-1])²)`
-/

namespace A171369.P4206941558050865074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) ^ 2⌉

end

end A171369.P4206941558050865074

namespace A171369

/-- `ceil(acot(char[n²-1])²)` -/
def P4206941558050865074.Spec : Prop :=
  ∀ n, P4206941558050865074.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P8780794266718612228

`3^Δ[A028391(n)]`
-/

namespace A171369.P8780794266718612228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A171369.P8780794266718612228

namespace A171369

/-- `3^Δ[A028391(n)]` -/
def P8780794266718612228.Spec : Prop :=
  ∀ n, P8780794266718612228.a n = (A171369 (n + 1) : ℚ)

end A171369

/-! ## A171369.P1928039319256251627

`A114003(n+1)%4`
-/

namespace A171369.P1928039319256251627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114003 (n + 1)) 4

end

end A171369.P1928039319256251627

namespace A171369

/-- `A114003(n+1)%4` -/
def P1928039319256251627.Spec : Prop :=
  ∀ n, P1928039319256251627.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P11606316706756008017

`A100587(n+1)%6`
-/

namespace A171369.P11606316706756008017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100587 (n + 1)) 6

end

end A171369.P11606316706756008017

namespace A171369

/-- `A100587(n+1)%6` -/
def P11606316706756008017.Spec : Prop :=
  ∀ n, P11606316706756008017.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P4447244807887519383

`A182139(n+1)%6`
-/

namespace A171369.P4447244807887519383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182139 (n + 1)) 6

end

end A171369.P4447244807887519383

namespace A171369

/-- `A182139(n+1)%6` -/
def P4447244807887519383.Spec : Prop :=
  ∀ n, P4447244807887519383.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P14985528350512341518

`and(3, A114006(n+1))`
-/

namespace A171369.P14985528350512341518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A114006 (n + 1))

end

end A171369.P14985528350512341518

namespace A171369

/-- `and(3, A114006(n+1))` -/
def P14985528350512341518.Spec : Prop :=
  ∀ n, P14985528350512341518.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P13386249449730830973

`3^A068717(n+1)²`
-/

namespace A171369.P13386249449730830973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A068717 (n + 1) ^ 2 : ℤ)

end

end A171369.P13386249449730830973

namespace A171369

/-- `3^A068717(n+1)²` -/
def P13386249449730830973.Spec : Prop :=
  ∀ n, P13386249449730830973.a n = (A171369 (n + 1) : ℚ)

end A171369

/-! ## A171369.P6671835605594337909

`3^A344617(n+1)²`
-/

namespace A171369.P6671835605594337909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A344617 (n + 1) ^ 2 : ℤ)

end

end A171369.P6671835605594337909

namespace A171369

/-- `3^A344617(n+1)²` -/
def P6671835605594337909.Spec : Prop :=
  ∀ n, P6671835605594337909.a n = (A171369 (n + 1) : ℚ)

end A171369

/-! ## A171369.P3859862892410344414

`3^A397085(n+1)²`
-/

namespace A171369.P3859862892410344414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A397085 (n + 1) ^ 2 : ℤ)

end

end A171369.P3859862892410344414

namespace A171369

/-- `3^A397085(n+1)²` -/
def P3859862892410344414.Spec : Prop :=
  ∀ n, P3859862892410344414.a n = (A171369 (n + 1) : ℚ)

end A171369

/-! ## A171369.P17734565835333510489

`∏{p}[A055076(n+1), #+1]`
-/

namespace A171369.P17734565835333510489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A171369.P17734565835333510489

namespace A171369

/-- `∏{p}[A055076(n+1), #+1]` -/
def P17734565835333510489.Spec : Prop :=
  ∀ n, (P17734565835333510489.a n : ℤ) = A171369 (n + 1)

end A171369

/-! ## A171369.P14592444557485040353

`A122553(A082375(n))`
-/

namespace A171369.P14592444557485040353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A082375 n).toNat

end

end A171369.P14592444557485040353

namespace A171369

/-- `A122553(A082375(n))` -/
def P14592444557485040353.Spec : Prop :=
  ∀ n, P14592444557485040353.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P5355718266221860287

`A010684(A316355(n))`
-/

namespace A171369.P5355718266221860287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A316355 n).toNat

end

end A171369.P5355718266221860287

namespace A171369

/-- `A010684(A316355(n))` -/
def P5355718266221860287.Spec : Prop :=
  ∀ n, P5355718266221860287.a n = A171369 (n + 1)

end A171369

/-! ## A171369.P7664276253045334449

`A176040(A302707(n))`
-/

namespace A171369.P7664276253045334449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A302707 n).toNat

end

end A171369.P7664276253045334449

namespace A171369

/-- `A176040(A302707(n))` -/
def P7664276253045334449.Spec : Prop :=
  ∀ n, P7664276253045334449.a n = A171369 (n + 1)

end A171369

/-!
# A171370: Sequence generated from Lim:_{n..inf.} M^n, M = an infinite lower triangular matrix with (1,3,3,3,...) in every column, shifted down twice.

The programs for A171370, the canonical program `A171370.P4224009554674917084` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171370 has offset 0).

The definition of A171370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171370.P4224009554674917084

`a(n-1)+(n%2+1)*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171370

/-- `a(n-1)+(n%2+1)*a(floor(n/2))` -/
def P4224009554674917084.Spec : Prop :=
  ∀ n, (P4224009554674917084.a n : ℤ) = A171370 n

theorem P4224009554674917084.correct : P4224009554674917084.Spec := by
  intro n
  simp only [A171370]

end A171370

/-! ## A171370.P15205980953767494521

`a(n-1)+gcd(2, n+1)*a(floor(n/2))` with `a(0)=1`
-/

namespace A171370.P15205980953767494521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.gcd 2 (n + 1) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A171370.P15205980953767494521

namespace A171370

/-- `a(n-1)+gcd(2, n+1)*a(floor(n/2))` -/
def P15205980953767494521.Spec : Prop :=
  ∀ n, (P15205980953767494521.a n : ℤ) = A171370 n

end A171370

/-! ## A171370.P11344695819023506578

`∑[A161511(A141495(n))]`
-/

namespace A171370.P11344695819023506578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A141495 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171370.P11344695819023506578

namespace A171370

/-- `∑[A161511(A141495(n))]` -/
def P11344695819023506578.Spec : Prop :=
  ∀ n, P11344695819023506578.a n = A171370 n

end A171370

/-! ## A171370.P82485308366430497

`∑[A062821(∑[A263529(n)])]`
-/

namespace A171370.P82485308366430497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171370.P82485308366430497

namespace A171370

/-- `∑[A062821(∑[A263529(n)])]` -/
def P82485308366430497.Spec : Prop :=
  ∀ n, P82485308366430497.a n = A171370 n

end A171370

/-! ## A171370.P18023331546340054578

`record[A161645(∑[A124778(n)])]`
-/

namespace A171370.P18023331546340054578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161645 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171370.P18023331546340054578

namespace A171370

/-- `record[A161645(∑[A124778(n)])]` -/
def P18023331546340054578.Spec : Prop :=
  ∀ n, P18023331546340054578.a n = A171370 n

end A171370

/-!
# A171371: a(n) = 6*a(n-1) + 8*a(n-2) with a(1) = 8, a(2) = 18.

The programs for A171371, the canonical program `A171371.P16808128382035127218` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171371 has offset 1).

The definition of A171371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+8*a(n-2)` (program `A171371.P16808128382035127218`, by `A171371.P16808128382035127218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171371.P16808128382035127218

`6*a(n-1)+8*a(n-2)` with `a(0)=8, a(1)=18`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171371

/-- `6*a(n-1)+8*a(n-2)` -/
def P16808128382035127218.Spec : Prop :=
  ∀ n, (P16808128382035127218.a n : ℤ) = A171371 (n + 1)

theorem P16808128382035127218.correct : P16808128382035127218.Spec := by
  intro n
  simp only [A171371, Nat.add_sub_cancel]

end A171371

/-!
# A171372: a(n) = numerator of 1/(2*n)^2 - 1/(3*n)^2 for n > 0, a(0) = 1.

The programs for A171372, the canonical program `A171372.P8893850567928989028` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171372 has offset 0).

The definition of A171372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171372.P8893850567928989028

`6-gcd(5, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171372

/-- `6-gcd(5, n)` -/
def P8893850567928989028.Spec : Prop :=
  ∀ n, P8893850567928989028.a n = A171372 n

theorem P8893850567928989028.correct : P8893850567928989028.Spec := by
  intro n
  simp only [A171372]

end A171372

/-!
# A171373: Binomial transform of A171372.

The programs for A171373, the canonical program `A171373.P9742602251533181327` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171373 has offset 0).

The definition of A171373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171373.P9742602251533181327

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=36, a(4)=76`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171373

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+2*a(n-5)` -/
def P9742602251533181327.Spec : Prop :=
  ∀ n, P9742602251533181327.a n = A171373 n

theorem P9742602251533181327.correct : P9742602251533181327.Spec := by
  intro n
  simp only [A171373]

end A171373

/-! ## A171373.P12519891606540297883

`∑[A284359(A089378(n+1))]`
-/

namespace A171373.P12519891606540297883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A089378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171373.P12519891606540297883

namespace A171373

/-- `∑[A284359(A089378(n+1))]` -/
def P12519891606540297883.Spec : Prop :=
  ∀ n, P12519891606540297883.a n = A171373 n

end A171373

/-! ## A171373.P1276628309448182507

`A305117((A167385(n)%A067648(3*n+4))²+n²)`
-/

namespace A171373.P1276628309448182507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (Int.tmod (A167385 n) (A067648 (3 * n + 4)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A171373.P1276628309448182507

namespace A171373

/-- `A305117((A167385(n)%A067648(3*n+4))²+n²)` -/
def P1276628309448182507.Spec : Prop :=
  ∀ n, P1276628309448182507.a n = A171373 n

end A171373

/-!
# A171374: Solutions to the equation M(n) = -6 (M = Mertens's function A002321).

The programs for A171374, the canonical program `A171374.P8825294617670790026` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171374 has offset 1).

The definition of A171374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171374.P8825294617670790026

`eq[0, A008683(n)+a(n-1)]` with `a(0)=6`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A171374

/-- `eq[0, A008683(n)+a(n-1)]` -/
def P8825294617670790026.Spec : Prop :=
  ∀ n, (P8825294617670790026.a n : ℤ) = A171374 (n + 1)

theorem P8825294617670790026.correct : P8825294617670790026.Spec := by
  intro n
  simp only [A171374, Nat.add_sub_cancel]

end A171374

/-! ## A171374.P16199929111897583423

`eq[6, -A002321(A028310(n))]`
-/

namespace A171374.P16199929111897583423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171374.P16199929111897583423

namespace A171374

/-- `eq[6, -A002321(A028310(n))]` -/
def P16199929111897583423.Spec : Prop :=
  ∀ n, (P16199929111897583423.a n : ℤ) = A171374 (n + 1)

end A171374

/-! ## A171374.P11484975593820933115

`eq[A002321(n+1)+6, A008683(n+1)]`
-/

namespace A171374.P11484975593820933115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171374.P11484975593820933115

namespace A171374

/-- `eq[A002321(n+1)+6, A008683(n+1)]` -/
def P11484975593820933115.Spec : Prop :=
  ∀ n, (P11484975593820933115.a n : ℤ) = A171374 (n + 1)

end A171374

/-! ## A171374.P8869719073382139888

`eq[a(n-1)-A157657(n+1), A007423(n+1)]` with `a(0)=8`
-/

namespace A171374.P8869719073382139888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171374.P8869719073382139888

namespace A171374

/-- `eq[a(n-1)-A157657(n+1), A007423(n+1)]` -/
def P8869719073382139888.Spec : Prop :=
  ∀ n, (P8869719073382139888.a n : ℤ) = A171374 (n + 1)

end A171374

/-! ## A171374.P6108479903230094488

`eq[a(n-1)-A157657(n+1), A080847(n+1)]` with `a(0)=9`
-/

namespace A171374.P6108479903230094488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171374.P6108479903230094488

namespace A171374

/-- `eq[a(n-1)-A157657(n+1), A080847(n+1)]` -/
def P6108479903230094488.Spec : Prop :=
  ∀ n, (P6108479903230094488.a n : ℤ) = A171374 (n + 1)

end A171374

/-!
# A171375: a(n) = 1+3*10^n+100^n.

The programs for A171375, there is no canonical definition to state claims against.
-/

/-! ## A171375.P561875937627922178

`10^n+(10^n+1)²`
-/

namespace A171375.P561875937627922178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n + (10 ^ n + 1) ^ 2

end

end A171375.P561875937627922178

/-! ## A171375.P16984433865928423971

`abs(A011557(n)-A225810(n))`
-/

namespace A171375.P16984433865928423971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A225810 n|

end

end A171375.P16984433865928423971

/-! ## A171375.P9855500977645049299

`or(1, A033934(n)+A002283(n))`
-/

namespace A171375.P9855500977645049299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033934 n + A002283 n)

end

end A171375.P9855500977645049299

/-! ## A171375.P510260348445609155

`or(1, A225810(n)-A000533(n))`
-/

namespace A171375.P510260348445609155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A225810 n - A000533 n)

end

end A171375.P510260348445609155

/-! ## A171375.P18042496039462405326

`(A011557(n)-A225810(n))/A057428(A064989(n+1))`
-/

namespace A171375.P18042496039462405326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n - A225810 n : ℚ) / (A057428 (A064989 (n + 1)).toNat : ℚ)

end

end A171375.P18042496039462405326

/-! ## A171375.P13973580811048476524

`(A171410(n)+A066138(n))/2`
-/

namespace A171375.P13973580811048476524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171410 n + A066138 n : ℚ) / 2

end

end A171375.P13973580811048476524

/-! ## A171375.P17962886144496515561

`(A225810(n)+A033934(n))/2`
-/

namespace A171375.P17962886144496515561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225810 n + A033934 n : ℚ) / 2

end

end A171375.P17962886144496515561

/-! ## A171375.P9075259317219827895

`(A225813(n)+A168624(n))/2`
-/

namespace A171375.P9075259317219827895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225813 n + A168624 n : ℚ) / 2

end

end A171375.P9075259317219827895

/-! ## A171375.P6988907317271127359

`(2*A171461(n))%A171553(n)`
-/

namespace A171375.P6988907317271127359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A171461 n) (A171553 n)

end

end A171375.P6988907317271127359

/-! ## A171375.P8958735701047733186

`(2*A171410(n))%A225813(n)`
-/

namespace A171375.P8958735701047733186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A171410 n) (A225813 n)

end

end A171375.P8958735701047733186

/-!
# A171376: Numbers k such that 1 + 3*10^k + 100^k is prime.

The programs for A171376, there is no canonical definition to state claims against.
-/

/-! ## A171376.P2562847994580547052

`lt[A100026(round(acot(n)+n)), 4]`
-/

namespace A171376.P2562847994580547052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100026 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171376.P2562847994580547052

/-! ## A171376.P1127319686693377975

`lt[A100026(round(sqrt(n²+1))), 4]`
-/

namespace A171376.P1127319686693377975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100026 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171376.P1127319686693377975

/-! ## A171376.P12101305959761304324

`eq[3, A100026(A233583(n+1))]`
-/

namespace A171376.P12101305959761304324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100026 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171376.P12101305959761304324

/-! ## A171376.P12004557033422424327

`lt[A064413(A257328(2*(n+2))), 21]`
-/

namespace A171376.P12004557033422424327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A257328 (2 * (n + 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171376.P12004557033422424327

/-! ## A171376.P13155419833908117134

`record[A305531(n+2)%A341090(n+1)]`
-/

namespace A171376.P13155419833908117134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305531 (n + 2)) (A341090 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171376.P13155419833908117134

/-!
# A171377: Zeros in a A171246 modulo two matrix:a(n)=(n+1)^2-Sum[Sum[Mod[A171246(m,k),2],{k,0,n}],{m,0,n}].

The programs for A171377, there is no canonical definition to state claims against.
-/

/-! ## A171377.P6716986432853864043

`∑[xor(n, A010894(4*(n+3)))]`
-/

namespace A171377.P6716986432853864043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A010894 (4 * (n + 3) + 21))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171377.P6716986432853864043

/-! ## A171377.P14682509884158858989

`∑[A231516(∑[A048290(n+1)])]`
-/

namespace A171377.P14682509884158858989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048290 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231516 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171377.P14682509884158858989

/-! ## A171377.P14516796293696974334

`A344788(A319206(n+1))+A006918(n)`
-/

namespace A171377.P14516796293696974334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344788 (A319206 (n + 1)).toNat + A006918 n

end

end A171377.P14516796293696974334

/-! ## A171377.P17478682185543010661

`A046746(n+1)-A374741(A095062(n+2))`
-/

namespace A171377.P17478682185543010661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) - A374741 (A095062 (n + 2)).toNat

end

end A171377.P17478682185543010661

/-!
# A171378: a(n) = (n+1)^2 - A006046(n+1).

The programs for A171378, the canonical program `A171378.P8202068084178417597` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171378 has offset 0).

The definition of A171378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171378.P8202068084178417597

`(n+1)²-A006046(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171378

/-- `(n+1)²-A006046(n+1)` -/
def P8202068084178417597.Spec : Prop :=
  ∀ n, P8202068084178417597.a n = A171378 n

theorem P8202068084178417597.correct : P8202068084178417597.Spec := by
  intro n
  simp only [A171378]

end A171378

/-! ## A171378.P1438643031482195735

`∑[1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n+n]`
-/

namespace A171378.P1438643031482195735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ) + (n : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P1438643031482195735

namespace A171378

/-- `∑[1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n+n]` -/
def P1438643031482195735.Spec : Prop :=
  ∀ n, P1438643031482195735.a n = (A171378 n : ℚ)

end A171378

/-! ## A171378.P9682414107563720949

`∑[A071042(n)]`
-/

namespace A171378.P9682414107563720949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P9682414107563720949

namespace A171378

/-- `∑[A071042(n)]` -/
def P9682414107563720949.Spec : Prop :=
  ∀ n, P9682414107563720949.a n = A171378 n

end A171378

/-! ## A171378.P5682991630249939300

`A262867(n)-1`
-/

namespace A171378.P5682991630249939300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262867 n - 1

end

end A171378.P5682991630249939300

namespace A171378

/-- `A262867(n)-1` -/
def P5682991630249939300.Spec : Prop :=
  ∀ n, P5682991630249939300.a n = A171378 n

end A171378

/-! ## A171378.P2896833117099068808

`∑[A048967(n)+n]`
-/

namespace A171378.P2896833117099068808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P2896833117099068808

namespace A171378

/-- `∑[A048967(n)+n]` -/
def P2896833117099068808.Spec : Prop :=
  ∀ n, P2896833117099068808.a n = A171378 n

end A171378

/-! ## A171378.P5400991058652513867

`A051679(n)+∑[n]`
-/

namespace A171378.P5400991058652513867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051679 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A171378.P5400991058652513867

namespace A171378

/-- `A051679(n)+∑[n]` -/
def P5400991058652513867.Spec : Prop :=
  ∀ n, P5400991058652513867.a n = A171378 n

end A171378

/-! ## A171378.P15932379894793691170

`∑[2*n-A038573(n)]`
-/

namespace A171378.P15932379894793691170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P15932379894793691170

namespace A171378

/-- `∑[2*n-A038573(n)]` -/
def P15932379894793691170.Spec : Prop :=
  ∀ n, P15932379894793691170.a n = A171378 n

end A171378

/-! ## A171378.P3785339843252543738

`∑[2*n]-A267700(n)`
-/

namespace A171378.P3785339843252543738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A267700 n

end

end A171378.P3785339843252543738

namespace A171378

/-- `∑[2*n]-A267700(n)` -/
def P3785339843252543738.Spec : Prop :=
  ∀ n, P3785339843252543738.a n = A171378 n

end A171378

/-! ## A171378.P11183518105145315868

`∑[Δ[n²]-A001316(n)]`
-/

namespace A171378.P11183518105145315868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P11183518105145315868

namespace A171378

/-- `∑[Δ[n²]-A001316(n)]` -/
def P11183518105145315868.Spec : Prop :=
  ∀ n, P11183518105145315868.a n = A171378 n

end A171378

/-! ## A171378.P4335110785068314455

`∑[A261366(n+1)+n-1]`
-/

namespace A171378.P4335110785068314455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P4335110785068314455

namespace A171378

/-- `∑[A261366(n+1)+n-1]` -/
def P4335110785068314455.Spec : Prop :=
  ∀ n, P4335110785068314455.a n = A171378 n

end A171378

/-! ## A171378.P8373777537279817086

`∑[2*n+1-A060632(2*n)]`
-/

namespace A171378.P8373777537279817086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A060632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P8373777537279817086

namespace A171378

/-- `∑[2*n+1-A060632(2*n)]` -/
def P8373777537279817086.Spec : Prop :=
  ∀ n, P8373777537279817086.a n = A171378 n

end A171378

/-! ## A171378.P15506057050809501547

`∑[2*n+1-2^A000120(n)]`
-/

namespace A171378.P15506057050809501547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P15506057050809501547

namespace A171378

/-- `∑[2*n+1-2^A000120(n)]` -/
def P15506057050809501547.Spec : Prop :=
  ∀ n, P15506057050809501547.a n = (A171378 n : ℚ)

end A171378

/-! ## A171378.P1083105007983613993

`A267583(n)-A001316(n)`
-/

namespace A171378.P1083105007983613993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267583 n - A001316 n

end

end A171378.P1083105007983613993

namespace A171378

/-- `A267583(n)-A001316(n)` -/
def P1083105007983613993.Spec : Prop :=
  ∀ n, P1083105007983613993.a n = A171378 n

end A171378

/-! ## A171378.P14528513664800299332

`A000124(n)+A051679(n)-1`
-/

namespace A171378.P14528513664800299332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A051679 n - 1)

end

end A171378.P14528513664800299332

namespace A171378

/-- `A000124(n)+A051679(n)-1` -/
def P14528513664800299332.Spec : Prop :=
  ∀ n, P14528513664800299332.a n = A171378 n

end A171378

/-! ## A171378.P13173586509193114418

`A267583(n)-(A038573(n)+1)`
-/

namespace A171378.P13173586509193114418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267583 n - (A038573 n + 1)

end

end A171378.P13173586509193114418

namespace A171378

/-- `A267583(n)-(A038573(n)+1)` -/
def P13173586509193114418.Spec : Prop :=
  ∀ n, P13173586509193114418.a n = A171378 n

end A171378

/-! ## A171378.P15759091575163828636

`∑[A005843(n)+1-A001316(n)]`
-/

namespace A171378.P15759091575163828636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A001316 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P15759091575163828636

namespace A171378

/-- `∑[A005843(n)+1-A001316(n)]` -/
def P15759091575163828636.Spec : Prop :=
  ∀ n, P15759091575163828636.a n = A171378 n

end A171378

/-! ## A171378.P12897529499988308310

`∑[A005408(n)-(A038573(n)+1)]`
-/

namespace A171378.P12897529499988308310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A038573 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171378.P12897529499988308310

namespace A171378

/-- `∑[A005408(n)-(A038573(n)+1)]` -/
def P12897529499988308310.Spec : Prop :=
  ∀ n, P12897529499988308310.a n = A171378 n

end A171378

/-! ## A171378.P4598218387609031821

`n²+A071055(n)-A267610(n)`
-/

namespace A171378.P4598218387609031821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A071055 n - A267610 n)

end

end A171378.P4598218387609031821

namespace A171378

/-- `n²+A071055(n)-A267610(n)` -/
def P4598218387609031821.Spec : Prop :=
  ∀ n, P4598218387609031821.a n = A171378 n

end A171378

/-! ## A171378.P11861790198723060767

`∑[A004277(n)-A001316(n)]+n`
-/

namespace A171378.P11861790198723060767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A171378.P11861790198723060767

namespace A171378

/-- `∑[A004277(n)-A001316(n)]+n` -/
def P11861790198723060767.Spec : Prop :=
  ∀ n, P11861790198723060767.a n = A171378 n

end A171378

/-! ## A171378.P2895655385382305441

`∑[A004273(n)-A038573(n)]+n`
-/

namespace A171378.P2895655385382305441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A171378.P2895655385382305441

namespace A171378

/-- `∑[A004273(n)-A038573(n)]+n` -/
def P2895655385382305441.Spec : Prop :=
  ∀ n, P2895655385382305441.a n = A171378 n

end A171378

/-!
# A171379: Triangle, read by rows, T(n, k) = A059481(n,k)*(A059481(n,k) - 1)/2.

The programs for A171379, the canonical program `A171379.P2646374990893908520` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171379 has offset 1).

The definition of A171379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171379.P1204570752339179692

`C(A165257(n+1), 2)`
-/

namespace A171379.P1204570752339179692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165257 (n + 1)).toNat 2

end

end A171379.P1204570752339179692

namespace A171379

/-- `C(A165257(n+1), 2)` -/
def P1204570752339179692.Spec : Prop :=
  ∀ n, (P1204570752339179692.a n : ℤ) = A171379 (n + 1)

end A171379

/-! ## A171379.P8684102412679890515

`C(A059481(comp[∑[n]]), 2)`
-/

namespace A171379.P8684102412679890515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059481 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A171379.P8684102412679890515

namespace A171379

/-- `C(A059481(comp[∑[n]]), 2)` -/
def P8684102412679890515.Spec : Prop :=
  ∀ n, (P8684102412679890515.a n : ℤ) = A171379 (n + 1)

end A171379

/-! ## A171379.P2646374990893908520

`C(C(A094727(n+1), A003056(n)), 2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171379

/-- `C(C(A094727(n+1), A003056(n)), 2)` -/
def P2646374990893908520.Spec : Prop :=
  ∀ n, (P2646374990893908520.a n : ℤ) = A171379 (n + 1)

theorem P2646374990893908520.correct : P2646374990893908520.Spec := by
  intro n
  simp only [A171379, Nat.add_sub_cancel]

end A171379

/-! ## A171379.P550596993103705712

`C(C(A094727(n+1), A002260(n+1)), 2)`
-/

namespace A171379.P550596993103705712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A094727 (n + 1)).toNat (A002260 (n + 1)).toNat) 2

end

end A171379.P550596993103705712

namespace A171379

/-- `C(C(A094727(n+1), A002260(n+1)), 2)` -/
def P550596993103705712.Spec : Prop :=
  ∀ n, (P550596993103705712.a n : ℤ) = A171379 (n + 1)

end A171379

/-! ## A171379.P5737831017749582285

`C(A074909(A245300(n)+1), 2)`
-/

namespace A171379.P5737831017749582285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074909 (A245300 n + 1).toNat).toNat 2

end

end A171379.P5737831017749582285

namespace A171379

/-- `C(A074909(A245300(n)+1), 2)` -/
def P5737831017749582285.Spec : Prop :=
  ∀ n, (P5737831017749582285.a n : ℤ) = A171379 (n + 1)

end A171379

/-! ## A171379.P7607315644820293448

`C(A257241(A056537(n+1)), 2)`
-/

namespace A171379.P7607315644820293448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257241 (A056537 (n + 1)).toNat).toNat 2

end

end A171379.P7607315644820293448

namespace A171379

/-- `C(A257241(A056537(n+1)), 2)` -/
def P7607315644820293448.Spec : Prop :=
  ∀ n, (P7607315644820293448.a n : ℤ) = A171379 (n + 1)

end A171379

/-! ## A171379.P9092400693821125983

`C(A135278(A245300(n)), 2)`
-/

namespace A171379.P9092400693821125983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135278 (A245300 n).toNat).toNat 2

end

end A171379.P9092400693821125983

namespace A171379

/-- `C(A135278(A245300(n)), 2)` -/
def P9092400693821125983.Spec : Prop :=
  ∀ n, (P9092400693821125983.a n : ℤ) = A171379 (n + 1)

end A171379

/-! ## A171379.P8782503304748615505

`A000217(A165257(n+1)-1)`
-/

namespace A171379.P8782503304748615505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A165257 (n + 1) - 1).toNat

end

end A171379.P8782503304748615505

namespace A171379

/-- `A000217(A165257(n+1)-1)` -/
def P8782503304748615505.Spec : Prop :=
  ∀ n, P8782503304748615505.a n = A171379 (n + 1)

end A171379

/-! ## A171379.P13845639438580232449

`A000217(A135278(A245300(n))-1)`
-/

namespace A171379.P13845639438580232449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A135278 (A245300 n).toNat - 1).toNat

end

end A171379.P13845639438580232449

namespace A171379

/-- `A000217(A135278(A245300(n))-1)` -/
def P13845639438580232449.Spec : Prop :=
  ∀ n, P13845639438580232449.a n = A171379 (n + 1)

end A171379

/-!
# A171380: Expansion of the first column of triangle T_(1,x), T(x,y) defined in A039599; T_(1,0)= A061554, T_(1,1)= A064189, T_(1,2)= A039599, T_(1,3)= A110877, T_(1,4)= A124576.

The programs for A171380, there is no canonical definition to state claims against.
-/

/-! ## A171380.P12739668577816759040

`C(A130401(n), A001221(A036882(n)))`
-/

namespace A171380.P12739668577816759040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130401 n).toNat (A001221 (A036882 n).toNat).toNat

end

end A171380.P12739668577816759040

/-! ## A171380.P8625699150525837981

`floor(A103298(A214775(n))/A209518(n))`
-/

namespace A171380.P8625699150525837981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103298 (A214775 n).toNat : ℚ) / (A209518 n : ℚ)⌋

end

end A171380.P8625699150525837981

/-! ## A171380.P641183060299984652

`A064515(A119502(n))+char[∑[n]]`
-/

namespace A171380.P641183060299984652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A119502 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171380.P641183060299984652

/-! ## A171380.P12302536818363251313

`round(A055584(n)/A055572(3*n+1))`
-/

namespace A171380.P12302536818363251313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055584 n : ℚ) / (A055572 (3 * n + 1) : ℚ))

end

end A171380.P12302536818363251313

/-! ## A171380.P14070438164686592463

`A000120(C(A206563(n+1), A000120(2*n+1)))`
-/

namespace A171380.P14070438164686592463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A206563 (n + 1)).toNat (A000120 (2 * n + 1)).toNat)

end

end A171380.P14070438164686592463

/-!
# A171382: a(n) = (2*2^n+7*(-1)^n)/3.

The programs for A171382, the canonical program `A171382.P5351138730805249693` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171382 has offset 0).

The definition of A171382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171382.P5351138730805249693

`2^n-a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171382

/-- `2^n-a(n-1)` -/
def P5351138730805249693.Spec : Prop :=
  ∀ n, P5351138730805249693.a n = A171382 n

theorem P5351138730805249693.correct : P5351138730805249693.Spec := by
  intro n
  simp only [A171382]

end A171382

/-! ## A171382.P7487043481877312868

`a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=-1`
-/

namespace A171382.P7487043481877312868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A171382.P7487043481877312868

namespace A171382

/-- `a(n-1)+2*a(n-2)` -/
def P7487043481877312868.Spec : Prop :=
  ∀ n, P7487043481877312868.a n = A171382 n

end A171382

/-! ## A171382.P12375453281608167480

`(2*2^n+7*(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171382.P12375453281608167480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 2 ^ n : ℤ) + 7 * (-1) ^ n : ℚ) / 3

end

end A171382.P12375453281608167480

namespace A171382

/-- `(2*2^n+7*(-1)^n)/3` -/
def P12375453281608167480.Spec : Prop :=
  ∀ n, P12375453281608167480.a n = (A171382 n : ℚ)

end A171382

/-! ## A171382.P6131405531193226112

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=3, a(1)=-1`
-/

namespace A171382.P6131405531193226112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A171382.P6131405531193226112

namespace A171382

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P6131405531193226112.Spec : Prop :=
  ∀ n, P6131405531193226112.a n = A171382 n

end A171382

/-! ## A171382.P5622663745860378089

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=3, a(1)=-1`
-/

namespace A171382.P5622663745860378089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A171382.P5622663745860378089

namespace A171382

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P5622663745860378089.Spec : Prop :=
  ∀ n, P5622663745860378089.a n = A171382 n

end A171382

/-! ## A171382.P4919785766137984454

`A155980(n+3)`
-/

namespace A171382.P4919785766137984454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155980 (n + 3)

end

end A171382.P4919785766137984454

namespace A171382

/-- `A155980(n+3)` -/
def P4919785766137984454.Spec : Prop :=
  ∀ n, P4919785766137984454.a n = A171382 n

end A171382

/-! ## A171382.P11869786996821191686

`2*A135351(n+1)-1`
-/

namespace A171382.P11869786996821191686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135351 (n + 1) - 1

end

end A171382.P11869786996821191686

namespace A171382

/-- `2*A135351(n+1)-1` -/
def P11869786996821191686.Spec : Prop :=
  ∀ n, P11869786996821191686.a n = A171382 n

end A171382

/-! ## A171382.P10579136095172443744

`A000225(n)+1-a(n-1)` with `a(0)=3`
-/

namespace A171382.P10579136095172443744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000225 n + (1 - a (n - 1))

end

end A171382.P10579136095172443744

namespace A171382

/-- `A000225(n)+1-a(n-1)` -/
def P10579136095172443744.Spec : Prop :=
  ∀ n, P10579136095172443744.a n = A171382 n

end A171382

/-! ## A171382.P7165991954001835526

`A083318(n)-(a(n-1)+1)` with `a(0)=3`
-/

namespace A171382.P7165991954001835526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A083318 n - (a (n - 1) + 1)

end

end A171382.P7165991954001835526

namespace A171382

/-- `A083318(n)-(a(n-1)+1)` -/
def P7165991954001835526.Spec : Prop :=
  ∀ n, P7165991954001835526.a n = A171382 n

end A171382

/-! ## A171382.P17678991606954586963

`A255047(n)+1-a(n-1)` with `a(0)=3`
-/

namespace A171382.P17678991606954586963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A255047 n + (1 - a (n - 1))

end

end A171382.P17678991606954586963

namespace A171382

/-- `A255047(n)+1-a(n-1)` -/
def P17678991606954586963.Spec : Prop :=
  ∀ n, P17678991606954586963.a n = A171382 n

end A171382

/-! ## A171382.P10765259792765718172

`A000079(n)-or(1, a(n-1))` with `a(0)=3`
-/

namespace A171382.P10765259792765718172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000079 n - Int.lor 1 (a (n - 1))

end

end A171382.P10765259792765718172

namespace A171382

/-- `A000079(n)-or(1, a(n-1))` -/
def P10765259792765718172.Spec : Prop :=
  ∀ n, P10765259792765718172.a n = A171382 n

end A171382

/-! ## A171382.P11122270746653570144

`A006127(n)-(a(n-1)+n)` with `a(0)=3`
-/

namespace A171382.P11122270746653570144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006127 n - (a (n - 1) + (n : ℤ))

end

end A171382.P11122270746653570144

namespace A171382

/-- `A006127(n)-(a(n-1)+n)` -/
def P11122270746653570144.Spec : Prop :=
  ∀ n, P11122270746653570144.a n = A171382 n

end A171382

/-! ## A171382.P8560191911499321065

`floor(A131577(n+1)-a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A171382.P8560191911499321065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A131577 (n + 1) - a (n - 1)

end

end A171382.P8560191911499321065

namespace A171382

/-- `floor(A131577(n+1)-a(n-1))` -/
def P8560191911499321065.Spec : Prop :=
  ∀ n, P8560191911499321065.a n = A171382 n

end A171382

/-! ## A171382.P17349456981271070139

`∑[A131577(n)-a(n-1)]-2` with `a(0)=5`
-/

namespace A171382.P17349456981271070139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A131577 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A171382.P17349456981271070139

namespace A171382

/-- `∑[A131577(n)-a(n-1)]-2` -/
def P17349456981271070139.Spec : Prop :=
  ∀ n, P17349456981271070139.a n = A171382 n

end A171382

/-! ## A171382.P9206442205871060583

`A154879(n)+A001045(n)`
-/

namespace A171382.P9206442205871060583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154879 n + A001045 n

end

end A171382.P9206442205871060583

namespace A171382

/-- `A154879(n)+A001045(n)` -/
def P9206442205871060583.Spec : Prop :=
  ∀ n, P9206442205871060583.a n = A171382 n

end A171382

/-! ## A171382.P4954333840398245797

`A174971(n)+A014113(n)`
-/

namespace A171382.P4954333840398245797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n + A014113 n

end

end A171382.P4954333840398245797

namespace A171382

/-- `A174971(n)+A014113(n)` -/
def P4954333840398245797.Spec : Prop :=
  ∀ n, P4954333840398245797.a n = A171382 n

end A171382

/-! ## A171382.P4221517737128556680

`A140657(n)-A078008(n)`
-/

namespace A171382.P4221517737128556680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140657 n - A078008 n

end

end A171382.P4221517737128556680

namespace A171382

/-- `A140657(n)-A078008(n)` -/
def P4221517737128556680.Spec : Prop :=
  ∀ n, P4221517737128556680.a n = A171382 n

end A171382

/-! ## A171382.P17780126365976002337

`A086445(n)-A152832(n)`
-/

namespace A171382.P17780126365976002337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 n - A152832 n

end

end A171382.P17780126365976002337

namespace A171382

/-- `A086445(n)-A152832(n)` -/
def P17780126365976002337.Spec : Prop :=
  ∀ n, P17780126365976002337.a n = A171382 n

end A171382

/-! ## A171382.P3358469514538554634

`A269019(n)-A167030(n)`
-/

namespace A171382.P3358469514538554634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 n - A167030 n

end

end A171382.P3358469514538554634

namespace A171382

/-- `A269019(n)-A167030(n)` -/
def P3358469514538554634.Spec : Prop :=
  ∀ n, P3358469514538554634.a n = A171382 n

end A171382

/-!
# A171384: a(n) = A140475(n) - A167707(n).

The programs for A171384, the canonical program `A171384.P1462568005675599005` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171384 has offset 1).

The definition of A171384 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171384.P1462568005675599005

`A140475(n+1)-A167707(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A171384

/-- `A140475(n+1)-A167707(n+1)` -/
def P1462568005675599005.Spec : Prop :=
  ∀ n, P1462568005675599005.a n = A171384 (n + 1)

theorem P1462568005675599005.correct : P1462568005675599005.Spec := by
  intro n
  simp only [A171384, Nat.add_sub_cancel]

end A171384

/-! ## A171384.P2954363872727060125

`A175212(n+1)-A167707(n+1)`
-/

namespace A171384.P2954363872727060125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 1) - A167707 (n + 1)

end

end A171384.P2954363872727060125

namespace A171384

/-- `A175212(n+1)-A167707(n+1)` -/
def P2954363872727060125.Spec : Prop :=
  ∀ n, P2954363872727060125.a n = A171384 (n + 1)

end A171384

/-! ## A171384.P60729976521346421

`A171577(n+2)-A167707(n+1)`
-/

namespace A171384.P60729976521346421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 2) - A167707 (n + 1)

end

end A171384.P60729976521346421

namespace A171384

/-- `A171577(n+2)-A167707(n+1)` -/
def P60729976521346421.Spec : Prop :=
  ∀ n, P60729976521346421.a n = A171384 (n + 1)

end A171384

/-! ## A171384.P7046397881182370319

`record[A014963(xor(1, n)+5)]-A167707(n+1)`
-/

namespace A171384.P7046397881182370319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.xor 1 n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A167707 (n + 1)

end

end A171384.P7046397881182370319

namespace A171384

/-- `record[A014963(xor(1, n)+5)]-A167707(n+1)` -/
def P7046397881182370319.Spec : Prop :=
  ∀ n, P7046397881182370319.a n = A171384 (n + 1)

end A171384

/-! ## A171384.P9995775640645544503

`record[A006530(C(4, n)+n)]-A167707(n+1)`
-/

namespace A171384.P9995775640645544503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose 4 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A167707 (n + 1)

end

end A171384.P9995775640645544503

namespace A171384

/-- `record[A006530(C(4, n)+n)]-A167707(n+1)` -/
def P9995775640645544503.Spec : Prop :=
  ∀ n, P9995775640645544503.a n = A171384 (n + 1)

end A171384

/-! ## A171384.P17846041254122640645

`record[A014963(C(4, n)+n)]-A167707(n+1)`
-/

namespace A171384.P17846041254122640645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose 4 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A167707 (n + 1)

end

end A171384.P17846041254122640645

namespace A171384

/-- `record[A014963(C(4, n)+n)]-A167707(n+1)` -/
def P17846041254122640645.Spec : Prop :=
  ∀ n, P17846041254122640645.a n = A171384 (n + 1)

end A171384

/-! ## A171384.P2905970403623496946

`record[A020639(C(4, n)+n)]-A167707(n+1)`
-/

namespace A171384.P2905970403623496946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose 4 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A167707 (n + 1)

end

end A171384.P2905970403623496946

namespace A171384

/-- `record[A020639(C(4, n)+n)]-A167707(n+1)` -/
def P2905970403623496946.Spec : Prop :=
  ∀ n, P2905970403623496946.a n = A171384 (n + 1)

end A171384

/-! ## A171384.P18154896192993595825

`lcm(3, A000040(n+2))/3-A167707(n+1)`
-/

namespace A171384.P18154896192993595825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A000040 (n + 2)) : ℚ) / 3 - (A167707 (n + 1) : ℚ)

end

end A171384.P18154896192993595825

namespace A171384

/-- `lcm(3, A000040(n+2))/3-A167707(n+1)` -/
def P18154896192993595825.Spec : Prop :=
  ∀ n, P18154896192993595825.a n = (A171384 (n + 1) : ℚ)

end A171384

/-! ## A171384.P13764330970066161489

`record[A014963(abs(1-n)+5)]-A167707(n+1)`
-/

namespace A171384.P13764330970066161489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (|1 - (n : ℤ)| + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A167707 (n + 1)

end

end A171384.P13764330970066161489

namespace A171384

/-- `record[A014963(abs(1-n)+5)]-A167707(n+1)` -/
def P13764330970066161489.Spec : Prop :=
  ∀ n, P13764330970066161489.a n = A171384 (n + 1)

end A171384

/-! ## A171384.P196767196986528018

`record[A020639(or(1, 3*n+1))]-A167707(n+1)`
-/

namespace A171384.P196767196986528018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A167707 (n + 1)

end

end A171384.P196767196986528018

namespace A171384

/-- `record[A020639(or(1, 3*n+1))]-A167707(n+1)` -/
def P196767196986528018.Spec : Prop :=
  ∀ n, P196767196986528018.a n = A171384 (n + 1)

end A171384

/-!
# A171386: The characteristic function of 2 and 3: 1 if n is prime such that either n-1 or n+1 is prime, else 0.

The programs for A171386, the canonical program `A171386.P12260905367448190027` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171386 has offset 1).

The definition of A171386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171386.P12260905367448190027

`C(C(3, n), 3)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171386

/-- `C(C(3, n), 3)` -/
def P12260905367448190027.Spec : Prop :=
  ∀ n, (P12260905367448190027.a n : ℤ) = A171386 (n + 1)

theorem P12260905367448190027.correct : P12260905367448190027.Spec := by
  intro n
  simp only [A171386, Nat.add_sub_cancel]

end A171386

/-!
# A171387: The characteristic function of primes > 3: 1 if n is prime such that neither prime+-1 is prime else 0.

The programs for A171387, the canonical program `A171387.P1018153913845862194` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171387 has offset 1).

The definition of A171387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171387.P9211798143699052425

`char[p?[2*n+5]-1]`
-/

namespace A171387.P9211798143699052425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P9211798143699052425

namespace A171387

/-- `char[p?[2*n+5]-1]` -/
def P9211798143699052425.Spec : Prop :=
  ∀ n, (P9211798143699052425.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P1018153913845862194

`∑{p}[n+1, round(#/(n+5))]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171387

/-- `∑{p}[n+1, round(#/(n+5))]` -/
def P1018153913845862194.Spec : Prop :=
  ∀ n, P1018153913845862194.a n = A171387 (n + 1)

theorem P1018153913845862194.correct : P1018153913845862194.Spec := by
  intro n
  simp only [A171387, Nat.add_sub_cancel]

end A171387

/-! ## A171387.P2966868417783485303

`char[lt[4, ∑{p}[n+1, C(#, n)]]]`
-/

namespace A171387.P2966868417783485303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A171387.P2966868417783485303

namespace A171387

/-- `char[lt[4, ∑{p}[n+1, C(#, n)]]]` -/
def P2966868417783485303.Spec : Prop :=
  ∀ n, (P2966868417783485303.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P1878072837369039198

`round(n/∏{e}[n+1, #*(n+3)])`
-/

namespace A171387.P1878072837369039198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * (n + 3) : ℕ) : ℚ))

end

end A171387.P1878072837369039198

namespace A171387

/-- `round(n/∏{e}[n+1, #*(n+3)])` -/
def P1878072837369039198.Spec : Prop :=
  ∀ n, P1878072837369039198.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P800243010864337135

`round(n/(n+3)^∑{e}[n+1, #])`
-/

namespace A171387.P800243010864337135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((n + 3) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ))

end

end A171387.P800243010864337135

namespace A171387

/-- `round(n/(n+3)^∑{e}[n+1, #])` -/
def P800243010864337135.Spec : Prop :=
  ∀ n, P800243010864337135.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P2030519069829367009

`round(2*n/∑{d}[n+1, n+1+#])`
-/

namespace A171387.P2030519069829367009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1 + d) : ℕ) : ℚ))

end

end A171387.P2030519069829367009

namespace A171387

/-- `round(2*n/∑{d}[n+1, n+1+#])` -/
def P2030519069829367009.Spec : Prop :=
  ∀ n, P2030519069829367009.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P13506423107667881540

`floor(2*n/∏{e}[n+1, #*(n+3)])`
-/

namespace A171387.P13506423107667881540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * (n + 3) : ℕ) : ℚ)⌋

end

end A171387.P13506423107667881540

namespace A171387

/-- `floor(2*n/∏{e}[n+1, #*(n+3)])` -/
def P13506423107667881540.Spec : Prop :=
  ∀ n, P13506423107667881540.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P11690018278186901892

`floor(2*n/(n+3)^∑{e}[n+1, #])`
-/

namespace A171387.P11690018278186901892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / ((n + 3) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)⌋

end

end A171387.P11690018278186901892

namespace A171387

/-- `floor(2*n/(n+3)^∑{e}[n+1, #])` -/
def P11690018278186901892.Spec : Prop :=
  ∀ n, P11690018278186901892.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P5576464725296072145

`char[A165972(n+2)]`
-/

namespace A171387.P5576464725296072145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P5576464725296072145

namespace A171387

/-- `char[A165972(n+2)]` -/
def P5576464725296072145.Spec : Prop :=
  ∀ n, (P5576464725296072145.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P4068821697162520859

`char[A006093(n+3)]`
-/

namespace A171387.P4068821697162520859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P4068821697162520859

namespace A171387

/-- `char[A006093(n+3)]` -/
def P4068821697162520859.Spec : Prop :=
  ∀ n, (P4068821697162520859.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P5860320335235761743

`char[A039915(n+3)]`
-/

namespace A171387.P5860320335235761743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P5860320335235761743

namespace A171387

/-- `char[A039915(n+3)]` -/
def P5860320335235761743.Spec : Prop :=
  ∀ n, (P5860320335235761743.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P3794178565672759653

`char[A156037(n+3)]`
-/

namespace A171387.P3794178565672759653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P3794178565672759653

namespace A171387

/-- `char[A156037(n+3)]` -/
def P3794178565672759653.Spec : Prop :=
  ∀ n, (P3794178565672759653.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P15338733850267247402

`A353475(2*(n+1))`
-/

namespace A171387.P15338733850267247402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353475 (2 * (n + 1))

end

end A171387.P15338733850267247402

namespace A171387

/-- `A353475(2*(n+1))` -/
def P15338733850267247402.Spec : Prop :=
  ∀ n, P15338733850267247402.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P9858053875730431249

`A353481(3*(n+1))`
-/

namespace A171387.P9858053875730431249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (3 * (n + 1))

end

end A171387.P9858053875730431249

namespace A171387

/-- `A353481(3*(n+1))` -/
def P9858053875730431249.Spec : Prop :=
  ∀ n, P9858053875730431249.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P16876189383147762321

`A355443(4*(n+1))`
-/

namespace A171387.P16876189383147762321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (4 * (n + 1))

end

end A171387.P16876189383147762321

namespace A171387

/-- `A355443(4*(n+1))` -/
def P16876189383147762321.Spec : Prop :=
  ∀ n, P16876189383147762321.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P10183936726091571940

`A354926(6*(n+1))`
-/

namespace A171387.P10183936726091571940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (6 * (n + 1))

end

end A171387.P10183936726091571940

namespace A171387

/-- `A354926(6*(n+1))` -/
def P10183936726091571940.Spec : Prop :=
  ∀ n, P10183936726091571940.a n = A171387 (n + 1)

end A171387

/-! ## A171387.P11061780307902043731

`char[Δ[A101301(n+2)]]`
-/

namespace A171387.P11061780307902043731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P11061780307902043731

namespace A171387

/-- `char[Δ[A101301(n+2)]]` -/
def P11061780307902043731.Spec : Prop :=
  ∀ n, (P11061780307902043731.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P2584492387861447915

`char[record[A037225(n+2)]]`
-/

namespace A171387.P2584492387861447915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P2584492387861447915

namespace A171387

/-- `char[record[A037225(n+2)]]` -/
def P2584492387861447915.Spec : Prop :=
  ∀ n, (P2584492387861447915.a n : ℤ) = A171387 (n + 1)

end A171387

/-! ## A171387.P14826742421429405940

`char[record[A053568(n+2)]]`
-/

namespace A171387.P14826742421429405940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053568 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171387.P14826742421429405940

namespace A171387

/-- `char[record[A053568(n+2)]]` -/
def P14826742421429405940.Spec : Prop :=
  ∀ n, (P14826742421429405940.a n : ℤ) = A171387 (n + 1)

end A171387

/-!
# A171389: a(n) = 21*2^n - 1.

The programs for A171389, the canonical program `A171389.P11836700993274447639` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171389 has offset 0).

The definition of A171389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*2^n-1` (program `A171389.P11836700993274447639`, by `A171389.P11836700993274447639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171389.P11836700993274447639

`21*2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171389

/-- `21*2^n-1` -/
def P11836700993274447639.Spec : Prop :=
  ∀ n, P11836700993274447639.a n = A171389 n

theorem P11836700993274447639.correct : P11836700993274447639.Spec := by
  intro n
  simp only [A171389]

end A171389

/-! ## A171389.P4655467971034522151

`or(1, 2*a(n-1))` with `a(0)=20`
-/

namespace A171389.P4655467971034522151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A171389.P4655467971034522151

namespace A171389

/-- `or(1, 2*a(n-1))` -/
def P4655467971034522151.Spec : Prop :=
  ∀ n, (P4655467971034522151.a n : ℤ) = A171389 n

end A171389

/-! ## A171389.P6974471265130630883

`xor(1, 2*a(n-1))` with `a(0)=20`
-/

namespace A171389.P6974471265130630883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A171389.P6974471265130630883

namespace A171389

/-- `xor(1, 2*a(n-1))` -/
def P6974471265130630883.Spec : Prop :=
  ∀ n, (P6974471265130630883.a n : ℤ) = A171389 n

end A171389

/-! ## A171389.P12829403970886782425

`∑[2*a(n-1)]` with `a(0)=20, a(1)=21`
-/

namespace A171389.P12829403970886782425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20, 21] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171389.P12829403970886782425

namespace A171389

/-- `∑[2*a(n-1)]` -/
def P12829403970886782425.Spec : Prop :=
  ∀ n, (P12829403970886782425.a n : ℤ) = A171389 n

end A171389

/-! ## A171389.P3042240184871390709

`2*(a(n-1)+1/2)` with `a(0)=20`
-/

namespace A171389.P3042240184871390709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [20] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A171389.P3042240184871390709

namespace A171389

/-- `2*(a(n-1)+1/2)` -/
def P3042240184871390709.Spec : Prop :=
  ∀ n, P3042240184871390709.a n = (A171389 n : ℚ)

end A171389

/-! ## A171389.P7246787627992516502

`A267589(n+4)`
-/

namespace A171389.P7246787627992516502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267589 (n + 4)

end

end A171389.P7246787627992516502

namespace A171389

/-- `A267589(n+4)` -/
def P7246787627992516502.Spec : Prop :=
  ∀ n, P7246787627992516502.a n = A171389 n

end A171389

/-! ## A171389.P14277050420733209437

`record[Δ[A112033(n+1)]-1]`
-/

namespace A171389.P14277050420733209437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171389.P14277050420733209437

namespace A171389

/-- `record[Δ[A112033(n+1)]-1]` -/
def P14277050420733209437.Spec : Prop :=
  ∀ n, P14277050420733209437.a n = A171389 n

end A171389

/-! ## A171389.P17415523869321040321

`xor(A020707(n), A198275(n))`
-/

namespace A171389.P17415523869321040321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A198275 n)

end

end A171389.P17415523869321040321

namespace A171389

/-- `xor(A020707(n), A198275(n))` -/
def P17415523869321040321.Spec : Prop :=
  ∀ n, P17415523869321040321.a n = A171389 n

end A171389

/-! ## A171389.P4184818057098604448

`xor(A126646(n), A175805(n))`
-/

namespace A171389.P4184818057098604448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A175805 n)

end

end A171389.P4184818057098604448

namespace A171389

/-- `xor(A126646(n), A175805(n))` -/
def P4184818057098604448.Spec : Prop :=
  ∀ n, P4184818057098604448.a n = A171389 n

end A171389

/-! ## A171389.P16955175428420933009

`record[A158772(A029579(n))-1]`
-/

namespace A171389.P16955175428420933009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158772 (A029579 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171389.P16955175428420933009

namespace A171389

/-- `record[A158772(A029579(n))-1]` -/
def P16955175428420933009.Spec : Prop :=
  ∀ n, P16955175428420933009.a n = A171389 n

end A171389

/-! ## A171389.P3744267063982867156

`record[A158772(A126759(n))-1]`
-/

namespace A171389.P3744267063982867156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158772 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171389.P3744267063982867156

namespace A171389

/-- `record[A158772(A126759(n))-1]` -/
def P3744267063982867156.Spec : Prop :=
  ∀ n, P3744267063982867156.a n = A171389 n

end A171389

/-! ## A171389.P6277885703591434901

`xor(A000079(n), A086225(n+1))`
-/

namespace A171389.P6277885703591434901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A086225 (n + 1))

end

end A171389.P6277885703591434901

namespace A171389

/-- `xor(A000079(n), A086225(n+1))` -/
def P6277885703591434901.Spec : Prop :=
  ∀ n, P6277885703591434901.a n = A171389 n

end A171389

/-! ## A171389.P10024777630474682248

`or(A000079(n+2), A198275(n))`
-/

namespace A171389.P10024777630474682248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 2)) (A198275 n)

end

end A171389.P10024777630474682248

namespace A171389

/-- `or(A000079(n+2), A198275(n))` -/
def P10024777630474682248.Spec : Prop :=
  ∀ n, P10024777630474682248.a n = A171389 n

end A171389

/-! ## A171389.P17599035752517942589

`or(A020714(n+2), A198275(n))`
-/

namespace A171389.P17599035752517942589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020714 (n + 2)) (A198275 n)

end

end A171389.P17599035752517942589

namespace A171389

/-- `or(A020714(n+2), A198275(n))` -/
def P17599035752517942589.Spec : Prop :=
  ∀ n, P17599035752517942589.a n = A171389 n

end A171389

/-! ## A171389.P312626781235801949

`or(A020714(n)-1, A198275(n))`
-/

namespace A171389.P312626781235801949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020714 n - 1) (A198275 n)

end

end A171389.P312626781235801949

namespace A171389

/-- `or(A020714(n)-1, A198275(n))` -/
def P312626781235801949.Spec : Prop :=
  ∀ n, P312626781235801949.a n = A171389 n

end A171389

/-! ## A171389.P12156866698360699271

`xor(A091629(n+1), A198276(n))`
-/

namespace A171389.P12156866698360699271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091629 (n + 1)) (A198276 n)

end

end A171389.P12156866698360699271

namespace A171389

/-- `xor(A091629(n+1), A198276(n))` -/
def P12156866698360699271.Spec : Prop :=
  ∀ n, P12156866698360699271.a n = A171389 n

end A171389

/-! ## A171389.P8368870017958060449

`xor(A198274(n)+A091629(n+1), A091629(n+1))`
-/

namespace A171389.P8368870017958060449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198274 n + A091629 (n + 1)) (A091629 (n + 1))

end

end A171389.P8368870017958060449

namespace A171389

/-- `xor(A198274(n)+A091629(n+1), A091629(n+1))` -/
def P8368870017958060449.Spec : Prop :=
  ∀ n, P8368870017958060449.a n = A171389 n

end A171389

/-! ## A171389.P14223272577703924459

`Δ[2*a(n-1)+n+3]` with `a(0)=16`
-/

namespace A171389.P14223272577703924459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  2 * f1 (n - 1) + (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171389.P14223272577703924459

namespace A171389

/-- `Δ[2*a(n-1)+n+3]` -/
def P14223272577703924459.Spec : Prop :=
  ∀ n, P14223272577703924459.a n = A171389 n

end A171389

/-!
# A171390: a(n) = 37*2^(n-1)-1.

The programs for A171390, the canonical program `A171390.P1204949123831550913` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171390 has offset 1).

The definition of A171390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171390.P1204949123831550913

`37*2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171390

/-- `37*2^n-1` -/
def P1204949123831550913.Spec : Prop :=
  ∀ n, P1204949123831550913.a n = A171390 (n + 1)

theorem P1204949123831550913.correct : P1204949123831550913.Spec := by
  intro n
  simp only [A171390, Nat.add_sub_cancel]

end A171390

/-! ## A171390.P13913062988327879821

`or(1, 2*a(n-1))` with `a(0)=36`
-/

namespace A171390.P13913062988327879821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A171390.P13913062988327879821

namespace A171390

/-- `or(1, 2*a(n-1))` -/
def P13913062988327879821.Spec : Prop :=
  ∀ n, (P13913062988327879821.a n : ℤ) = A171390 (n + 1)

end A171390

/-! ## A171390.P4577383634864836698

`xor(1, 2*a(n-1))` with `a(0)=36`
-/

namespace A171390.P4577383634864836698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A171390.P4577383634864836698

namespace A171390

/-- `xor(1, 2*a(n-1))` -/
def P4577383634864836698.Spec : Prop :=
  ∀ n, (P4577383634864836698.a n : ℤ) = A171390 (n + 1)

end A171390

/-! ## A171390.P9510590031645315967

`∑[2*a(n-1)]` with `a(0)=36, a(1)=37`
-/

namespace A171390.P9510590031645315967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36, 37] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171390.P9510590031645315967

namespace A171390

/-- `∑[2*a(n-1)]` -/
def P9510590031645315967.Spec : Prop :=
  ∀ n, (P9510590031645315967.a n : ℤ) = A171390 (n + 1)

end A171390

/-! ## A171390.P2713834710121762801

`2*(a(n-1)-(1/2-1))` with `a(0)=36`
-/

namespace A171390.P2713834710121762801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [36] fun n a =>
  2 * (a (n - 1) - ((1 : ℚ) / 2 - 1))

end

end A171390.P2713834710121762801

namespace A171390

/-- `2*(a(n-1)-(1/2-1))` -/
def P2713834710121762801.Spec : Prop :=
  ∀ n, P2713834710121762801.a n = (A171390 (n + 1) : ℚ)

end A171390

/-! ## A171390.P1365242675114414598

`round(2*a(n-1)-A153881(n+1))` with `a(0)=36`

`round` is left out, it is the identity on integers.
-/

namespace A171390.P1365242675114414598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36] fun n a =>
  2 * a (n - 1) - A153881 (n + 1)

end

end A171390.P1365242675114414598

namespace A171390

/-- `round(2*a(n-1)-A153881(n+1))` -/
def P1365242675114414598.Spec : Prop :=
  ∀ n, P1365242675114414598.a n = A171390 (n + 1)

end A171390

/-! ## A171390.P15543637605059424602

`or(A000225(n), A005010(n+2))`
-/

namespace A171390.P15543637605059424602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A005010 (n + 2))

end

end A171390.P15543637605059424602

namespace A171390

/-- `or(A000225(n), A005010(n+2))` -/
def P15543637605059424602.Spec : Prop :=
  ∀ n, P15543637605059424602.a n = A171390 (n + 1)

end A171390

/-! ## A171390.P7118084866427701177

`xor(A000079(n), A198276(n+1))`
-/

namespace A171390.P7118084866427701177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A198276 (n + 1))

end

end A171390.P7118084866427701177

namespace A171390

/-- `xor(A000079(n), A198276(n+1))` -/
def P7118084866427701177.Spec : Prop :=
  ∀ n, P7118084866427701177.a n = A171390 (n + 1)

end A171390

/-! ## A171390.P12772592806184693921

`xor(A020714(n), A198275(n+1))`
-/

namespace A171390.P12772592806184693921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020714 n) (A198275 (n + 1))

end

end A171390.P12772592806184693921

namespace A171390

/-- `xor(A020714(n), A198275(n+1))` -/
def P12772592806184693921.Spec : Prop :=
  ∀ n, P12772592806184693921.a n = A171390 (n + 1)

end A171390

/-! ## A171390.P1181196172776992888

`xor(A005029(n+2), A198275(n))`
-/

namespace A171390.P1181196172776992888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005029 (n + 2)) (A198275 n)

end

end A171390.P1181196172776992888

namespace A171390

/-- `xor(A005029(n+2), A198275(n))` -/
def P1181196172776992888.Spec : Prop :=
  ∀ n, P1181196172776992888.a n = A171390 (n + 1)

end A171390

/-! ## A171390.P15485220807212506307

`xor(A081253(n+5), A081254(n+1))`
-/

namespace A171390.P15485220807212506307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081253 (n + 5)) (A081254 (n + 1))

end

end A171390.P15485220807212506307

namespace A171390

/-- `xor(A081253(n+5), A081254(n+1))` -/
def P15485220807212506307.Spec : Prop :=
  ∀ n, P15485220807212506307.a n = A171390 (n + 1)

end A171390

/-! ## A171390.P2899225559626521482

`(A375155(n+1)-3)/4`
-/

namespace A171390.P2899225559626521482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375155 (n + 1) - 3 : ℚ) / 4

end

end A171390.P2899225559626521482

namespace A171390

/-- `(A375155(n+1)-3)/4` -/
def P2899225559626521482.Spec : Prop :=
  ∀ n, P2899225559626521482.a n = (A171390 (n + 1) : ℚ)

end A171390

/-!
# A171394: Solutions to the equation M(n) = -11 (M = Mertens's function A002321).

The programs for A171394, there is no canonical definition to state claims against.
-/

/-! ## A171394.P6005580043823994353

`A034699(A002805(2*(n+1)))+659`
-/

namespace A171394.P6005580043823994353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A002805 (2 * (n + 1))).toNat + 659

end

end A171394.P6005580043823994353

/-!
# A171396: Squares in lunar arithmetic in base 3 written in base 3.

The programs for A171396, there is no canonical definition to state claims against.
-/

/-! ## A171396.P5250460190871772306

`A087019(A007089(n)%A243736(n+1))`
-/

namespace A171396.P5250460190871772306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (Int.tmod (A007089 n) (A243736 (n + 1))).toNat

end

end A171396.P5250460190871772306

/-! ## A171396.P10397931740983117576

`A087019(A007089(n))%A276905(n+4)`
-/

namespace A171396.P10397931740983117576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087019 (A007089 n).toNat) (A276905 (n + 4))

end

end A171396.P10397931740983117576

/-! ## A171396.P14726659309078971214

`A087019((A343810(n)/4)%A097824(n+8))`
-/

namespace A171396.P14726659309078971214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (Int.tmod (SequenceMachineLib.roundAway ((A343810 n : ℚ) / 4)) (A097824 (n + 8))).toNat

end

end A171396.P14726659309078971214

/-! ## A171396.P4602307635542085116

`A171460(A023717(n))`
-/

namespace A171396.P4602307635542085116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171460 (A023717 n).toNat

end

end A171396.P4602307635542085116

/-! ## A171396.P16632175275405615469

`A171591(A037454(n))`
-/

namespace A171396.P16632175275405615469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171591 (A037454 n).toNat

end

end A171396.P16632175275405615469

/-!
# A171397: Write n in base 10, but then read it as if it were written in base 11: if n = Sum_{i >= 0} d_i*10^i, with 0 <= d_i <= 9, then a(n) = Sum_{i >= 0} d_i*11^i.

The programs for A171397, there is no canonical definition to state claims against.
-/

/-! ## A171397.P10265441456648814889

`comp[A095778(n+1)]`
-/

namespace A171397.P10265441456648814889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171397.P10265441456648814889

/-! ## A171397.P8476988047600804028

`lt[A190599(n), 10]`
-/

namespace A171397.P8476988047600804028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190599 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171397.P8476988047600804028

/-! ## A171397.P17513135363021696250

`comp[98-11*n]`
-/

namespace A171397.P17513135363021696250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171397.P17513135363021696250

/-! ## A171397.P14904096162508626005

`A000194(n²)+floor(n/10)`
-/

namespace A171397.P14904096162508626005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n ^ 2) + ⌊(n : ℚ) / 10⌋

end

end A171397.P14904096162508626005

/-! ## A171397.P14633059995371845823

`A000196(∑[2*n])+floor(n/10)`
-/

namespace A171397.P14633059995371845823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j) + ⌊(n : ℚ) / 10⌋

end

end A171397.P14633059995371845823

/-! ## A171397.P13902808968474954664

`(a(floor(n/10))+n)%A072857(n+1)` with `a(0)=0`
-/

namespace A171397.P13902808968474954664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)) (A072857 (n + 1))

end

end A171397.P13902808968474954664

/-! ## A171397.P12555019766999776656

`A076314(A056142(n))`
-/

namespace A171397.P12555019766999776656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A056142 n).toNat

end

end A171397.P12555019766999776656

/-! ## A171397.P6969530493854960266

`A076314(A056143(n))`
-/

namespace A171397.P6969530493854960266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A056143 n).toNat

end

end A171397.P6969530493854960266

/-! ## A171397.P417186434028312005

`eq[A055098(n+1), A098378(n+1)]`
-/

namespace A171397.P417186434028312005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171397.P417186434028312005

/-!
# A171398: `X(n,k)' triangle read by rows. X(n,k) is the number of k-subsets of Z_n up to (u,z)-equivalence.

The programs for A171398, there is no canonical definition to state claims against.
-/

/-! ## A171398.P4353818729765216252

`A077581(∏{e}[A099759(n), #])`
-/

namespace A171398.P4353818729765216252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A171398.P4353818729765216252

/-! ## A171398.P4368145985727107670

`A034002(A395185(n))`
-/

namespace A171398.P4368145985727107670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034002 (A395185 n).toNat

end

end A171398.P4368145985727107670

/-! ## A171398.P17422337061260831091

`gcd(A307730(A374985(n)), A348460(n+1))`
-/

namespace A171398.P17422337061260831091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307730 (A374985 n).toNat) (A348460 (n + 1))

end

end A171398.P17422337061260831091

/-! ## A171398.P4737147295439060193

`gcd(A224697(n), A374637(2*n+3))`
-/

namespace A171398.P4737147295439060193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224697 n) (A374637 (2 * n + 3))

end

end A171398.P4737147295439060193

/-! ## A171398.P14855547934414866477

`gcd(A052307(n), A276516(A316209(n+1)))`
-/

namespace A171398.P14855547934414866477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052307 n) (A276516 (A316209 (n + 1)).toNat)

end

end A171398.P14855547934414866477

/-!
# A171399: Prime(k), where k is such that (Sum_{i=1..k} prime(i)) / k is an integer.

The programs for A171399, there is no canonical definition to state claims against.
-/

/-! ## A171399.P3026450732312707415

`A001748(A045345(n+1))/3`
-/

namespace A171399.P3026450732312707415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A045345 (n + 1)).toNat : ℚ) / 3

end

end A171399.P3026450732312707415

