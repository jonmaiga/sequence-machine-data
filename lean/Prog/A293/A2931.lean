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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A293100: T(n,k) = Number of n X k 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293100, there is no canonical definition to state claims against.
-/

/-! ## A293100.P11405968272511133035

`∑{p}[C(A201637(n), 5), #]`
-/

namespace A293100.P11405968272511133035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A201637 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A293100.P11405968272511133035

/-! ## A293100.P14639364319685333282

`∑{p}[A000389(A201637(n)), #]`
-/

namespace A293100.P14639364319685333282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A201637 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A293100.P14639364319685333282

/-! ## A293100.P4863212165586588126

`∑{p}[A233672(A256116(n+1)), #]`
-/

namespace A293100.P4863212165586588126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233672 (A256116 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A293100.P4863212165586588126

/-! ## A293100.P9606192416936494048

`∏{e}[A170875(3*n+4), -floor(A222060(n+1)/#)]`
-/

namespace A293100.P9606192416936494048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170875 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-⌊(A222060 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)⌋)

end

end A293100.P9606192416936494048

/-! ## A293100.P3349184982744488905

`A125688(A172300(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A293100.P3349184982744488905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (SequenceMachineLib.roundAway ((A172300 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A293100.P3349184982744488905

/-!
# A293101: Number of 2 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293101, there is no canonical definition to state claims against.
-/

/-! ## A293101.P10113805530561081325

`A293100(∑[n+1]+2)`
-/

namespace A293101.P10113805530561081325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293101.P10113805530561081325

/-! ## A293101.P12841339482784131989

`A293100(A133263(n+1))%A081187(n)`
-/

namespace A293101.P12841339482784131989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293100 (A133263 (n + 1)).toNat) (A081187 n)

end

end A293101.P12841339482784131989

/-! ## A293101.P8493512955019246635

`A010685(2*n)*A293100(A133263(n+1))`
-/

namespace A293101.P8493512955019246635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A293100 (A133263 (n + 1)).toNat

end

end A293101.P8493512955019246635

/-! ## A293101.P5378653534078549573

`A055396(2*(n+1))*A293100(A133263(n+1))`
-/

namespace A293101.P5378653534078549573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) * A293100 (A133263 (n + 1)).toNat

end

end A293101.P5378653534078549573

/-! ## A293101.P8991009176854862744

`A293100(A133263(n+1))*A348940(2*n+1)`
-/

namespace A293101.P8991009176854862744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A133263 (n + 1)).toNat * A348940 (2 * n + 1)

end

end A293101.P8991009176854862744

/-!
# A293102: Number of 3 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293102, there is no canonical definition to state claims against.
-/

/-! ## A293102.P18110686820413348836

`A293100(∑[n+2]+4)`
-/

namespace A293102.P18110686820413348836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A293102.P18110686820413348836

/-! ## A293102.P13260376838663227548

`A293100(A167614(n+1))+A067169(n)`
-/

namespace A293102.P13260376838663227548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A167614 (n + 1)).toNat + A067169 (n + 11)

end

end A293102.P13260376838663227548

/-! ## A293102.P11262034708011532961

`A057427(n)*A293100(A167614(n+1))`
-/

namespace A293102.P11262034708011532961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A293100 (A167614 (n + 1)).toNat

end

end A293102.P11262034708011532961

/-! ## A293102.P12402704331538629583

`A293100(A167614(n+1))%A017478(n)`
-/

namespace A293102.P12402704331538629583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293100 (A167614 (n + 1)).toNat) (A017478 n)

end

end A293102.P12402704331538629583

/-! ## A293102.P10872189439817659726

`lcm(A011594(n), A293100(A167614(n+1)))`
-/

namespace A293102.P10872189439817659726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011594 n) (A293100 (A167614 (n + 1)).toNat)

end

end A293102.P10872189439817659726

/-!
# A293103: Number of 4 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293103, there is no canonical definition to state claims against.
-/

/-! ## A293103.P11639317145005659421

`A293100(A141214(n)+7)`
-/

namespace A293103.P11639317145005659421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A141214 n + 7).toNat

end

end A293103.P11639317145005659421

/-! ## A293103.P17825943385694808413

`A293100(A052905(n)+9)`
-/

namespace A293103.P17825943385694808413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A052905 n + 9).toNat

end

end A293103.P17825943385694808413

/-! ## A293103.P17932653193304896068

`A293100(A055999(n)+10)`
-/

namespace A293103.P17932653193304896068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A055999 n + 10).toNat

end

end A293103.P17932653193304896068

/-! ## A293103.P5979193498999996881

`A293100(A167614(n+2)+1)`
-/

namespace A293103.P5979193498999996881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A167614 (n + 2) + 1).toNat

end

end A293103.P5979193498999996881

/-! ## A293103.P8770386169969188042

`A293100(A112355(n+1)+4)`
-/

namespace A293103.P8770386169969188042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A112355 (n + 1) + 4).toNat

end

end A293103.P8770386169969188042

/-!
# A293104: Number of 5 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293104, there is no canonical definition to state claims against.
-/

/-! ## A293104.P11765112987737970229

`A293100(A167499(n+3))`
-/

namespace A293104.P11765112987737970229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A167499 (n + 3)).toNat

end

end A293104.P11765112987737970229

/-! ## A293104.P13862585519987225621

`A293100(A155212(n)+13)`
-/

namespace A293104.P13862585519987225621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A155212 n + 13).toNat

end

end A293104.P13862585519987225621

/-! ## A293104.P3320016076230613006

`A293100(A056000(n)+15)`
-/

namespace A293104.P3320016076230613006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A056000 n + 15).toNat

end

end A293104.P3320016076230613006

/-! ## A293104.P12974199478158043968

`A293100(eq[7, A066657(n)])`
-/

namespace A293104.P12974199478158043968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293104.P12974199478158043968

/-! ## A293104.P15618816566294464889

`A293100(eq[6, A131818(n+1)])`
-/

namespace A293104.P15618816566294464889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293104.P15618816566294464889

/-!
# A293105: Number of 6 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293105, there is no canonical definition to state claims against.
-/

/-! ## A293105.P5486905663793803181

`A293100(A166136(n+4))`
-/

namespace A293105.P5486905663793803181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A166136 (n + 4)).toNat

end

end A293105.P5486905663793803181

/-! ## A293105.P1071070228989599171

`A293100(Δ[A264443(n)]+10)`
-/

namespace A293105.P1071070228989599171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (f1 (n + 1) - f1 n + 10).toNat

end

end A293105.P1071070228989599171

/-! ## A293105.P2680068739697192220

`A293100(A155212(n+1)+14)`
-/

namespace A293105.P2680068739697192220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A155212 (n + 1) + 14).toNat

end

end A293105.P2680068739697192220

/-! ## A293105.P9747473780463965092

`A293100(eq[7, A131818(n+1)])`
-/

namespace A293105.P9747473780463965092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293105.P9747473780463965092

/-! ## A293105.P12702861079005437158

`A293100(Δ[A023545(n+1)]+10)`
-/

namespace A293105.P12702861079005437158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (f1 (n + 1) - f1 n + 10).toNat

end

end A293105.P12702861079005437158

/-!
# A293106: Number of 7 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293106, there is no canonical definition to state claims against.
-/

/-! ## A293106.P6652428353485747069

`A293100(A302537(n)+27)`
-/

namespace A293106.P6652428353485747069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A302537 n + 27).toNat

end

end A293106.P6652428353485747069

/-! ## A293106.P11815608674017946798

`A293100(eq[11, A066657(n)])`
-/

namespace A293106.P11815608674017946798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293106.P11815608674017946798

/-! ## A293106.P2776758140403163037

`A293100(A112355(n+4)+7)`
-/

namespace A293106.P2776758140403163037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A112355 (n + 4) + 7).toNat

end

end A293106.P2776758140403163037

/-! ## A293106.P5020439942416290299

`A293100(eq[8, A131818(n+1)])`
-/

namespace A293106.P5020439942416290299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293106.P5020439942416290299

/-! ## A293106.P980540655243355836

`A293100(A000124(n+7)-(n+1))`
-/

namespace A293106.P980540655243355836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A293106.P980540655243355836

/-!
# A293108: Number A(n,k) of multisets of nonempty words with a total of n letters over k-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A293108, there is no canonical definition to state claims against.
-/

/-! ## A293108.P12011144668491572681

`A294220(n)+A287272(A293135(n))`
-/

namespace A293108.P12011144668491572681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 n + A287272 (A293135 n).toNat

end

end A293108.P12011144668491572681

/-! ## A293108.P9797316862393366888

`A215086(n)-A001222(A262124(n)!)`
-/

namespace A293108.P9797316862393366888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 n - A001222 (Nat.factorial (A262124 n).toNat)

end

end A293108.P9797316862393366888

/-! ## A293108.P14262167028457000400

`A287272(A293135(n))+A108611(6*A288942(n))`
-/

namespace A293108.P14262167028457000400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A293135 n).toNat + A108611 (6 * A288942 n).toNat

end

end A293108.P14262167028457000400

/-! ## A293108.P6433159533686048689

`A292745(n)%Δ[A115771(n)]`
-/

namespace A293108.P6433159533686048689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 n) (f1 (n + 1) - f1 n)

end

end A293108.P6433159533686048689

/-! ## A293108.P8566347131447418792

`A117707(A059268(n)*A143841(n))`
-/

namespace A293108.P8566347131447418792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A059268 n * A143841 n).toNat

end

end A293108.P8566347131447418792

/-!
# A293109: Number T(n,k) of multisets of nonempty words with a total of n letters over k-ary alphabet containing the k-th letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A293109, there is no canonical definition to state claims against.
-/

/-! ## A293109.P1761582044081645704

`A176839(A143395(n)+1)`
-/

namespace A293109.P1761582044081645704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A143395 n + 1).toNat

end

end A293109.P1761582044081645704

/-! ## A293109.P1471804791589319942

`A117707(A122542(n)*A290222(n))`
-/

namespace A293109.P1471804791589319942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A122542 n * A290222 n).toNat

end

end A293109.P1471804791589319942

/-! ## A293109.P16062483071379112555

`A117707(A130330(n)*A294219(n))`
-/

namespace A293109.P16062483071379112555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A130330 n * A294219 n).toNat

end

end A293109.P16062483071379112555

/-! ## A293109.P8192296271682943698

`A194672(n)%A034006(A084938(n))`
-/

namespace A293109.P8192296271682943698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194672 n) (A034006 (A084938 n).toNat)

end

end A293109.P8192296271682943698

/-! ## A293109.P483456276881263932

`A026747(n)-A091247(A089504(n+1))`
-/

namespace A293109.P483456276881263932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 n - A091247 (A089504 (n + 1)).toNat

end

end A293109.P483456276881263932

/-!
# A293110: Number of multisets of nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293110, there is no canonical definition to state claims against.
-/

/-! ## A293110.P11279652582404851952

`A293108(∑[4*n])`
-/

namespace A293110.P11279652582404851952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293110.P11279652582404851952

/-! ## A293110.P5971930584559634135

`or(A000007(n), A293108(A046092(n)))`
-/

namespace A293110.P5971930584559634135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293108 (A046092 n).toNat)

end

end A293110.P5971930584559634135

/-! ## A293110.P18371408492194223101

`A293108(A046092(n))+A000007(n+1)`
-/

namespace A293110.P18371408492194223101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A046092 n).toNat + A000007 (n + 1)

end

end A293110.P18371408492194223101

/-! ## A293110.P1140782804942841509

`A293108(A046092(n))%A203416(n+1)`
-/

namespace A293110.P1140782804942841509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293108 (A046092 n).toNat) (A203416 (n + 1))

end

end A293110.P1140782804942841509

/-! ## A293110.P9810968814250235481

`A000120(A001316(n))*A293108(A106232(n+1))`
-/

namespace A293110.P9810968814250235481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat * A293108 (A106232 (n + 1)).toNat

end

end A293110.P9810968814250235481

/-!
# A293111: Number of multisets of nonempty words with a total of 2n letters over n-ary alphabet containing the n-th letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293111, there is no canonical definition to state claims against.
-/

/-! ## A293111.P14761867804553284545

`A293109(∑[4*n])`
-/

namespace A293111.P14761867804553284545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293111.P14761867804553284545

/-! ## A293111.P17530398674144462292

`record[A003982(n)*A293109(n)]`
-/

namespace A293111.P17530398674144462292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A293109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293111.P17530398674144462292

/-! ## A293111.P14172059390486175400

`record[A293109(n*A008619(n))]`
-/

namespace A293111.P14172059390486175400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293111.P14172059390486175400

/-! ## A293111.P7263509151346848744

`record[A293109(A028242((n+1)²))]`
-/

namespace A293111.P7263509151346848744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A028242 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293111.P7263509151346848744

/-! ## A293111.P2847652397035667687

`record[A293109(A213633((n+1)²))]`
-/

namespace A293111.P2847652397035667687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A213633 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293111.P2847652397035667687

/-!
# A293112: Number A(n,k) of sets of nonempty words with a total of n letters over k-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A293112, there is no canonical definition to state claims against.
-/

/-! ## A293112.P10624733280627537852

`A117707(A294250(n)+A243081(n))`
-/

namespace A293112.P10624733280627537852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A294250 n + A243081 n).toNat

end

end A293112.P10624733280627537852

/-! ## A293112.P16055505856905248933

`A117707(A294250(n)+A255636(n+1))`
-/

namespace A293112.P16055505856905248933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A294250 n + A255636 (n + 1)).toNat

end

end A293112.P16055505856905248933

/-! ## A293112.P269811981537687895

`A117707(A294250(n)+A292085(n+1))`
-/

namespace A293112.P269811981537687895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A294250 n + A292085 (n + 1)).toNat

end

end A293112.P269811981537687895

/-! ## A293112.P12868346652420234547

`A163352(or(A255636(n+1), A294250(n)))`
-/

namespace A293112.P12868346652420234547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (Int.lor (A255636 (n + 1)) (A294250 n)).toNat

end

end A293112.P12868346652420234547

/-! ## A293112.P15311048050910745333

`A225631(n)-A176202(A293486(n))`
-/

namespace A293112.P15311048050910745333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225631 n - A176202 (A293486 n).toNat

end

end A293112.P15311048050910745333

/-!
# A293113: Number T(n,k) of sets of nonempty words with a total of n letters over k-ary alphabet containing the k-th letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A293113, there is no canonical definition to state claims against.
-/

/-! ## A293113.P11256986428022379774

`A048766(A048993(n)*A202924(n+1))`
-/

namespace A293113.P11256986428022379774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048993 n * A202924 (n + 1)).toNat

end

end A293113.P11256986428022379774

/-! ## A293113.P13792106024722898305

`A048766(A151511(n)*A202924(n+1))`
-/

namespace A293113.P13792106024722898305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A151511 n * A202924 (n + 1)).toNat

end

end A293113.P13792106024722898305

/-! ## A293113.P16452449554679951381

`A117707(A091480(n+1)*A243060(n+1))`
-/

namespace A293113.P16452449554679951381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A091480 (n + 1) * A243060 (n + 1)).toNat

end

end A293113.P16452449554679951381

/-! ## A293113.P16321209451200704506

`A319951(A034328(n)*A291883(n))`
-/

namespace A293113.P16321209451200704506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A034328 n * A291883 n).toNat

end

end A293113.P16321209451200704506

/-! ## A293113.P7420578504927235284

`or(A243566(A001045(n)), A371788(n))`
-/

namespace A293113.P7420578504927235284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243566 (A001045 n).toNat) (A371788 n)

end

end A293113.P7420578504927235284

/-!
# A293114: Number of sets of nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293114, there is no canonical definition to state claims against.
-/

/-! ## A293114.P10163097661132814917

`A293112(∑[4*n])`
-/

namespace A293114.P10163097661132814917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293114.P10163097661132814917

/-! ## A293114.P5001306147228562099

`or(A000007(n), A293112((n+1)*2*n))`
-/

namespace A293114.P5001306147228562099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293112 ((n + 1) * (2 * n)))

end

end A293114.P5001306147228562099

/-! ## A293114.P6784674628499159166

`A293112(A001105(n))+A057427(n)`
-/

namespace A293114.P6784674628499159166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A001105 n).toNat + A057427 n

end

end A293114.P6784674628499159166

/-! ## A293114.P15212756290542699901

`A293112(A001105(n))-A057428(n)`
-/

namespace A293114.P15212756290542699901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A001105 n).toNat - A057428 n

end

end A293114.P15212756290542699901

/-! ## A293114.P15018013929461770050

`A293112((n+1)*2*n)^A001222(A027746(n+1))`
-/

namespace A293114.P15018013929461770050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293112 ((n + 1) * (2 * n)) : ℚ) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A293114.P15018013929461770050

/-!
# A293115: Number of sets of nonempty words with a total of 2n letters over n-ary alphabet containing the n-th letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293115, there is no canonical definition to state claims against.
-/

/-! ## A293115.P11494297227842537224

`A293113(∑[4*n])`
-/

namespace A293115.P11494297227842537224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293115.P11494297227842537224

/-! ## A293115.P11442463750155430780

`gcd(A000038(n), A293113(A106232(n+1)))`
-/

namespace A293115.P11442463750155430780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293113 (A106232 (n + 1)).toNat)

end

end A293115.P11442463750155430780

/-! ## A293115.P7837637771476065267

`A293113(A106232(n+1))+A000038(n+1)`
-/

namespace A293115.P7837637771476065267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A106232 (n + 1)).toNat + A000038 (n + 1)

end

end A293115.P7837637771476065267

/-! ## A293115.P15464832227405068194

`A000034(2*n)*A293113(A106232(n+1))`
-/

namespace A293115.P15464832227405068194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A293113 (A106232 (n + 1)).toNat

end

end A293115.P15464832227405068194

/-! ## A293115.P13253333072567032703

`A007318(C(n, 2))*A293113(A106232(n+1))`
-/

namespace A293115.P13253333072567032703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A293113 (A106232 (n + 1)).toNat

end

end A293115.P13253333072567032703

/-!
# A293116: Expansion of e.g.f. exp(x/(x-1)).

The programs for A293116, there is no canonical definition to state claims against.
-/

/-! ## A293116.P15668367494749336112

`(-1)^n*A111884(n)`
-/

namespace A293116.P15668367494749336112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A111884 n

end

end A293116.P15668367494749336112

/-! ## A293116.P4799509344310295652

`A293119(∑[n]+n)`
-/

namespace A293116.P4799509344310295652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293119 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A293116.P4799509344310295652

/-! ## A293116.P6522685526892415239

`A111884(n)/A033999(n)`
-/

namespace A293116.P6522685526892415239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111884 n : ℚ) / (A033999 n : ℚ)

end

end A293116.P6522685526892415239

/-! ## A293116.P15230387423818387759

`A033999(n)*A056920(comp[2*(n+1)])`
-/

namespace A293116.P15230387423818387759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056920 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A293116.P15230387423818387759

/-! ## A293116.P4183336533062789756

`A033999(n)*A293133(∑[n]+n)`
-/

namespace A293116.P4183336533062789756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293133 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A293116.P4183336533062789756

/-! ## A293116.P14209120363883438401

`A088312(n)-A088313(n)`
-/

namespace A293116.P14209120363883438401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088312 n - A088313 n

end

end A293116.P14209120363883438401

/-! ## A293116.P8927093121788614264

`2*A088312(n)-A000262(n)`
-/

namespace A293116.P8927093121788614264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088312 n - A000262 n

end

end A293116.P8927093121788614264

/-! ## A293116.P13873686583293457651

`A000262(n)-2*A088313(n)`
-/

namespace A293116.P13873686583293457651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - 2 * A088313 n

end

end A293116.P13873686583293457651

/-!
# A293117: E.g.f.: exp(x^2/(x-1)).

The programs for A293117, there is no canonical definition to state claims against.
-/

/-! ## A293117.P8644303139367055471

`A293119(∑[n+2]-1)`
-/

namespace A293117.P8644303139367055471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293119 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293117.P8644303139367055471

/-! ## A293117.P17280377634666342024

`A033999(n)*A293122(n)`
-/

namespace A293117.P17280377634666342024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293122 n

end

end A293117.P17280377634666342024

/-! ## A293117.P8412754315048273445

`A057077(2*n)*A293122(n)`
-/

namespace A293117.P8412754315048273445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A293122 n

end

end A293117.P8412754315048273445

/-! ## A293117.P3193989691737326214

`A010892(3*n)*A293122(n)`
-/

namespace A293117.P3193989691737326214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A293122 n

end

end A293117.P3193989691737326214

/-! ## A293117.P12327338334341219821

`A008683(A116570(n))*A293122(n)`
-/

namespace A293117.P12327338334341219821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A293122 n

end

end A293117.P12327338334341219821

/-!
# A293118: E.g.f.: exp(x^3/(x-1)).

The programs for A293118, there is no canonical definition to state claims against.
-/

/-! ## A293118.P2714093937186807175

`A033999(n)*A293121(n)`
-/

namespace A293118.P2714093937186807175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293121 n

end

end A293118.P2714093937186807175

/-! ## A293118.P14425737728618282895

`A293121(n)/A033999(n+4)`
-/

namespace A293118.P14425737728618282895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293121 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A293118.P14425737728618282895

/-! ## A293118.P9832913086452067730

`(-2)^n/A000079(n)*A293121(n)`
-/

namespace A293118.P9832913086452067730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n : ℚ) / (A000079 n : ℚ) * (A293121 n : ℚ)

end

end A293118.P9832913086452067730

/-! ## A293118.P4427111434090746177

`(A159075(n)-1)^(n+4)*A293121(n)`
-/

namespace A293118.P4427111434090746177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 n - 1) ^ (n + 4) * A293121 n

end

end A293118.P4427111434090746177

/-! ## A293118.P1924913708967513142

`A293119(∑[n+3])`
-/

namespace A293118.P1924913708967513142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293119 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293118.P1924913708967513142

/-!
# A293119: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>k} exp(-x^i).

The programs for A293119, there is no canonical definition to state claims against.
-/

/-! ## A293119.P15900234704902828625

`A167655(A283417(3*(n+1)))*A293133(n)`
-/

namespace A293119.P15900234704902828625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 (A283417 (3 * (n + 1))).toNat * A293133 n

end

end A293119.P15900234704902828625

/-! ## A293119.P8134276515958298942

`1-A067898(A038240(n))`
-/

namespace A293119.P8134276515958298942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A067898 (A038240 n).toNat

end

end A293119.P8134276515958298942

/-! ## A293119.P7580685532203041647

`A123759(xor(A123163(n), A226234(n)))`
-/

namespace A293119.P7580685532203041647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123759 (Int.xor (A123163 n) (A226234 n)).toNat

end

end A293119.P7580685532203041647

/-! ## A293119.P454567568915770884

`A178655(n)^A178625(A178645(n+5))`
-/

namespace A293119.P454567568915770884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178655 n : ℚ) ^ (A178625 (A178645 (n + 5)).toNat : ℤ)

end

end A293119.P454567568915770884

/-! ## A293119.P17441352078263968433

`A002129(A319511(n))%A308220(n+1)`
-/

namespace A293119.P17441352078263968433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002129 (A319511 n).toNat) (A308220 (n + 1))

end

end A293119.P17441352078263968433

/-!
# A293120: Expansion of e.g.f. exp(x^2/(1+x)).

The programs for A293120, there is no canonical definition to state claims against.
-/

/-! ## A293120.P8382353608522692688

`(-1)^n*A052845(n)`
-/

namespace A293120.P8382353608522692688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052845 n

end

end A293120.P8382353608522692688

/-! ## A293120.P9715680516697499009

`A293133(∑[n+2]-1)`
-/

namespace A293120.P9715680516697499009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293133 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293120.P9715680516697499009

/-! ## A293120.P3747191802235882639

`(-1)^n*A114329(A000217(n))`
-/

namespace A293120.P3747191802235882639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A114329 (A000217 n).toNat

end

end A293120.P3747191802235882639

/-! ## A293120.P2330169780621938918

`A052845(n)/A332823(Δ[A007504(n)])`
-/

namespace A293120.P2330169780621938918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052845 n : ℚ) / (A332823 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A293120.P2330169780621938918

/-! ## A293120.P12859968464850362023

`A052845(n)*A332823(A000040(n+1))`
-/

namespace A293120.P12859968464850362023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052845 n * A332823 (A000040 (n + 1)).toNat

end

end A293120.P12859968464850362023

/-!
# A293121: Expansion of e.g.f. exp(x^3/(1+x)).

The programs for A293121, there is no canonical definition to state claims against.
-/

/-! ## A293121.P12978831254433717516

`(-1)^n*A293118(n)`
-/

namespace A293121.P12978831254433717516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293118 n

end

end A293121.P12978831254433717516

/-! ## A293121.P8353462442021100643

`-(A033999(n+1)*A293118(n))`
-/

namespace A293121.P8353462442021100643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A293118 n)

end

end A293121.P8353462442021100643

/-! ## A293121.P7136405788505699246

`A293118(n)/A033999(A020705(n))`
-/

namespace A293121.P7136405788505699246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293118 n : ℚ) / (A033999 (A020705 n).toNat : ℚ)

end

end A293121.P7136405788505699246

/-! ## A293121.P13452536852311036948

`A293118(n)/A033999(A020715(n))`
-/

namespace A293121.P13452536852311036948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293118 n : ℚ) / (A033999 (A020715 n).toNat : ℚ)

end

end A293121.P13452536852311036948

/-! ## A293121.P8008069468520973944

`A293133(∑[n+3])`
-/

namespace A293121.P8008069468520973944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293133 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293121.P8008069468520973944

/-!
# A293122: E.g.f.: exp(-x^2/(1+x)).

The programs for A293122, there is no canonical definition to state claims against.
-/

/-! ## A293122.P46038178980649945

`(-1)^n*A293117(n)`
-/

namespace A293122.P46038178980649945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293117 n

end

end A293122.P46038178980649945

/-! ## A293122.P6746346156315881389

`A293117(n)/A033999(n)`
-/

namespace A293122.P6746346156315881389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293117 n : ℚ) / (A033999 n : ℚ)

end

end A293122.P6746346156315881389

/-! ## A293122.P7529037787954132605

`A293117(n)*A293125(Δ[ceil((n+1)/2)])`
-/

namespace A293122.P7529037787954132605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293117 n * A293125 (f1 (n + 1) - f1 n).toNat

end

end A293122.P7529037787954132605

/-! ## A293122.P10560644434041610987

`A293134(∑[n+2]-1)`
-/

namespace A293122.P10560644434041610987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293134 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293122.P10560644434041610987

/-! ## A293122.P7315155932627391686

`A293134(A034856(n+1))+A023531(3*n+1)`
-/

namespace A293122.P7315155932627391686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293134 (A034856 (n + 1)).toNat + A023531 (3 * n + 1)

end

end A293122.P7315155932627391686

/-!
# A293123: E.g.f.: exp(-x^3/(1+x)).

The programs for A293123, there is no canonical definition to state claims against.
-/

/-! ## A293123.P2020478510255683859

`(-1)^n*A293049(n)`
-/

namespace A293123.P2020478510255683859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293049 n

end

end A293123.P2020478510255683859

/-! ## A293123.P12464885348388782880

`A293049(n)/A033999(n)`
-/

namespace A293123.P12464885348388782880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293049 n : ℚ) / (A033999 n : ℚ)

end

end A293123.P12464885348388782880

/-! ## A293123.P12569960281661983010

`A293049(n)/A009001(2*(n+2))`
-/

namespace A293123.P12569960281661983010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293049 n : ℚ) / (A009001 (2 * (n + 2)) : ℚ)

end

end A293123.P12569960281661983010

/-! ## A293123.P4927081670865118749

`-(A009531(2*n+3)*A293049(n))`
-/

namespace A293123.P4927081670865118749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A009531 (2 * n + 3) * A293049 n)

end

end A293123.P4927081670865118749

/-! ## A293123.P3717756379842156563

`A293049(n)/A055975(A004273(n+1))`
-/

namespace A293123.P3717756379842156563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293049 n : ℚ) / (A055975 (A004273 (n + 1)).toNat : ℚ)

end

end A293123.P3717756379842156563

/-! ## A293123.P16948206891173897789

`A293134(∑[n+3])`
-/

namespace A293123.P16948206891173897789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293123.P16948206891173897789

/-!
# A293125: Expansion of e.g.f.: exp(-x/(1+x)).

The programs for A293125, the canonical program `A293125.P13067584911367898446` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293125 has offset 0).

The definition of A293125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293125.P13067584911367898446

`(-1)^n*A000262(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293125

/-- `(-1)^n*A000262(n)` -/
def P13067584911367898446.Spec : Prop :=
  ∀ n, P13067584911367898446.a n = A293125 n

theorem P13067584911367898446.correct : P13067584911367898446.Spec := by
  intro n
  simp only [A293125]

end A293125

/-! ## A293125.P12885577810545232647

`A293134(∑[n]+n)`
-/

namespace A293125.P12885577810545232647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293134 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A293125.P12885577810545232647

namespace A293125

/-- `A293134(∑[n]+n)` -/
def P12885577810545232647.Spec : Prop :=
  ∀ n, P12885577810545232647.a n = A293125 n

end A293125

/-! ## A293125.P15214756242184025183

`A294289(∑[n+2]-1)`
-/

namespace A293125.P15214756242184025183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293125.P15214756242184025183

namespace A293125

/-- `A294289(∑[n+2]-1)` -/
def P15214756242184025183.Spec : Prop :=
  ∀ n, P15214756242184025183.a n = A293125 n

end A293125

/-! ## A293125.P13474975324103904916

`(-1)^n*A129652(∑[n])`
-/

namespace A293125.P13474975324103904916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293125.P13474975324103904916

namespace A293125

/-- `(-1)^n*A129652(∑[n])` -/
def P13474975324103904916.Spec : Prop :=
  ∀ n, P13474975324103904916.a n = A293125 n

end A293125

/-! ## A293125.P15947040858939717438

`A000262(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A293125.P15947040858939717438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A293125.P15947040858939717438

namespace A293125

/-- `A000262(round(sqrt(n²+1)))/(-1)^n` -/
def P15947040858939717438.Spec : Prop :=
  ∀ n, P15947040858939717438.a n = (A293125 n : ℚ)

end A293125

/-! ## A293125.P1055394097446337933

`A000262(n)*A033999(n)`
-/

namespace A293125.P1055394097446337933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A033999 n

end

end A293125.P1055394097446337933

namespace A293125

/-- `A000262(n)*A033999(n)` -/
def P1055394097446337933.Spec : Prop :=
  ∀ n, P1055394097446337933.a n = A293125 n

theorem P1055394097446337933.correct : P1055394097446337933.Spec := by
  intro n
  simp only [A293125, Nat.add_sub_cancel, A293125.P1055394097446337933.a, A293125.P13067584911367898446.a, A000262, A000262.P5795723230427946542.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293125

/-! ## A293125.P2405935760459212083

`A000262(n)*A130595(∑[n])`
-/

namespace A293125.P2405935760459212083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A130595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293125.P2405935760459212083

namespace A293125

/-- `A000262(n)*A130595(∑[n])` -/
def P2405935760459212083.Spec : Prop :=
  ∀ n, P2405935760459212083.a n = A293125 n

end A293125

/-! ## A293125.P7587272538118324654

`A033999(n)*A206703(∑[n])`
-/

namespace A293125.P7587272538118324654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A206703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293125.P7587272538118324654

namespace A293125

/-- `A033999(n)*A206703(∑[n])` -/
def P7587272538118324654.Spec : Prop :=
  ∀ n, P7587272538118324654.a n = A293125 n

end A293125

/-! ## A293125.P13449386243881750990

`A000262(n)*A056594(2*n)`
-/

namespace A293125.P13449386243881750990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A056594 (2 * n)

end

end A293125.P13449386243881750990

namespace A293125

/-- `A000262(n)*A056594(2*n)` -/
def P13449386243881750990.Spec : Prop :=
  ∀ n, P13449386243881750990.a n = A293125 n

end A293125

/-! ## A293125.P7533320578589181136

`A000262(n)*A057077(2*n)`
-/

namespace A293125.P7533320578589181136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A057077 (2 * n)

end

end A293125.P7533320578589181136

namespace A293125

/-- `A000262(n)*A057077(2*n)` -/
def P7533320578589181136.Spec : Prop :=
  ∀ n, P7533320578589181136.a n = A293125 n

end A293125

/-!
# A293126: Number of matchings in the 2n-crossed prism graph.

The programs for A293126, the canonical program `A293126.P7200615530520564052` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293126 has offset 0).

The definition of A293126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293126.P7200615530520564052

`12*a(n-1)-18*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=12, a(2)=108`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293126

/-- `12*a(n-1)-18*a(n-2)+4*a(n-3)` -/
def P7200615530520564052.Spec : Prop :=
  ∀ n, P7200615530520564052.a n = A293126 n

theorem P7200615530520564052.correct : P7200615530520564052.Spec := by
  intro n
  simp only [A293126]

end A293126

/-!
# A293128: Number of standard Young tableaux of 2n cells and height <= n.

The programs for A293128, there is no canonical definition to state claims against.
-/

/-! ## A293128.P12933734618320869390

`A049400(A004277(n²))`
-/

namespace A293128.P12933734618320869390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049400 (A004277 (n ^ 2)).toNat

end

end A293128.P12933734618320869390

/-! ## A293128.P10001183754898495038

`A049400(2*A253909(n))`
-/

namespace A293128.P10001183754898495038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049400 (2 * A253909 n).toNat

end

end A293128.P10001183754898495038

/-! ## A293128.P16056253492192305388

`A049400(A253909(n)+n²)`
-/

namespace A293128.P16056253492192305388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049400 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A293128.P16056253492192305388

/-! ## A293128.P16442114471879545985

`A049400((A004277(n)-n)*A004277(n))`
-/

namespace A293128.P16442114471879545985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049400 ((A004277 n - (n : ℤ)) * A004277 n).toNat

end

end A293128.P16442114471879545985

/-! ## A293128.P13645990306309895477

`A182172(A062728(n))`
-/

namespace A293128.P13645990306309895477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A062728 n).toNat

end

end A293128.P13645990306309895477

/-!
# A293129: L.g.f.: Sum_{n=-oo..+oo} (x - x^(2*n-1))^(2*n-1) / (2*n-1).

The programs for A293129, there is no canonical definition to state claims against.
-/

/-! ## A293129.P269382155427510603

`A293598(n+1)+A293597(n+1)`
-/

namespace A293129.P269382155427510603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293598 (n + 1) + A293597 (n + 1)

end

end A293129.P269382155427510603

/-!
# A293131: a(n) = floor( Product_{k=0..n-1} (k + t) ), where t = Sum_{n>=1} 1/a(n) is given by A293130.

The programs for A293131, there is no canonical definition to state claims against.
-/

/-! ## A293131.P5336661373044692767

`A043096(A335386(n+1)+A192808(n))`
-/

namespace A293131.P5336661373044692767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (A335386 (n + 1) + A192808 n).toNat

end

end A293131.P5336661373044692767

/-! ## A293131.P16042119624268014649

`A033665(A002727(n))+A014510(n+2)`
-/

namespace A293131.P16042119624268014649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A002727 n).toNat + A014510 (n + 2)

end

end A293131.P16042119624268014649

/-!
# A293132: G.f.: 2*q * Product_{n>=1} (1 + q^(2*n))/((1 + q^n)*(1 + q^(2*n-1))*(1 + q^(4*n))) in powers of q.

The programs for A293132, there is no canonical definition to state claims against.
-/

/-! ## A293132.P5485293761833546397

`A292929(A034856(n+1))%p?[A072671(n)]`
-/

namespace A293132.P5485293761833546397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292929 (A034856 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A293132.P5485293761833546397

/-! ## A293132.P9741514432230135861

`A292929(A034856(n+1))+A000007(A005995(n))`
-/

namespace A293132.P9741514432230135861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A034856 (n + 1)).toNat + A000007 (A005995 n).toNat

end

end A293132.P9741514432230135861

/-! ## A293132.P6509026615224283217

`A084642(A078245(n+1))*A292929(A034856(n+1))`
-/

namespace A293132.P6509026615224283217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (A078245 (n + 1)).toNat * A292929 (A034856 (n + 1)).toNat

end

end A293132.P6509026615224283217

/-! ## A293132.P2242608098922549657

`A292929(A187829(n+1)+A000096(n))`
-/

namespace A293132.P2242608098922549657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A187829 (n + 1) + A000096 n).toNat

end

end A293132.P2242608098922549657

/-! ## A293132.P7943284396962717515

`A292929(eq[1, A240394(n+3)])`
-/

namespace A293132.P7943284396962717515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293132.P7943284396962717515

/-!
# A293133: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x^(k+1)/(1+x)).

The programs for A293133, there is no canonical definition to state claims against.
-/

/-! ## A293133.P13251031719123031884

`A020985(A034801(2*n))*A293119(n)`
-/

namespace A293133.P13251031719123031884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A034801 (2 * n)).toNat * A293119 n

end

end A293133.P13251031719123031884

/-!
# A293134: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(-x^(k+1)/(1+x)).

The programs for A293134, there is no canonical definition to state claims against.
-/

/-! ## A293134.P17357696303863824087

`A293053(n)*A343785(A056953(n))`
-/

namespace A293134.P17357696303863824087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 n * A343785 (A056953 n).toNat

end

end A293134.P17357696303863824087

/-!
# A293135: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>0} Sum_{j=0..k} x^(j*i)/j!.

The programs for A293135, there is no canonical definition to state claims against.
-/

/-! ## A293135.P16648713862745056666

`A126869(A292795(n))!*A276921(n)`
-/

namespace A293135.P16648713862745056666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A126869 (A292795 n).toNat).toNat : ℤ) * A276921 n

end

end A293135.P16648713862745056666

/-! ## A293135.P1355688481509291344

`A129835(A276921(n))*A134868(A273730(n))`
-/

namespace A293135.P1355688481509291344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 (A276921 n).toNat * A134868 (A273730 n).toNat

end

end A293135.P1355688481509291344

/-! ## A293135.P17499222822357880174

`A014963(A292795(n)!)*A276921(n)`
-/

namespace A293135.P17499222822357880174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.factorial (A292795 n).toNat) * A276921 n

end

end A293135.P17499222822357880174

/-! ## A293135.P8455379214245574406

`A056160(A273730(n))*A276921(n)`
-/

namespace A293135.P8455379214245574406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056160 (A273730 n).toNat * A276921 n

end

end A293135.P8455379214245574406

/-! ## A293135.P15412361209481285798

`A129835(A273730(n)*A276921(n))`
-/

namespace A293135.P15412361209481285798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 (A273730 n * A276921 n).toNat

end

end A293135.P15412361209481285798

/-!
# A293136: Irregular triangle T(n,k) read by rows: T(n,k) is the number of strongly unimodal compositions of n (A059618) into k parts.

The programs for A293136, there is no canonical definition to state claims against.
-/

/-! ## A293136.P16900527038528653601

`A360764(n)+A010815(A001567(n+4))`
-/

namespace A293136.P16900527038528653601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360764 n + A010815 (A001567 (n + 4)).toNat

end

end A293136.P16900527038528653601

/-! ## A293136.P9999592887906878230

`A354786(n)/A069288(A302828(2*n+1))`
-/

namespace A293136.P9999592887906878230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354786 n : ℚ) / (A069288 (A302828 (2 * n + 1)).toNat : ℚ)

end

end A293136.P9999592887906878230

/-! ## A293136.P13322953375264871521

`A325169(A026519(3*n))^A287866(n+1)`
-/

namespace A293136.P13322953375264871521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325169 (A026519 (3 * n)).toNat : ℚ) ^ (A287866 (n + 1) : ℤ)

end

end A293136.P13322953375264871521

/-! ## A293136.P7473130984877486305

`A001221(A240519(A301608(2*n+5)))`
-/

namespace A293136.P7473130984877486305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A240519 (A301608 (2 * n + 5)).toNat).toNat

end

end A293136.P7473130984877486305

/-! ## A293136.P5307717763102667876

`A360764(n)^A025147(A309651(n+2))`
-/

namespace A293136.P5307717763102667876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360764 n : ℚ) ^ (A025147 (A309651 (n + 2)).toNat : ℤ)

end

end A293136.P5307717763102667876

/-!
# A293137: a(0) = 0, and a(n) = floor(2*sqrt(n)) - 1 for n >= 1.

The programs for A293137, the canonical program `A293137.P1012702184578939539` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293137 has offset 0).

The definition of A293137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293137.P9984968322017715513

`∑[char[ceil(((n+1)/2)²)]]`
-/

namespace A293137.P9984968322017715513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293137.P9984968322017715513

namespace A293137

/-- `∑[char[ceil(((n+1)/2)²)]]` -/
def P9984968322017715513.Spec : Prop :=
  ∀ n, (P9984968322017715513.a n : ℤ) = A293137 n

end A293137

/-! ## A293137.P776192921966333511

`(floor(2*sqrt(n))-1)%(n+1)`
-/

namespace A293137.P776192921966333511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊2 * Real.sqrt (n : ℝ)⌋ - 1) (n + 1 : ℤ)

end

end A293137.P776192921966333511

namespace A293137

/-- `(floor(2*sqrt(n))-1)%(n+1)` -/
def P776192921966333511.Spec : Prop :=
  ∀ n, P776192921966333511.a n = A293137 n

end A293137

/-! ## A293137.P5418752053357894635

`floor(sqrt(n)+a(n-1)/2)` with `a(0)=0`
-/

namespace A293137.P5418752053357894635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.sqrt (n : ℝ) + ((a (n - 1) : ℚ) / 2 : ℝ)⌋

end

end A293137.P5418752053357894635

namespace A293137

/-- `floor(sqrt(n)+a(n-1)/2)` -/
def P5418752053357894635.Spec : Prop :=
  ∀ n, P5418752053357894635.a n = A293137 n

end A293137

/-! ## A293137.P607431101804838996

`comp[∑[n+3-a(n-1)]]-n` with `a(0)=1`
-/

namespace A293137.P607431101804838996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 3 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A293137.P607431101804838996

namespace A293137

/-- `comp[∑[n+3-a(n-1)]]-n` -/
def P607431101804838996.Spec : Prop :=
  ∀ n, P607431101804838996.a n = A293137 n

end A293137

/-! ## A293137.P1012702184578939539

`a(n-(a(n-1)+1))+2` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293137

/-- `a(n-(a(n-1)+1))+2` -/
def P1012702184578939539.Spec : Prop :=
  ∀ n, (P1012702184578939539.a n : ℤ) = A293137 n

theorem P1012702184578939539.correct : P1012702184578939539.Spec := by
  intro n
  simp only [A293137]

end A293137

/-! ## A293137.P10187284242866027574

`floor(sqrt(A008574(n)))-1`
-/

namespace A293137.P10187284242866027574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008574 n) - 1

end

end A293137.P10187284242866027574

namespace A293137

/-- `floor(sqrt(A008574(n)))-1` -/
def P10187284242866027574.Spec : Prop :=
  ∀ n, P10187284242866027574.a n = A293137 n

end A293137

/-! ## A293137.P4145233237934814

`∑[char[A004652(n)]]-1`
-/

namespace A293137.P4145233237934814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A293137.P4145233237934814

namespace A293137

/-- `∑[char[A004652(n)]]-1` -/
def P4145233237934814.Spec : Prop :=
  ∀ n, P4145233237934814.a n = A293137 n

end A293137

/-! ## A293137.P18214649149321963994

`comp[A079524(n+1)]-n`
-/

namespace A293137.P18214649149321963994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A293137.P18214649149321963994

namespace A293137

/-- `comp[A079524(n+1)]-n` -/
def P18214649149321963994.Spec : Prop :=
  ∀ n, P18214649149321963994.a n = A293137 n

end A293137

/-! ## A293137.P2439384207629160424

`log2(A011782(floor(2*sqrt(n))))`
-/

namespace A293137.P2439384207629160424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A011782 ⌊2 * Real.sqrt (n : ℝ)⌋.toNat : ℝ)

end

end A293137.P2439384207629160424

namespace A293137

/-- `log2(A011782(floor(2*sqrt(n))))` -/
def P2439384207629160424.Spec : Prop :=
  ∀ n, P2439384207629160424.a n = (A293137 n : ℝ)

end A293137

/-! ## A293137.P2101464399605994018

`floor(sqrt(A019425(2*n+1)))-1`
-/

namespace A293137.P2101464399605994018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A019425 (2 * n + 1)) - 1

end

end A293137.P2101464399605994018

namespace A293137

/-- `floor(sqrt(A019425(2*n+1)))-1` -/
def P2101464399605994018.Spec : Prop :=
  ∀ n, P2101464399605994018.a n = A293137 n

end A293137

/-! ## A293137.P8232941072146150870

`A049206(A265359(n)+1)`
-/

namespace A293137.P8232941072146150870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A265359 n + 1).toNat

end

end A293137.P8232941072146150870

namespace A293137

/-- `A049206(A265359(n)+1)` -/
def P8232941072146150870.Spec : Prop :=
  ∀ n, P8232941072146150870.a n = A293137 n

end A293137

/-! ## A293137.P9170450752362465647

`A172471(A004277(n))-1`
-/

namespace A293137.P9170450752362465647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A004277 n).toNat - 1

end

end A293137.P9170450752362465647

namespace A293137

/-- `A172471(A004277(n))-1` -/
def P9170450752362465647.Spec : Prop :=
  ∀ n, P9170450752362465647.a n = A293137 n

end A293137

/-! ## A293137.P5975413830846840869

`A172471(A004273(n)+1)-1`
-/

namespace A293137.P5975413830846840869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A004273 n + 1).toNat - 1

end

end A293137.P5975413830846840869

namespace A293137

/-- `A172471(A004273(n)+1)-1` -/
def P5975413830846840869.Spec : Prop :=
  ∀ n, P5975413830846840869.a n = A293137 n

end A293137

/-! ## A293137.P17371371321338759773

`A092038(A265359(n)+1)-1`
-/

namespace A293137.P17371371321338759773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A265359 n + 1).toNat - 1

end

end A293137.P17371371321338759773

namespace A293137

/-- `A092038(A265359(n)+1)-1` -/
def P17371371321338759773.Spec : Prop :=
  ∀ n, P17371371321338759773.a n = A293137 n

end A293137

/-! ## A293137.P13415623478182860211

`A028310(A060018(n+2))-1`
-/

namespace A293137.P13415623478182860211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060018 (n + 2)).toNat - 1

end

end A293137.P13415623478182860211

namespace A293137

/-- `A028310(A060018(n+2))-1` -/
def P13415623478182860211.Spec : Prop :=
  ∀ n, P13415623478182860211.a n = A293137 n

end A293137

/-! ## A293137.P6288817384197268892

`A172471(C(A172471(2*n), 2))`
-/

namespace A293137.P6288817384197268892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Nat.choose (A172471 (2 * n)).toNat 2)

end

end A293137.P6288817384197268892

namespace A293137

/-- `A172471(C(A172471(2*n), 2))` -/
def P6288817384197268892.Spec : Prop :=
  ∀ n, P6288817384197268892.a n = A293137 n

end A293137

/-! ## A293137.P15601237139112549184

`n-A056847(A056847(n)+1)`
-/

namespace A293137.P15601237139112549184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056847 (A056847 n + 1).toNat

end

end A293137.P15601237139112549184

namespace A293137

/-- `n-A056847(A056847(n)+1)` -/
def P15601237139112549184.Spec : Prop :=
  ∀ n, P15601237139112549184.a n = A293137 n

end A293137

/-! ## A293137.P13191023540454236538

`A060018(n+2)+A057428(n)`
-/

namespace A293137.P13191023540454236538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (n + 2) + A057428 n

end

end A293137.P13191023540454236538

namespace A293137

/-- `A060018(n+2)+A057428(n)` -/
def P13191023540454236538.Spec : Prop :=
  ∀ n, P13191023540454236538.a n = A293137 n

end A293137

/-! ## A293137.P380751665926683015

`A172471(A028310(n)+n)-1`
-/

namespace A293137.P380751665926683015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A028310 n + (n : ℤ)).toNat - 1

end

end A293137.P380751665926683015

namespace A293137

/-- `A172471(A028310(n)+n)-1` -/
def P380751665926683015.Spec : Prop :=
  ∀ n, P380751665926683015.a n = A293137 n

end A293137

/-! ## A293137.P14982176311658361349

`A027434(A010052(n)+n)-2`
-/

namespace A293137.P14982176311658361349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A010052 n + (n : ℤ)).toNat - 2

end

end A293137.P14982176311658361349

namespace A293137

/-- `A027434(A010052(n)+n)-2` -/
def P14982176311658361349.Spec : Prop :=
  ∀ n, P14982176311658361349.a n = A293137 n

end A293137

/-!
# A293138: E.g.f.: Product_{m>0} (1+x^m+x^(2*m)/2!).

The programs for A293138, there is no canonical definition to state claims against.
-/

/-! ## A293138.P13467182846491378781

`A293135(∑[n+3])`
-/

namespace A293138.P13467182846491378781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293138.P13467182846491378781

/-! ## A293138.P9041656265387870595

`A293135(C(n+3, 2)+n)+(4*n)%2`
-/

namespace A293138.P9041656265387870595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (Nat.choose (n + 3) 2 + n) + ((4 * n % 2 : ℕ) : ℤ)

end

end A293138.P9041656265387870595

/-! ## A293138.P2807137056818079065

`A293135(A055998(n+1))+(4*n)%2`
-/

namespace A293138.P2807137056818079065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A055998 (n + 1)).toNat + ((4 * n % 2 : ℕ) : ℤ)

end

end A293138.P2807137056818079065

/-! ## A293138.P8527946150013385921

`A293135(A055998(n+1))+A001489(n)+n`
-/

namespace A293138.P8527946150013385921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A055998 (n + 1)).toNat + (A001489 n + (n : ℤ))

end

end A293138.P8527946150013385921

/-! ## A293138.P9541114826480559400

`A293135(A055998(n+1))+A004018(4*n+3)`
-/

namespace A293138.P9541114826480559400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A055998 (n + 1)).toNat + A004018 (4 * n + 3)

end

end A293138.P9541114826480559400

/-! ## A293138.P7462335289611144594

`A293135(A055998(n+1))+n+n-A005843(n)`
-/

namespace A293138.P7462335289611144594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A055998 (n + 1)).toNat + (n : ℤ) + (n : ℤ) - A005843 n

end

end A293138.P7462335289611144594

/-! ## A293138.P2569415901822595547

`A055801(A000124(n))*A293135(A055998(n+1))`
-/

namespace A293138.P2569415901822595547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A000124 n).toNat * A293135 (A055998 (n + 1)).toNat

end

end A293138.P2569415901822595547

/-! ## A293138.P5246007313876886042

`A057427(A026355(n))*A293135(A055998(n+1))`
-/

namespace A293138.P5246007313876886042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A026355 n).toNat * A293135 (A055998 (n + 1)).toNat

end

end A293138.P5246007313876886042

/-! ## A293138.P8423214383208150099

`A055801(A055801(n))*A293135(A055998(n+1))`
-/

namespace A293138.P8423214383208150099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A055801 n).toNat * A293135 (A055998 (n + 1)).toNat

end

end A293138.P8423214383208150099

/-! ## A293138.P17907530977951728874

`A057427(A238392(n))*A293135(A055998(n+1))`
-/

namespace A293138.P17907530977951728874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A238392 n).toNat * A293135 (A055998 (n + 1)).toNat

end

end A293138.P17907530977951728874

/-!
# A293139: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>0} Sum_{j=0..k} (-1)^j*x^(j*i)/j!.

The programs for A293139, there is no canonical definition to state claims against.
-/

/-! ## A293139.P406635792321771226

`A035263(A001405(n))-A001222(A168288(n))`
-/

namespace A293139.P406635792321771226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A001405 n).toNat - A001222 (A168288 n).toNat

end

end A293139.P406635792321771226

/-! ## A293139.P7138473230150639984

`A088705(A285061(n)+A002378(n))`
-/

namespace A293139.P7138473230150639984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A285061 n + A002378 n).toNat

end

end A293139.P7138473230150639984

/-! ## A293139.P6719357960802268500

`A088705(or(A002378(n), A285061(n)))`
-/

namespace A293139.P6719357960802268500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (Int.lor (A002378 n) (A285061 n)).toNat

end

end A293139.P6719357960802268500

/-! ## A293139.P11392454618957255152

`A286656(A004858(n+1))`
-/

namespace A293139.P11392454618957255152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286656 (A004858 (n + 1)).toNat

end

end A293139.P11392454618957255152

/-!
# A293140: E.g.f.: Product_{m>0} (1-x^m).

The programs for A293140, the canonical program `A293140.P3221199790550330238` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293140 has offset 0).

The definition of A293140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293140.P3221199790550330238

`n!*A010815(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293140

/-- `n!*A010815(n)` -/
def P3221199790550330238.Spec : Prop :=
  ∀ n, P3221199790550330238.a n = A293140 n

theorem P3221199790550330238.correct : P3221199790550330238.Spec := by
  intro n
  simp only [A293140]

end A293140

/-! ## A293140.P9457184559656778086

`A342645(∑[n])`
-/

namespace A293140.P9457184559656778086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293140.P9457184559656778086

namespace A293140

/-- `A342645(∑[n])` -/
def P9457184559656778086.Spec : Prop :=
  ∀ n, P9457184559656778086.a n = A293140 n

end A293140

/-! ## A293140.P16058234881083142635

`n!*A322212(∑[n])`
-/

namespace A293140.P16058234881083142635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A322212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293140.P16058234881083142635

namespace A293140

/-- `n!*A322212(∑[n])` -/
def P16058234881083142635.Spec : Prop :=
  ∀ n, P16058234881083142635.a n = A293140 n

end A293140

/-! ## A293140.P15953860542398098717

`A293139(∑[n+2]-1)`
-/

namespace A293140.P15953860542398098717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293140.P15953860542398098717

namespace A293140

/-- `A293139(∑[n+2]-1)` -/
def P15953860542398098717.Spec : Prop :=
  ∀ n, P15953860542398098717.a n = A293140 n

end A293140

/-! ## A293140.P11608088690000151190

`A000142(n)*A010815(n)`
-/

namespace A293140.P11608088690000151190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A010815 n

end

end A293140.P11608088690000151190

namespace A293140

/-- `A000142(n)*A010815(n)` -/
def P11608088690000151190.Spec : Prop :=
  ∀ n, P11608088690000151190.a n = A293140 n

end A293140

/-!
# A293141: E.g.f.: Product_{m>0} (1 - x^m + x^(2m)/2).

The programs for A293141, there is no canonical definition to state claims against.
-/

/-! ## A293141.P10948389227702796830

`A293139(∑[n+3])`
-/

namespace A293141.P10948389227702796830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293141.P10948389227702796830

/-! ## A293141.P12408087564863035754

`A293139(A055998(n+1))+4%gcd(4, n)`
-/

namespace A293141.P12408087564863035754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (A055998 (n + 1)).toNat + ((4 % Nat.gcd 4 n : ℕ) : ℤ)

end

end A293141.P12408087564863035754

/-! ## A293141.P16997606390791702248

`A293139(A055998(n+1))^A000038(n)!`
-/

namespace A293141.P16997606390791702248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (A055998 (n + 1)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A293141.P16997606390791702248

/-! ## A293141.P12513473391790318014

`A293139(A055998(n+1))+A000007(n+1)`
-/

namespace A293141.P12513473391790318014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A293141.P12513473391790318014

/-! ## A293141.P7715720441667138548

`A293139(A055998(n+1))+A000038(n+1)`
-/

namespace A293141.P7715720441667138548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A293141.P7715720441667138548

/-! ## A293141.P9651581909592859849

`A293139(A055998(n+1))+A008586(n)%2`
-/

namespace A293141.P9651581909592859849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (A055998 (n + 1)).toNat + Int.tmod (A008586 n) 2

end

end A293141.P9651581909592859849

/-! ## A293141.P12869124436006132776

`A293139(A055998(n+1))+A004018(4*n+3)`
-/

namespace A293141.P12869124436006132776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293139 (A055998 (n + 1)).toNat + A004018 (4 * n + 3)

end

end A293141.P12869124436006132776

/-! ## A293141.P11940209817668371182

`A293139(A055998(n+1))/A095073(n+1)%2`
-/

namespace A293141.P11940209817668371182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293139 (A055998 (n + 1)).toNat : ℚ) / (Int.tmod (A095073 (n + 1)) 2 : ℚ)

end

end A293141.P11940209817668371182

/-!
# A293143: Number of vertex points in a Sierpinski carpet grid subdivided into squares: a(n+1) = 8*a(n) - 8*(3^n+1), a(0) = 4.

The programs for A293143, the canonical program `A293143.P1927801391781555379` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293143 has offset 0).

The definition of A293143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293143.P1927801391781555379

`12*a(n-1)-35*a(n-2)+24*a(n-3)` with `a(0)=4, a(1)=16, a(2)=96`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293143

/-- `12*a(n-1)-35*a(n-2)+24*a(n-3)` -/
def P1927801391781555379.Spec : Prop :=
  ∀ n, P1927801391781555379.a n = A293143 n

theorem P1927801391781555379.correct : P1927801391781555379.Spec := by
  intro n
  simp only [A293143]

end A293143

/-! ## A293143.P7946166533693599266

`8*(5+11*2^(3*n-1)+7*3^n)/35`
-/

namespace A293143.P7946166533693599266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (5 + 11 * (2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ) + (7 * 3 ^ n : ℚ)) / 35

end

end A293143.P7946166533693599266

namespace A293143

/-- `8*(5+11*2^(3*n-1)+7*3^n)/35` -/
def P7946166533693599266.Spec : Prop :=
  ∀ n, P7946166533693599266.a n = (A293143 n : ℚ)

theorem P7946166533693599266.correct : P7946166533693599266.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A293143, Nat.add_sub_cancel, A293143.P7946166533693599266.a, A293143.P1927801391781555379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A293143, Nat.add_sub_cancel, A293143.P7946166533693599266.a, A293143.P1927801391781555379.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A293143

/-!
# A293144: Number of vertices in a Menger Sponge constructed from a cubic lattice: a(n) = 20*a(n-1) - 24*A293143(n-1).

The programs for A293144, the canonical program `A293144.P1598588345983364731` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293144 has offset 0).

The definition of A293144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293144.P181783467981438524

`64*(3/133+3^(1+n)/85+11*8^(n-1)/35+9*20^n/323)`
-/

namespace A293144.P181783467981438524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  64 * ((3 : ℚ) / 133 + (3 ^ (1 + n) : ℚ) / 85 + 11 * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 35 + (9 * 20 ^ n : ℚ) / 323)

end

end A293144.P181783467981438524

namespace A293144

/-- `64*(3/133+3^(1+n)/85+11*8^(n-1)/35+9*20^n/323)` -/
def P181783467981438524.Spec : Prop :=
  ∀ n, P181783467981438524.a n = (A293144 n : ℚ)

end A293144

/-! ## A293144.P1598588345983364731

`20*a(n-1)-24*A293143(n-1)` with `a(0)=8`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293144

/-- `20*a(n-1)-24*A293143(n-1)` -/
def P1598588345983364731.Spec : Prop :=
  ∀ n, P1598588345983364731.a n = A293144 n

theorem P1598588345983364731.correct : P1598588345983364731.Spec := by
  intro n
  simp only [A293144]

end A293144

/-!
# A293145: a(n) = n! * [x^n] exp(n*x/(1 - x)).

The programs for A293145, there is no canonical definition to state claims against.
-/

/-! ## A293145.P683882130906070477

`A000007(n)+n*A052885(n)`
-/

namespace A293145.P683882130906070477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A052885 n

end

end A293145.P683882130906070477

/-! ## A293145.P14875940623990735222

`A028310(n)*A052885(A028310(n))`
-/

namespace A293145.P14875940623990735222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A052885 (A028310 n).toNat

end

end A293145.P14875940623990735222

/-! ## A293145.P1413729009203333287

`A253286(∑[4*n])`
-/

namespace A293145.P1413729009203333287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293145.P1413729009203333287

/-! ## A293145.P10368448867832361699

`A253286(A046092(n))+A025469(n)`
-/

namespace A293145.P10368448867832361699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A046092 n).toNat + A025469 n

end

end A293145.P10368448867832361699

/-! ## A293145.P7889573991747164202

`A253286(A046092(n))+A185246(n)`
-/

namespace A293145.P7889573991747164202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A046092 n).toNat + A185246 n

end

end A293145.P7889573991747164202

/-!
# A293146: a(n) = n! * [x^n] exp(x/(1 - n*x)).

The programs for A293146, there is no canonical definition to state claims against.
-/

/-! ## A293146.P12679009832769029331

`A341033(∑[4*n])`
-/

namespace A293146.P12679009832769029331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293146.P12679009832769029331

/-! ## A293146.P8271880326658640363

`or(1, A341033(A046092(n)))`
-/

namespace A293146.P8271880326658640363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341033 (A046092 n).toNat)

end

end A293146.P8271880326658640363

/-! ## A293146.P16102798527684238004

`A341033(A046092(n))+A025443(n)`
-/

namespace A293146.P16102798527684238004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (A046092 n).toNat + A025443 n

end

end A293146.P16102798527684238004

/-! ## A293146.P12868528956969795050

`A341033(A046092(n))+A025469(n)`
-/

namespace A293146.P12868528956969795050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (A046092 n).toNat + A025469 n

end

end A293146.P12868528956969795050

/-! ## A293146.P1309633124273851290

`gcd((-1)^n, A000203(n+1))*A341033(A046092(n))`
-/

namespace A293146.P1309633124273851290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((-1) ^ n) (A000203 (n + 1)) : ℤ) * A341033 (A046092 n).toNat

end

end A293146.P1309633124273851290

/-!
# A293151: Euler(n)*Fibonacci(n+1) - n!.

The programs for A293151, there is no canonical definition to state claims against.
-/

/-! ## A293151.P14699526501100702107

`A000045(n+1)*A000111(n)-n!`
-/

namespace A293151.P14699526501100702107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000111 n - (Nat.factorial n : ℤ)

end

end A293151.P14699526501100702107

/-! ## A293151.P13829119574963934291

`A000045(n+1)*A000111(n)-A000142(n)`
-/

namespace A293151.P13829119574963934291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000111 n - A000142 n

end

end A293151.P13829119574963934291

/-! ## A293151.P8835789347664114915

`A000045(n+1)*A000111(n)-∏[A028310(n)]`
-/

namespace A293151.P8835789347664114915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000111 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A293151.P8835789347664114915

/-! ## A293151.P6412577156452261627

`(A000045(n+1)*A000111(n))%A004904(n+1)!`
-/

namespace A293151.P6412577156452261627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1) * A000111 n) (Nat.factorial (A004904 (n + 1)).toNat : ℤ)

end

end A293151.P6412577156452261627

/-!
# A293152: a(n) = Euler(n)*Fibonacci(n) - n!.

The programs for A293152, there is no canonical definition to state claims against.
-/

/-! ## A293152.P10724440311002811542

`A000045(n)*A000111(n)-n!`
-/

namespace A293152.P10724440311002811542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000111 n - (Nat.factorial n : ℤ)

end

end A293152.P10724440311002811542

/-! ## A293152.P465651873794117032

`sqrt(A007598(n))*A010094(∑[n+1])-n!`
-/

namespace A293152.P465651873794117032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (A010094 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) - (Nat.factorial n : ℝ)

end

end A293152.P465651873794117032

/-! ## A293152.P1980518936313172035

`A000045(n)*A000111(n)-A000142(n)`
-/

namespace A293152.P1980518936313172035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000111 n - A000142 n

end

end A293152.P1980518936313172035

/-! ## A293152.P14715310364757245813

`A000045(n)*A000111(n)-∏[A028310(n)]`
-/

namespace A293152.P14715310364757245813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000111 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A293152.P14715310364757245813

/-!
# A293153: Number of linear extensions of a certain poset C^bar_n.

The programs for A293153, there is no canonical definition to state claims against.
-/

/-! ## A293153.P12195564690932291486

`A276837(A081268(n))`
-/

namespace A293153.P12195564690932291486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A081268 n).toNat

end

end A293153.P12195564690932291486

/-! ## A293153.P14117726502498495389

`A276837(A028387(2*n)+A000217(n))`
-/

namespace A293153.P14117726502498495389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A028387 (2 * n) + A000217 n).toNat

end

end A293153.P14117726502498495389

/-!
# A293154: Record high values in A036263.

The programs for A293154, there is no canonical definition to state claims against.
-/

/-! ## A293154.P15096936968438725019

`record[A295746(n+1)]`
-/

namespace A293154.P15096936968438725019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293154.P15096936968438725019

/-! ## A293154.P14717166274484448552

`abs(record[A295746(A008619(n))])`
-/

namespace A293154.P14717166274484448552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295746 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A293154.P14717166274484448552

/-! ## A293154.P9292342312508002627

`abs(record[A295746(A008620(n))])`
-/

namespace A293154.P9292342312508002627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295746 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A293154.P9292342312508002627

/-! ## A293154.P3099611501154279138

`abs(record[A295746(A008621(n))])`
-/

namespace A293154.P3099611501154279138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295746 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A293154.P3099611501154279138

/-! ## A293154.P8893640772858848989

`abs(record[A295746(A028310(n))])`
-/

namespace A293154.P8893640772858848989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A293154.P8893640772858848989

/-!
# A293155: Indices of record high values in A036263.

The programs for A293155, there is no canonical definition to state claims against.
-/

/-! ## A293155.P1866680596767326779

`eq[A140715(n+1), A397365(n)]`
-/

namespace A293155.P1866680596767326779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293155.P1866680596767326779

/-! ## A293155.P12065337762213349007

`A167865(A147758(2*(n+1)))+n`
-/

namespace A293155.P12065337762213349007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A147758 (2 * (n + 1))).toNat + (n : ℤ)

end

end A293155.P12065337762213349007

/-!
# A293156: Number of linear chord diagrams with n+2 chords such that every chord has length at least n.

The programs for A293156, the canonical program `A293156.P17900518101950691567` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293156 has offset 1).

The definition of A293156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293156.P17900518101950691567

`3*a(n-1)` with `a(0)=15, a(1)=36, a(2)=99, a(3)=292`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293156

/-- `3*a(n-1)` -/
def P17900518101950691567.Spec : Prop :=
  ∀ n, (P17900518101950691567.a n : ℤ) = A293156 (n + 1)

theorem P17900518101950691567.correct : P17900518101950691567.Spec := by
  intro n
  simp only [A293156, Nat.add_sub_cancel]

end A293156

/-! ## A293156.P5117284155222557986

`ogf((-15+9x+9x^2+5x^3)/(-1+3x))`
-/

namespace A293156.P5117284155222557986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -9, -9, -5] [1, -3] n

end

end A293156.P5117284155222557986

namespace A293156

/-- `ogf((-15+9x+9x^2+5x^3)/(-1+3x))` -/
def P5117284155222557986.Spec : Prop :=
  ∀ n, P5117284155222557986.a n = A293156 (n + 1)

end A293156

/-! ## A293156.P9811905457300081931

`A321311(n+1)+A020714(n)`
-/

namespace A293156.P9811905457300081931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321311 (n + 1) + A020714 n

end

end A293156.P9811905457300081931

namespace A293156

/-- `A321311(n+1)+A020714(n)` -/
def P9811905457300081931.Spec : Prop :=
  ∀ n, P9811905457300081931.a n = A293156 (n + 1)

theorem P9811905457300081931.correct : P9811905457300081931.Spec := by
  intro n
  simp only [A293156, Nat.add_sub_cancel, A293156.P9811905457300081931.a, A293156.P17900518101950691567.a, A020714, A020714.P4672987561035728998.a, A321311, A321311.P15851712544406314478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293156

/-! ## A293156.P17660628597656832655

`A321311(n+1)+Δ[A048487(n)]`
-/

namespace A293156.P17660628597656832655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321311 (n + 1) + (f1 (n + 1) - f1 n)

end

end A293156.P17660628597656832655

namespace A293156

/-- `A321311(n+1)+Δ[A048487(n)]` -/
def P17660628597656832655.Spec : Prop :=
  ∀ n, P17660628597656832655.a n = A293156 (n + 1)

theorem P17660628597656832655.correct : P17660628597656832655.Spec := by
  intro n
  simp only [A293156, Nat.add_sub_cancel, A293156.P17660628597656832655.f1, A293156.P17660628597656832655.a, A293156.P17900518101950691567.a, A048487, A048487.P12792762817219359153.a, A321311, A321311.P15851712544406314478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293156

/-! ## A293156.P10118046442591005216

`A321311(n+1)+A146523(n+1)`
-/

namespace A293156.P10118046442591005216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321311 (n + 1) + A146523 (n + 1)

end

end A293156.P10118046442591005216

namespace A293156

/-- `A321311(n+1)+A146523(n+1)` -/
def P10118046442591005216.Spec : Prop :=
  ∀ n, P10118046442591005216.a n = A293156 (n + 1)

end A293156

/-! ## A293156.P6595968173543980956

`A321311(n+1)+A257113(n+3)`
-/

namespace A293156.P6595968173543980956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321311 (n + 1) + A257113 (n + 3)

end

end A293156.P6595968173543980956

namespace A293156

/-- `A321311(n+1)+A257113(n+3)` -/
def P6595968173543980956.Spec : Prop :=
  ∀ n, P6595968173543980956.a n = A293156 (n + 1)

end A293156

/-! ## A293156.P6649725088113950601

`A321311(n+1)+5*A000079(n)`
-/

namespace A293156.P6649725088113950601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321311 (n + 1) + 5 * A000079 n

end

end A293156.P6649725088113950601

namespace A293156

/-- `A321311(n+1)+5*A000079(n)` -/
def P6649725088113950601.Spec : Prop :=
  ∀ n, P6649725088113950601.a n = A293156 (n + 1)

theorem P6649725088113950601.correct : P6649725088113950601.Spec := by
  intro n
  simp only [A293156, Nat.add_sub_cancel, A293156.P6649725088113950601.a, A293156.P17900518101950691567.a, A000079, A000079.P10855139691139572931.a, A321311, A321311.P15851712544406314478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293156

/-! ## A293156.P17556717424792032030

`A321311(n+1)+Δ[A154117(n+1)]`
-/

namespace A293156.P17556717424792032030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321311 (n + 1) + (f1 (n + 1) - f1 n)

end

end A293156.P17556717424792032030

namespace A293156

/-- `A321311(n+1)+Δ[A154117(n+1)]` -/
def P17556717424792032030.Spec : Prop :=
  ∀ n, P17556717424792032030.a n = A293156 (n + 1)

end A293156

/-!
# A293157: Triangle read by rows: T(n,k) = number of linear chord diagrams with n chords such that every chord has length at least k (1 <= k <= n).

The programs for A293157, there is no canonical definition to state claims against.
-/

/-! ## A293157.P2965989397094475408

`or(1, A324428(3^C(a(n-1), 68)+n))` with `a(0)=1`
-/

namespace A293157.P2965989397094475408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A324428 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n))

end

end A293157.P2965989397094475408

/-! ## A293157.P4791923953715730577

`A269950(A014545(n+1))`
-/

namespace A293157.P4791923953715730577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269950 (A014545 (n + 1)).toNat

end

end A293157.P4791923953715730577

/-! ## A293157.P10723511902407392957

`A125206(A187429(n)+1)`
-/

namespace A293157.P10723511902407392957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125206 (A187429 n + 1).toNat

end

end A293157.P10723511902407392957

/-!
# A293160: Number of distinct terms in row n of Stern's diatomic array, A049456.

The programs for A293160, there is no canonical definition to state claims against.
-/

/-! ## A293160.P15140545278345254555

`A293165(n+1)-1`
-/

namespace A293160.P15140545278345254555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293165 (n + 1) - 1

end

end A293160.P15140545278345254555

/-! ## A293160.P2900184805850851413

`xor(-A293165(n+1), A057428(n+1))`
-/

namespace A293160.P2900184805850851413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A293165 (n + 1)) (A057428 (n + 1))

end

end A293160.P2900184805850851413

/-! ## A293160.P2256339469943008308

`A355824(A218255(n))+A293165(n+1)`
-/

namespace A293160.P2256339469943008308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (A218255 n).toNat + A293165 (n + 1)

end

end A293160.P2256339469943008308

/-! ## A293160.P12003331430891154984

`A295783(n)+a(n-1)` with `a(0)=1`
-/

namespace A293160.P12003331430891154984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295783 n + a (n - 1)

end

end A293160.P12003331430891154984

/-!
# A293161: a(n) = ceiling(A293160(n)/2).

The programs for A293161, there is no canonical definition to state claims against.
-/

/-! ## A293161.P17900937393544098734

`ceil(A293160(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293161.P17900937393544098734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293160 (n + 1) : ℚ) / 2⌉

end

end A293161.P17900937393544098734

/-! ## A293161.P17076713148118012675

`floor(A293165(n+2)/2)`
-/

namespace A293161.P17076713148118012675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293165 (n + 2) : ℚ) / 2⌋

end

end A293161.P17076713148118012675

/-! ## A293161.P1745556646006224238

`floor(∑[A295783(n+1)]/2)+1`
-/

namespace A293161.P1745556646006224238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 1

end

end A293161.P1745556646006224238

/-! ## A293161.P17170414271617077100

`A000027(round(A293160(n+1)/2))`
-/

namespace A293161.P17170414271617077100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A293160 (n + 1) : ℚ) / 2)).toNat

end

end A293161.P17170414271617077100

/-!
# A293162: Take every third term of the {0,1}-version of the Thue-Morse sequence: a(n) = A010060(3n).

The programs for A293162, the canonical program `A293162.P16567619776842325743` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293162 has offset 0).

The definition of A293162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n)` (program `A293162.P16567619776842325743`, by `A293162.P16567619776842325743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293162.P7867398469980069149

`A026492(n)-1`
-/

namespace A293162.P7867398469980069149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n - 1

end

end A293162.P7867398469980069149

namespace A293162

/-- `A026492(n)-1` -/
def P7867398469980069149.Spec : Prop :=
  ∀ n, P7867398469980069149.a n = A293162 n

end A293162

/-! ## A293162.P16567619776842325743

`A010060(3*n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293162

/-- `A010060(3*n)` -/
def P16567619776842325743.Spec : Prop :=
  ∀ n, P16567619776842325743.a n = A293162 n

theorem P16567619776842325743.correct : P16567619776842325743.Spec := by
  intro n
  simp only [A293162]

end A293162

/-! ## A293162.P156399851784725398

`A000120(3*n)%2`
-/

namespace A293162.P156399851784725398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (3 * n)) 2

end

end A293162.P156399851784725398

namespace A293162

/-- `A000120(3*n)%2` -/
def P156399851784725398.Spec : Prop :=
  ∀ n, P156399851784725398.a n = A293162 n

end A293162

/-! ## A293162.P7229096064978943796

`log2(A026492(n))`
-/

namespace A293162.P7229096064978943796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A026492 n : ℝ)

end

end A293162.P7229096064978943796

namespace A293162

/-- `log2(A026492(n))` -/
def P7229096064978943796.Spec : Prop :=
  ∀ n, P7229096064978943796.a n = (A293162 n : ℝ)

end A293162

/-! ## A293162.P5218468981652049390

`A254379(6*n)`
-/

namespace A293162.P5218468981652049390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (6 * n)

end

end A293162.P5218468981652049390

namespace A293162

/-- `A254379(6*n)` -/
def P5218468981652049390.Spec : Prop :=
  ∀ n, P5218468981652049390.a n = A293162 n

end A293162

/-! ## A293162.P9986130653217573563

`A316828(6*n)`
-/

namespace A293162.P9986130653217573563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (6 * n)

end

end A293162.P9986130653217573563

namespace A293162

/-- `A316828(6*n)` -/
def P9986130653217573563.Spec : Prop :=
  ∀ n, P9986130653217573563.a n = A293162 n

end A293162

/-! ## A293162.P1725085516013502593

`A036555(n)%2`
-/

namespace A293162.P1725085516013502593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036555 n) 2

end

end A293162.P1725085516013502593

namespace A293162

/-- `A036555(n)%2` -/
def P1725085516013502593.Spec : Prop :=
  ∀ n, P1725085516013502593.a n = A293162 n

end A293162

/-! ## A293162.P11616782487407349325

`log2(A134660(n))%2`
-/

namespace A293162.P11616782487407349325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A134660 n : ℝ))) 2

end

end A293162.P11616782487407349325

namespace A293162

/-- `log2(A134660(n))%2` -/
def P11616782487407349325.Spec : Prop :=
  ∀ n, P11616782487407349325.a n = A293162 n

end A293162

/-! ## A293162.P14074171584801133482

`char[A036556(n+1)]`
-/

namespace A293162.P14074171584801133482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A293162.P14074171584801133482

namespace A293162

/-- `char[A036556(n+1)]` -/
def P14074171584801133482.Spec : Prop :=
  ∀ n, (P14074171584801133482.a n : ℤ) = A293162 n

end A293162

/-! ## A293162.P15856068345397915537

`A000035(A036555(n))`
-/

namespace A293162.P15856068345397915537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A036555 n).toNat

end

end A293162.P15856068345397915537

namespace A293162

/-- `A000035(A036555(n))` -/
def P15856068345397915537.Spec : Prop :=
  ∀ n, P15856068345397915537.a n = A293162 n

end A293162

/-! ## A293162.P11532256554477248060

`A065359(A134660(n)-1)`
-/

namespace A293162.P11532256554477248060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A134660 n - 1).toNat

end

end A293162.P11532256554477248060

namespace A293162

/-- `A065359(A134660(n)-1)` -/
def P11532256554477248060.Spec : Prop :=
  ∀ n, P11532256554477248060.a n = A293162 n

end A293162

/-! ## A293162.P8568116668477911424

`A001285(A318925(n))-1`
-/

namespace A293162.P8568116668477911424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A318925 n).toNat - 1

end

end A293162.P8568116668477911424

namespace A293162

/-- `A001285(A318925(n))-1` -/
def P8568116668477911424.Spec : Prop :=
  ∀ n, P8568116668477911424.a n = A293162 n

end A293162

/-! ## A293162.P9015387640346345943

`A000328(n)%A026492(n)`
-/

namespace A293162.P9015387640346345943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A026492 n)

end

end A293162.P9015387640346345943

namespace A293162

/-- `A000328(n)%A026492(n)` -/
def P9015387640346345943.Spec : Prop :=
  ∀ n, P9015387640346345943.a n = A293162 n

end A293162

/-! ## A293162.P8064932898304690241

`A000466(n)%A026492(n)`
-/

namespace A293162.P8064932898304690241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A026492 n)

end

end A293162.P8064932898304690241

namespace A293162

/-- `A000466(n)%A026492(n)` -/
def P8064932898304690241.Spec : Prop :=
  ∀ n, P8064932898304690241.a n = A293162 n

end A293162

/-! ## A293162.P9335657769160215206

`A000605(n)%A026492(n)`
-/

namespace A293162.P9335657769160215206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A026492 n)

end

end A293162.P9335657769160215206

namespace A293162

/-- `A000605(n)%A026492(n)` -/
def P9335657769160215206.Spec : Prop :=
  ∀ n, P9335657769160215206.a n = A293162 n

end A293162

/-! ## A293162.P10356884000258763218

`A001148(n)%A026492(n)`
-/

namespace A293162.P10356884000258763218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A026492 n)

end

end A293162.P10356884000258763218

namespace A293162

/-- `A001148(n)%A026492(n)` -/
def P10356884000258763218.Spec : Prop :=
  ∀ n, P10356884000258763218.a n = A293162 n

end A293162

/-! ## A293162.P13702979915232846219

`A001218(n)%A026492(n)`
-/

namespace A293162.P13702979915232846219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A026492 n)

end

end A293162.P13702979915232846219

namespace A293162

/-- `A001218(n)%A026492(n)` -/
def P13702979915232846219.Spec : Prop :=
  ∀ n, P13702979915232846219.a n = A293162 n

end A293162

/-! ## A293162.P3523770098762622586

`A001513(n)%A026492(n)`
-/

namespace A293162.P3523770098762622586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A026492 n)

end

end A293162.P3523770098762622586

namespace A293162

/-- `A001513(n)%A026492(n)` -/
def P3523770098762622586.Spec : Prop :=
  ∀ n, P3523770098762622586.a n = A293162 n

end A293162

/-! ## A293162.P7012823625448697781

`A001520(n)%A026492(n)`
-/

namespace A293162.P7012823625448697781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A026492 n)

end

end A293162.P7012823625448697781

namespace A293162

/-- `A001520(n)%A026492(n)` -/
def P7012823625448697781.Spec : Prop :=
  ∀ n, P7012823625448697781.a n = A293162 n

end A293162

/-! ## A293162.P3887134351876364547

`A001533(n)%A026492(n)`
-/

namespace A293162.P3887134351876364547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A026492 n)

end

end A293162.P3887134351876364547

namespace A293162

/-- `A001533(n)%A026492(n)` -/
def P3887134351876364547.Spec : Prop :=
  ∀ n, P3887134351876364547.a n = A293162 n

end A293162

/-!
# A293163: a(n) = A010060(3n+1).

The programs for A293163, the canonical program `A293163.P4132471224215771802` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293163 has offset 0).

The definition of A293163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+1)` (program `A293163.P4132471224215771802`, by `A293163.P4132471224215771802.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293163.P4132471224215771802

`A010060(3*n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293163

/-- `A010060(3*n+1)` -/
def P4132471224215771802.Spec : Prop :=
  ∀ n, P4132471224215771802.a n = A293163 n

theorem P4132471224215771802.correct : P4132471224215771802.Spec := by
  intro n
  simp only [A293163]

end A293163

/-! ## A293163.P1622071916394962875

`log2(A026498(n))`
-/

namespace A293163.P1622071916394962875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A026498 n : ℝ)

end

end A293163.P1622071916394962875

namespace A293163

/-- `log2(A026498(n))` -/
def P1622071916394962875.Spec : Prop :=
  ∀ n, P1622071916394962875.a n = (A293163 n : ℝ)

end A293163

/-! ## A293163.P14249112072920681485

`A046818(n)%2`
-/

namespace A293163.P14249112072920681485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046818 n) 2

end

end A293163.P14249112072920681485

namespace A293163

/-- `A046818(n)%2` -/
def P14249112072920681485.Spec : Prop :=
  ∀ n, P14249112072920681485.a n = A293163 n

end A293163

/-! ## A293163.P11758136720195629629

`log2(gcd(2, A240883(n)))`
-/

namespace A293163.P11758136720195629629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A240883 n) : ℝ)

end

end A293163.P11758136720195629629

namespace A293163

/-- `log2(gcd(2, A240883(n)))` -/
def P11758136720195629629.Spec : Prop :=
  ∀ n, P11758136720195629629.a n = (A293163 n : ℝ)

end A293163

/-! ## A293163.P16785859720560384232

`A254377(6*n+3)`
-/

namespace A293163.P16785859720560384232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (6 * n + 3)

end

end A293163.P16785859720560384232

namespace A293163

/-- `A254377(6*n+3)` -/
def P16785859720560384232.Spec : Prop :=
  ∀ n, P16785859720560384232.a n = A293163 n

end A293163

/-! ## A293163.P31790286884123555

`1-A293162(Δ[n²])`
-/

namespace A293163.P31790286884123555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A293162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A293163.P31790286884123555

namespace A293163

/-- `1-A293162(Δ[n²])` -/
def P31790286884123555.Spec : Prop :=
  ∀ n, P31790286884123555.a n = A293163 n

end A293163

/-! ## A293163.P14187693350618264989

`C(3, A391570(2*n+1))`
-/

namespace A293163.P14187693350618264989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A391570 (2 * n + 1)).toNat

end

end A293163.P14187693350618264989

namespace A293163

/-- `C(3, A391570(2*n+1))` -/
def P14187693350618264989.Spec : Prop :=
  ∀ n, (P14187693350618264989.a n : ℤ) = A293163 n

end A293163

/-! ## A293163.P9777817259632980323

`A000035(A046818(n))`
-/

namespace A293163.P9777817259632980323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046818 n).toNat

end

end A293163.P9777817259632980323

namespace A293163

/-- `A000035(A046818(n))` -/
def P9777817259632980323.Spec : Prop :=
  ∀ n, P9777817259632980323.a n = A293163 n

end A293163

/-! ## A293163.P13530567984133827623

`1-A228495(A016945(n))`
-/

namespace A293163.P13530567984133827623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A228495 (A016945 n).toNat

end

end A293163.P13530567984133827623

namespace A293163

/-- `1-A228495(A016945(n))` -/
def P13530567984133827623.Spec : Prop :=
  ∀ n, P13530567984133827623.a n = A293163 n

end A293163

/-! ## A293163.P7675354052355691010

`A000328(n)%A026498(n)`
-/

namespace A293163.P7675354052355691010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A026498 n)

end

end A293163.P7675354052355691010

namespace A293163

/-- `A000328(n)%A026498(n)` -/
def P7675354052355691010.Spec : Prop :=
  ∀ n, P7675354052355691010.a n = A293163 n

end A293163

/-! ## A293163.P1096349023889313471

`A000605(n)%A026498(n)`
-/

namespace A293163.P1096349023889313471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A026498 n)

end

end A293163.P1096349023889313471

namespace A293163

/-- `A000605(n)%A026498(n)` -/
def P1096349023889313471.Spec : Prop :=
  ∀ n, P1096349023889313471.a n = A293163 n

end A293163

/-! ## A293163.P12537263115671833190

`A001148(n)%A026498(n)`
-/

namespace A293163.P12537263115671833190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A026498 n)

end

end A293163.P12537263115671833190

namespace A293163

/-- `A001148(n)%A026498(n)` -/
def P12537263115671833190.Spec : Prop :=
  ∀ n, P12537263115671833190.a n = A293163 n

end A293163

/-! ## A293163.P10583698897427366168

`A001218(n)%A026498(n)`
-/

namespace A293163.P10583698897427366168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A026498 n)

end

end A293163.P10583698897427366168

namespace A293163

/-- `A001218(n)%A026498(n)` -/
def P10583698897427366168.Spec : Prop :=
  ∀ n, P10583698897427366168.a n = A293163 n

end A293163

/-! ## A293163.P8344921400716972290

`A001513(n)%A026498(n)`
-/

namespace A293163.P8344921400716972290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A026498 n)

end

end A293163.P8344921400716972290

namespace A293163

/-- `A001513(n)%A026498(n)` -/
def P8344921400716972290.Spec : Prop :=
  ∀ n, P8344921400716972290.a n = A293163 n

end A293163

/-! ## A293163.P12739007680217701981

`A001520(n)%A026498(n)`
-/

namespace A293163.P12739007680217701981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A026498 n)

end

end A293163.P12739007680217701981

namespace A293163

/-- `A001520(n)%A026498(n)` -/
def P12739007680217701981.Spec : Prop :=
  ∀ n, P12739007680217701981.a n = A293163 n

end A293163

/-! ## A293163.P5372167739407100823

`A001533(n)%A026498(n)`
-/

namespace A293163.P5372167739407100823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A026498 n)

end

end A293163.P5372167739407100823

namespace A293163

/-- `A001533(n)%A026498(n)` -/
def P5372167739407100823.Spec : Prop :=
  ∀ n, P5372167739407100823.a n = A293163 n

end A293163

/-! ## A293163.P18371614405639341620

`A001535(n)%A026498(n)`
-/

namespace A293163.P18371614405639341620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A026498 n)

end

end A293163.P18371614405639341620

namespace A293163

/-- `A001535(n)%A026498(n)` -/
def P18371614405639341620.Spec : Prop :=
  ∀ n, P18371614405639341620.a n = A293163 n

end A293163

/-! ## A293163.P11099303382407673521

`A001538(n)%A026498(n)`
-/

namespace A293163.P11099303382407673521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A026498 n)

end

end A293163.P11099303382407673521

namespace A293163

/-- `A001538(n)%A026498(n)` -/
def P11099303382407673521.Spec : Prop :=
  ∀ n, P11099303382407673521.a n = A293163 n

end A293163

/-! ## A293163.P1440961966679518709

`A001539(n)%A026498(n)`
-/

namespace A293163.P1440961966679518709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001539 n) (A026498 n)

end

end A293163.P1440961966679518709

namespace A293163

/-- `A001539(n)%A026498(n)` -/
def P1440961966679518709.Spec : Prop :=
  ∀ n, P1440961966679518709.a n = A293163 n

end A293163

/-! ## A293163.P12683973810040697148

`A001546(n)%A026498(n)`
-/

namespace A293163.P12683973810040697148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001546 n) (A026498 n)

end

end A293163.P12683973810040697148

namespace A293163

/-- `A001546(n)%A026498(n)` -/
def P12683973810040697148.Spec : Prop :=
  ∀ n, P12683973810040697148.a n = A293163 n

end A293163

/-!
# A293164: a(n) = A010060(3n+2).

The programs for A293164, the canonical program `A293164.P10087759990100678830` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293164 has offset 0).

The definition of A293164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+2)` (program `A293164.P10087759990100678830`, by `A293164.P10087759990100678830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293164.P10087759990100678830

`A010060(3*n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293164

/-- `A010060(3*n+2)` -/
def P10087759990100678830.Spec : Prop :=
  ∀ n, P10087759990100678830.a n = A293164 n

theorem P10087759990100678830.correct : P10087759990100678830.Spec := by
  intro n
  simp only [A293164]

end A293164

/-! ## A293164.P5973069523003162702

`log2(A026513(n))`
-/

namespace A293164.P5973069523003162702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A026513 n : ℝ)

end

end A293164.P5973069523003162702

namespace A293164

/-- `log2(A026513(n))` -/
def P5973069523003162702.Spec : Prop :=
  ∀ n, P5973069523003162702.a n = (A293164 n : ℝ)

end A293164

/-! ## A293164.P17451455104192119487

`A046819(n)%2`
-/

namespace A293164.P17451455104192119487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046819 n) 2

end

end A293164.P17451455104192119487

namespace A293164

/-- `A046819(n)%2` -/
def P17451455104192119487.Spec : Prop :=
  ∀ n, P17451455104192119487.a n = A293164 n

end A293164

/-! ## A293164.P3952039124030419817

`A254377(6*n+5)`
-/

namespace A293164.P3952039124030419817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (6 * n + 5)

end

end A293164.P3952039124030419817

namespace A293164

/-- `A254377(6*n+5)` -/
def P3952039124030419817.Spec : Prop :=
  ∀ n, P3952039124030419817.a n = A293164 n

end A293164

/-! ## A293164.P1211896108819447190

`A305422(3*n+2)%2`
-/

namespace A293164.P1211896108819447190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305422 (3 * n + 2)) 2

end

end A293164.P1211896108819447190

namespace A293164

/-- `A305422(3*n+2)%2` -/
def P1211896108819447190.Spec : Prop :=
  ∀ n, P1211896108819447190.a n = A293164 n

end A293164

/-! ## A293164.P14284910296876999285

`A316828(xor(1, 6*n)+3)`
-/

namespace A293164.P14284910296876999285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (Nat.xor 1 (6 * n) + 3)

end

end A293164.P14284910296876999285

namespace A293164

/-- `A316828(xor(1, 6*n)+3)` -/
def P14284910296876999285.Spec : Prop :=
  ∀ n, P14284910296876999285.a n = A293164 n

end A293164

/-! ## A293164.P14926405948291094177

`(A001316(3*n+2)+2)%3`
-/

namespace A293164.P14926405948291094177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (3 * n + 2) + 2) 3

end

end A293164.P14926405948291094177

namespace A293164

/-- `(A001316(3*n+2)+2)%3` -/
def P14926405948291094177.Spec : Prop :=
  ∀ n, P14926405948291094177.a n = A293164 n

end A293164

/-! ## A293164.P3652132528178134238

`A000035(A046819(n))`
-/

namespace A293164.P3652132528178134238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046819 n).toNat

end

end A293164.P3652132528178134238

namespace A293164

/-- `A000035(A046819(n))` -/
def P3652132528178134238.Spec : Prop :=
  ∀ n, P3652132528178134238.a n = A293164 n

end A293164

/-! ## A293164.P17461045040375240879

`A000328(n)%A026513(n)`
-/

namespace A293164.P17461045040375240879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A026513 n)

end

end A293164.P17461045040375240879

namespace A293164

/-- `A000328(n)%A026513(n)` -/
def P17461045040375240879.Spec : Prop :=
  ∀ n, P17461045040375240879.a n = A293164 n

end A293164

/-! ## A293164.P9767808150811290457

`A000605(n)%A026513(n)`
-/

namespace A293164.P9767808150811290457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A026513 n)

end

end A293164.P9767808150811290457

namespace A293164

/-- `A000605(n)%A026513(n)` -/
def P9767808150811290457.Spec : Prop :=
  ∀ n, P9767808150811290457.a n = A293164 n

end A293164

/-! ## A293164.P12788104913401939257

`A001148(n)%A026513(n)`
-/

namespace A293164.P12788104913401939257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A026513 n)

end

end A293164.P12788104913401939257

namespace A293164

/-- `A001148(n)%A026513(n)` -/
def P12788104913401939257.Spec : Prop :=
  ∀ n, P12788104913401939257.a n = A293164 n

end A293164

/-! ## A293164.P3247304618596197118

`A001218(n)%A026513(n)`
-/

namespace A293164.P3247304618596197118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A026513 n)

end

end A293164.P3247304618596197118

namespace A293164

/-- `A001218(n)%A026513(n)` -/
def P3247304618596197118.Spec : Prop :=
  ∀ n, P3247304618596197118.a n = A293164 n

end A293164

/-! ## A293164.P362353008981454123

`A001513(n)%A026513(n)`
-/

namespace A293164.P362353008981454123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A026513 n)

end

end A293164.P362353008981454123

namespace A293164

/-- `A001513(n)%A026513(n)` -/
def P362353008981454123.Spec : Prop :=
  ∀ n, P362353008981454123.a n = A293164 n

end A293164

/-! ## A293164.P7848337305522410367

`A001520(n)%A026513(n)`
-/

namespace A293164.P7848337305522410367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A026513 n)

end

end A293164.P7848337305522410367

namespace A293164

/-- `A001520(n)%A026513(n)` -/
def P7848337305522410367.Spec : Prop :=
  ∀ n, P7848337305522410367.a n = A293164 n

end A293164

/-! ## A293164.P7830436805420578791

`A001533(n)%A026513(n)`
-/

namespace A293164.P7830436805420578791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A026513 n)

end

end A293164.P7830436805420578791

namespace A293164

/-- `A001533(n)%A026513(n)` -/
def P7830436805420578791.Spec : Prop :=
  ∀ n, P7830436805420578791.a n = A293164 n

end A293164

/-! ## A293164.P2735100408810450734

`A001535(n)%A026513(n)`
-/

namespace A293164.P2735100408810450734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A026513 n)

end

end A293164.P2735100408810450734

namespace A293164

/-- `A001535(n)%A026513(n)` -/
def P2735100408810450734.Spec : Prop :=
  ∀ n, P2735100408810450734.a n = A293164 n

end A293164

/-! ## A293164.P7390411480175675644

`A001538(n)%A026513(n)`
-/

namespace A293164.P7390411480175675644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A026513 n)

end

end A293164.P7390411480175675644

namespace A293164

/-- `A001538(n)%A026513(n)` -/
def P7390411480175675644.Spec : Prop :=
  ∀ n, P7390411480175675644.a n = A293164 n

end A293164

/-! ## A293164.P12854789106551350270

`A001539(n)%A026513(n)`
-/

namespace A293164.P12854789106551350270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001539 n) (A026513 n)

end

end A293164.P12854789106551350270

namespace A293164

/-- `A001539(n)%A026513(n)` -/
def P12854789106551350270.Spec : Prop :=
  ∀ n, P12854789106551350270.a n = A293164 n

end A293164

/-! ## A293164.P18194041873888730790

`A001546(n)%A026513(n)`
-/

namespace A293164.P18194041873888730790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001546 n) (A026513 n)

end

end A293164.P18194041873888730790

namespace A293164

/-- `A001546(n)%A026513(n)` -/
def P18194041873888730790.Spec : Prop :=
  ∀ n, P18194041873888730790.a n = A293164 n

end A293164

/-! ## A293164.P3361544387226322485

`A001844(n)%A026513(n)`
-/

namespace A293164.P3361544387226322485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (A026513 n)

end

end A293164.P3361544387226322485

namespace A293164

/-- `A001844(n)%A026513(n)` -/
def P3361544387226322485.Spec : Prop :=
  ∀ n, P3361544387226322485.a n = A293164 n

end A293164

/-!
# A293165: Number of distinct terms in row n of A049455.

The programs for A293165, there is no canonical definition to state claims against.
-/

/-! ## A293165.P9684236779877013877

`A293160(n)+1`
-/

namespace A293165.P9684236779877013877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293160 n + 1

end

end A293165.P9684236779877013877

/-! ## A293165.P15749946856114591030

`A295783(n)+a(n-1)` with `a(0)=2`
-/

namespace A293165.P15749946856114591030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A295783 n + a (n - 1)

end

end A293165.P15749946856114591030

/-! ## A293165.P11005243938595969854

`∑[A295783(A028310(n))]+2`
-/

namespace A293165.P11005243938595969854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295783 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A293165.P11005243938595969854

/-! ## A293165.P7032898568348127998

`A020725(A293160(n))`
-/

namespace A293165.P7032898568348127998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A293160 n).toNat

end

end A293165.P7032898568348127998

/-!
# A293166: Resonance primes (see Section 5 of Shevelev (2008) for definition).

The programs for A293166, there is no canonical definition to state claims against.
-/

/-! ## A293166.P1675239788562493528

`A392710(A265075(n+1))`
-/

namespace A293166.P1675239788562493528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392710 (A265075 (n + 1)).toNat

end

end A293166.P1675239788562493528

/-! ## A293166.P15615621996860295560

`A243292(A124454(n+2))`
-/

namespace A293166.P15615621996860295560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243292 (A124454 (n + 2)).toNat

end

end A293166.P15615621996860295560

/-!
# A293167: a(n) = Sum_{k = 1..n} d(d(d(k))), where d(k) is the number of divisors of k (A000005).

The programs for A293167, the canonical program `A293167.P8863016306173982094` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293167 has offset 1).

The definition of A293167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293167.P8863016306173982094

`∑[∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1]]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293167

/-- `∑[∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1]]` -/
def P8863016306173982094.Spec : Prop :=
  ∀ n, (P8863016306173982094.a n : ℤ) = A293167 (n + 1)

theorem P8863016306173982094.correct : P8863016306173982094.Spec := by
  intro n
  simp only [A293167, Nat.add_sub_cancel]

end A293167

/-! ## A293167.P10671932126978168556

`∑[A036450(n+1)]`
-/

namespace A293167.P10671932126978168556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293167.P10671932126978168556

namespace A293167

/-- `∑[A036450(n+1)]` -/
def P10671932126978168556.Spec : Prop :=
  ∀ n, P10671932126978168556.a n = A293167 (n + 1)

end A293167

/-! ## A293167.P5279041023672745996

`∑[A000005(∑[A111407(n)])]`
-/

namespace A293167.P5279041023672745996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293167.P5279041023672745996

namespace A293167

/-- `∑[A000005(∑[A111407(n)])]` -/
def P5279041023672745996.Spec : Prop :=
  ∀ n, P5279041023672745996.a n = A293167 (n + 1)

end A293167

/-! ## A293167.P10939858232617864998

`∑[A010553(A000005(n+1))]`
-/

namespace A293167.P10939858232617864998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293167.P10939858232617864998

namespace A293167

/-- `∑[A010553(A000005(n+1))]` -/
def P10939858232617864998.Spec : Prop :=
  ∀ n, P10939858232617864998.a n = A293167 (n + 1)

end A293167

/-! ## A293167.P8623543334279579293

`∑[A046951(A010553(n+1)²)]`
-/

namespace A293167.P8623543334279579293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A010553 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293167.P8623543334279579293

namespace A293167

/-- `∑[A046951(A010553(n+1)²)]` -/
def P8623543334279579293.Spec : Prop :=
  ∀ n, P8623543334279579293.a n = A293167 (n + 1)

end A293167

/-! ## A293167.P1776956609966135078

`∑[A000005(A000005(∏{e}[n+1, #+1]))]`
-/

namespace A293167.P1776956609966135078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293167.P1776956609966135078

namespace A293167

/-- `∑[A000005(A000005(∏{e}[n+1, #+1]))]` -/
def P1776956609966135078.Spec : Prop :=
  ∀ n, P1776956609966135078.a n = A293167 (n + 1)

end A293167

/-! ## A293167.P7228826045106086237

`∑[A184395(A184395(∏{e}[n+1, #+1]))]`
-/

namespace A293167.P7228826045106086237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (A184395 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293167.P7228826045106086237

namespace A293167

/-- `∑[A184395(A184395(∏{e}[n+1, #+1]))]` -/
def P7228826045106086237.Spec : Prop :=
  ∀ n, P7228826045106086237.a n = A293167 (n + 1)

end A293167

/-! ## A293167.P10742024433409381020

`A000005(A000005(A000005(A046523(n+1))))+a(n-1)` with `a(0)=1`
-/

namespace A293167.P10742024433409381020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A000005 (A000005 (A046523 (n + 1)).toNat).toNat).toNat + a (n - 1)

end

end A293167.P10742024433409381020

namespace A293167

/-- `A000005(A000005(A000005(A046523(n+1))))+a(n-1)` -/
def P10742024433409381020.Spec : Prop :=
  ∀ n, P10742024433409381020.a n = A293167 (n + 1)

end A293167

/-!
# A293168: Partial sums of A054868.

The programs for A293168, the canonical program `A293168.P10275927370229923913` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293168 has offset 0).

The definition of A293168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293168.P10275927370229923913

`∑[A054868(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293168

/-- `∑[A054868(n)]` -/
def P10275927370229923913.Spec : Prop :=
  ∀ n, P10275927370229923913.a n = A293168 n

theorem P10275927370229923913.correct : P10275927370229923913.Spec := by
  intro n
  simp only [A293168]

end A293168

/-! ## A293168.P16639461629856274230

`∑[A000120(A000120(n))]`
-/

namespace A293168.P16639461629856274230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P16639461629856274230

namespace A293168

/-- `∑[A000120(A000120(n))]` -/
def P16639461629856274230.Spec : Prop :=
  ∀ n, P16639461629856274230.a n = A293168 n

end A293168

/-! ## A293168.P6373623247805791388

`∑[A064547(A001316(n))]`
-/

namespace A293168.P6373623247805791388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P6373623247805791388

namespace A293168

/-- `∑[A064547(A001316(n))]` -/
def P6373623247805791388.Spec : Prop :=
  ∀ n, P6373623247805791388.a n = A293168 n

end A293168

/-! ## A293168.P3299982141896795031

`∑[A286574(A001316(n)-1)]`
-/

namespace A293168.P3299982141896795031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A001316 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P3299982141896795031

namespace A293168

/-- `∑[A286574(A001316(n)-1)]` -/
def P3299982141896795031.Spec : Prop :=
  ∀ n, P3299982141896795031.a n = A293168 n

end A293168

/-! ## A293168.P13730668879549161657

`∑[dr(A007088(n-A011371(n)))]`
-/

namespace A293168.P13730668879549161657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 ((n : ℤ) - A011371 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P13730668879549161657

namespace A293168

/-- `∑[dr(A007088(n-A011371(n)))]` -/
def P13730668879549161657.Spec : Prop :=
  ∀ n, (P13730668879549161657.a n : ℤ) = A293168 n

end A293168

/-! ## A293168.P4532277359419404314

`∑[∑[A111412(n)]-A111412(n)]`
-/

namespace A293168.P4532277359419404314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A111412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P4532277359419404314

namespace A293168

/-- `∑[∑[A111412(n)]-A111412(n)]` -/
def P4532277359419404314.Spec : Prop :=
  ∀ n, P4532277359419404314.a n = A293168 n

end A293168

/-! ## A293168.P8117724648193404101

`∑[A063787(A063787(n+1))-1]`
-/

namespace A293168.P8117724648193404101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A063787 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P8117724648193404101

namespace A293168

/-- `∑[A063787(A063787(n+1))-1]` -/
def P8117724648193404101.Spec : Prop :=
  ∀ n, P8117724648193404101.a n = A293168 n

end A293168

/-! ## A293168.P15554728363212355101

`∑[val(A001316(n-A011371(n)), 2)]`
-/

namespace A293168.P15554728363212355101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 ((n : ℤ) - A011371 n).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P15554728363212355101

namespace A293168

/-- `∑[val(A001316(n-A011371(n)), 2)]` -/
def P15554728363212355101.Spec : Prop :=
  ∀ n, (P15554728363212355101.a n : ℤ) = A293168 n

end A293168

/-! ## A293168.P3675555842769955018

`∑[dr(A007088(2*n-A005187(n)))]`
-/

namespace A293168.P3675555842769955018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 ((2 * n : ℤ) - A005187 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P3675555842769955018

namespace A293168

/-- `∑[dr(A007088(2*n-A005187(n)))]` -/
def P3675555842769955018.Spec : Prop :=
  ∀ n, (P3675555842769955018.a n : ℤ) = A293168 n

end A293168

/-! ## A293168.P654014144636314904

`∑[dr(A007088(n-A005187(n)+n))]`
-/

namespace A293168.P654014144636314904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 ((n : ℤ) - A005187 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P654014144636314904

namespace A293168

/-- `∑[dr(A007088(n-A005187(n)+n))]` -/
def P654014144636314904.Spec : Prop :=
  ∀ n, (P654014144636314904.a n : ℤ) = A293168 n

end A293168

/-! ## A293168.P9813409465789339450

`∑[A048881(2*A048881(2*n))]`
-/

namespace A293168.P9813409465789339450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A048881 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P9813409465789339450

namespace A293168

/-- `∑[A048881(2*A048881(2*n))]` -/
def P9813409465789339450.Spec : Prop :=
  ∀ n, P9813409465789339450.a n = A293168 n

end A293168

/-! ## A293168.P7250280905196676165

`∑[A274009(A274009(2*n+1)+A274009(2*n))]`
-/

namespace A293168.P7250280905196676165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A274009 (2 * n + 1) + A274009 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P7250280905196676165

namespace A293168

/-- `∑[A274009(A274009(2*n+1)+A274009(2*n))]` -/
def P7250280905196676165.Spec : Prop :=
  ∀ n, P7250280905196676165.a n = A293168 n

end A293168

/-! ## A293168.P387180087198004017

`∑[A286574(A156552(A001316(2*n)))]`
-/

namespace A293168.P387180087198004017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A156552 (A001316 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P387180087198004017

namespace A293168

/-- `∑[A286574(A156552(A001316(2*n)))]` -/
def P387180087198004017.Spec : Prop :=
  ∀ n, P387180087198004017.a n = A293168 n

end A293168

/-! ## A293168.P4012248812145094221

`∑[A001221(or(1, A001316(n)²))]`
-/

namespace A293168.P4012248812145094221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A001316 n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P4012248812145094221

namespace A293168

/-- `∑[A001221(or(1, A001316(n)²))]` -/
def P4012248812145094221.Spec : Prop :=
  ∀ n, P4012248812145094221.a n = A293168 n

end A293168

/-! ## A293168.P5164418803240643336

`∑[A001221(A102376(n)+6)-1]`
-/

namespace A293168.P5164418803240643336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102376 n + 6).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P5164418803240643336

namespace A293168

/-- `∑[A001221(A102376(n)+6)-1]` -/
def P5164418803240643336.Spec : Prop :=
  ∀ n, P5164418803240643336.a n = A293168 n

end A293168

/-! ## A293168.P12718168151994353584

`∑[A064547(A293442(A019565(n)))]`
-/

namespace A293168.P12718168151994353584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A293442 (A019565 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P12718168151994353584

namespace A293168

/-- `∑[A064547(A293442(A019565(n)))]` -/
def P12718168151994353584.Spec : Prop :=
  ∀ n, P12718168151994353584.a n = A293168 n

end A293168

/-!
# A293169: a(n) = Sum_{k=0..n} binomial(k, 6*(n-k)).

The programs for A293169, the canonical program `A293169.P10636581363963723716` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293169 has offset 0).

The definition of A293169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293169.P10636581363963723716

`A392253(2*n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293169

/-- `A392253(2*n)` -/
def P10636581363963723716.Spec : Prop :=
  ∀ n, P10636581363963723716.a n = A293169 n

theorem P10636581363963723716.correct : P10636581363963723716.Spec := by
  intro n
  simp only [A293169]

end A293169

/-! ## A293169.P356313542325704933

`A391399(3*n)`
-/

namespace A293169.P356313542325704933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391399 (3 * n)

end

end A293169.P356313542325704933

namespace A293169

/-- `A391399(3*n)` -/
def P356313542325704933.Spec : Prop :=
  ∀ n, P356313542325704933.a n = A293169 n

end A293169

/-! ## A293169.P6172663956200801657

`A017847(6*n)`
-/

namespace A293169.P6172663956200801657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (6 * n)

end

end A293169.P6172663956200801657

namespace A293169

/-- `A017847(6*n)` -/
def P6172663956200801657.Spec : Prop :=
  ∀ n, P6172663956200801657.a n = A293169 n

end A293169

/-! ## A293169.P2217810589739306359

`A127841(6*n+8)`
-/

namespace A293169.P2217810589739306359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (6 * n + 8)

end

end A293169.P2217810589739306359

namespace A293169

/-- `A127841(6*n+8)` -/
def P2217810589739306359.Spec : Prop :=
  ∀ n, P2217810589739306359.a n = A293169 n

end A293169

/-! ## A293169.P14381595840784225214

`∑[A127841(Δ[A056105(n)])]`
-/

namespace A293169.P14381595840784225214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293169.P14381595840784225214

namespace A293169

/-- `∑[A127841(Δ[A056105(n)])]` -/
def P14381595840784225214.Spec : Prop :=
  ∀ n, P14381595840784225214.a n = A293169 n

end A293169

/-! ## A293169.P16248440600255182115

`∑[A127841(A008588(n)+1)]`
-/

namespace A293169.P16248440600255182115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A008588 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293169.P16248440600255182115

namespace A293169

/-- `∑[A127841(A008588(n)+1)]` -/
def P16248440600255182115.Spec : Prop :=
  ∀ n, P16248440600255182115.a n = A293169 n

end A293169

/-! ## A293169.P14606214042396803522

`∑[A127841(A016813(n)+A005843(n))]`
-/

namespace A293169.P14606214042396803522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A016813 n + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293169.P14606214042396803522

namespace A293169

/-- `∑[A127841(A016813(n)+A005843(n))]` -/
def P14606214042396803522.Spec : Prop :=
  ∀ n, P14606214042396803522.a n = A293169 n

end A293169

/-! ## A293169.P553477505896923373

`A306680(Δ[A264444(n)]+1)`
-/

namespace A293169.P553477505896923373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 (f1 (n + 1) - f1 n + 1).toNat

end

end A293169.P553477505896923373

namespace A293169

/-- `A306680(Δ[A264444(n)]+1)` -/
def P553477505896923373.Spec : Prop :=
  ∀ n, P553477505896923373.a n = A293169 n

end A293169

/-!
# A293170: Number of distinct subsequences of the binary expansion of n.

The programs for A293170, there is no canonical definition to state claims against.
-/

/-! ## A293170.P8803741961374888296

`A293722(n)+1`
-/

namespace A293170.P8803741961374888296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293722 n + 1

end

end A293170.P8803741961374888296

/-! ## A293170.P11239515732553310803

`A020725(A293722(n))`
-/

namespace A293170.P11239515732553310803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A293722 n).toNat

end

end A293170.P11239515732553310803

/-! ## A293170.P13212134385509005111

`A008619(2*A293722(n))`
-/

namespace A293170.P13212134385509005111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A293722 n).toNat

end

end A293170.P13212134385509005111

/-! ## A293170.P18034860877463689087

`A028242(2*A293722(n))`
-/

namespace A293170.P18034860877463689087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A293722 n).toNat

end

end A293170.P18034860877463689087

/-! ## A293170.P14669920419255144235

`A029579(2*A293722(n))`
-/

namespace A293170.P14669920419255144235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A293722 n).toNat

end

end A293170.P14669920419255144235

/-! ## A293170.P7816785483101739788

`1-(A005872(A005872(n))-A293722(n))`
-/

namespace A293170.P7816785483101739788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A005872 (A005872 n).toNat - A293722 n)

end

end A293170.P7816785483101739788

/-! ## A293170.P5627563969907264071

`A007318(A167614(A293722(n))-2)`
-/

namespace A293170.P5627563969907264071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167614 (A293722 n).toNat - 2).toNat

end

end A293170.P5627563969907264071

/-! ## A293170.P18346996851088646619

`A334300(A196168(n))+1`
-/

namespace A293170.P18346996851088646619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 (A196168 n).toNat + 1

end

end A293170.P18346996851088646619

/-!
# A293171: Triangle read by rows: T(n,k) = number of colored weighted Motzkin paths ending at (n,k).

The programs for A293171, there is no canonical definition to state claims against.
-/

/-! ## A293171.P8572673086271532016

`A084604(A063656(A114327(n)+n))`
-/

namespace A293171.P8572673086271532016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (A063656 (A114327 n + (n : ℤ)).toNat).toNat

end

end A293171.P8572673086271532016

/-! ## A293171.P5525437255490873050

`A272868(∑[2*n]%comp[∑[n]])`
-/

namespace A293171.P5525437255490873050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272868 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A293171.P5525437255490873050

/-! ## A293171.P14846218183237888487

`A272868(∑[char[∑[n]]]²-(n+1))`
-/

namespace A293171.P14846218183237888487
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272868 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A293171.P14846218183237888487

/-! ## A293171.P15846998606226248494

`xor(1, xor(1, A272868(A061579(n))))`
-/

namespace A293171.P15846998606226248494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A272868 (A061579 n).toNat))

end

end A293171.P15846998606226248494

/-! ## A293171.P11516030831758517742

`or(char[3], A272868(A038722(n+1)-1))`
-/

namespace A293171.P11516030831758517742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A272868 (A038722 (n + 1) - 1).toNat)

end

end A293171.P11516030831758517742

/-! ## A293171.P1533091186892932277

`A007318(C(n, 2))*A272868(A061579(n))`
-/

namespace A293171.P1533091186892932277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A272868 (A061579 n).toNat

end

end A293171.P1533091186892932277

/-! ## A293171.P13526735504972373101

`A007318(∑[n])*A272868(A038722(n+1)-1)`
-/

namespace A293171.P13526735504972373101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A272868 (A038722 (n + 1) - 1).toNat

end

end A293171.P13526735504972373101

/-! ## A293171.P6403329478296618431

`A272868(A038722(n+1)-1)%A000032(n+2)`
-/

namespace A293171.P6403329478296618431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272868 (A038722 (n + 1) - 1).toNat) (A000032 (n + 2))

end

end A293171.P6403329478296618431

/-! ## A293171.P11408691815157583131

`A272868(A038722(n+1)-1)^A014963(4*n+2)`
-/

namespace A293171.P11408691815157583131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272868 (A038722 (n + 1) - 1).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A293171.P11408691815157583131

/-! ## A293171.P8494330395149237276

`A014963(40*(n+1))*A272868(A038722(n+1)-1)`
-/

namespace A293171.P8494330395149237276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (40 * (n + 1)) * A272868 (A038722 (n + 1) - 1).toNat

end

end A293171.P8494330395149237276

/-!
# A293172: Triangle read by rows: T(n,k) = number of colored weighted Motzkin paths ending at (n,k).

The programs for A293172, there is no canonical definition to state claims against.
-/

/-! ## A293172.P9099484763921202504

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A111418(n)`
-/

namespace A293172.P9099484763921202504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A111418 n : ℚ)

end

end A293172.P9099484763921202504

/-! ## A293172.P2231290242679655014

`A038207(∑[char[∑[n]]]²+C(comp[∑[n]]-n, 2)+n)`
-/

namespace A293172.P2231290242679655014
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n))

end

end A293172.P2231290242679655014

/-! ## A293172.P9519670220164262699

`C(∑[2*char[∑[n]]]-1, C(comp[∑[n]]-n, 2)-(n+1))*A000010(2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A293172.P9519670220164262699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A293172.P9519670220164262699

/-! ## A293172.P13830588340713167731

`A193791(A292565(n+1))`
-/

namespace A293172.P13830588340713167731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (A292565 (n + 1)).toNat

end

end A293172.P13830588340713167731

/-! ## A293172.P39239229996518897

`A111418(n)*A130321(n)`
-/

namespace A293172.P39239229996518897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 n * A130321 n

end

end A293172.P39239229996518897

/-! ## A293172.P4395866316895943380

`abs(A113187(n)*A130321(n))`
-/

namespace A293172.P4395866316895943380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113187 n * A130321 n|

end

end A293172.P4395866316895943380

/-! ## A293172.P9418345399556292506

`sqrt(A262616(n))*A111418(n)`
-/

namespace A293172.P9418345399556292506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A111418 n : ℝ)

end

end A293172.P9418345399556292506

/-! ## A293172.P12228563658604072131

`2^A025581(n)*A111418(n)`
-/

namespace A293172.P12228563658604072131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A111418 n : ℚ)

end

end A293172.P12228563658604072131

/-!
# A293174: Markoff spectrum N^(2)(Lambda).

The programs for A293174, there is no canonical definition to state claims against.
-/

/-! ## A293174.P1024003892427687525

`A325363(A008108(n))`
-/

namespace A293174.P1024003892427687525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A008108 n).toNat

end

end A293174.P1024003892427687525

/-!
# A293175: Integers with precisely six partitions into sums of four squares of nonnegative numbers.

The programs for A293175, there is no canonical definition to state claims against.
-/

/-! ## A293175.P751514199530087913

`eq[6, A002635(n)]`
-/

namespace A293175.P751514199530087913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293175.P751514199530087913

/-! ## A293175.P10601825457599418851

`eq[6, A025428(n)+A000164(n)]`
-/

namespace A293175.P10601825457599418851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293175.P10601825457599418851

/-! ## A293175.P10178920906073186581

`eq[A025429(n)+6, A000174(n)]`
-/

namespace A293175.P10178920906073186581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293175.P10178920906073186581

/-! ## A293175.P3549286512716517357

`eq[A000174(n), A020715(A025429(n))]`
-/

namespace A293175.P3549286512716517357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293175.P3549286512716517357

/-! ## A293175.P15090713196941629903

`eq[5, A233583(A000174(n)-A025429(n))]`
-/

namespace A293175.P15090713196941629903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293175.P15090713196941629903

/-!
# A293176: Irregular triangle read by rows: T(n,k) = number of numerical semigroups of genus n with k even gaps.

The programs for A293176, there is no canonical definition to state claims against.
-/

/-! ## A293176.P794309283924006752

`gcd(A008480(A002083(n+1)), A065187(n+1))`
-/

namespace A293176.P794309283924006752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008480 (A002083 (n + 1)).toNat) (A065187 (n + 1))

end

end A293176.P794309283924006752

/-! ## A293176.P15409389326739631192

`gcd(∏{p}[n+1, 1-#], A056239(A189076(n)))`
-/

namespace A293176.P15409389326739631192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A056239 (A189076 n).toNat)

end

end A293176.P15409389326739631192

/-! ## A293176.P1780341949013983398

`A227350(A222334(∑[A016777(n)]))`
-/

namespace A293176.P1780341949013983398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A222334 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A293176.P1780341949013983398

/-! ## A293176.P8245072224723378982

`gcd(A056239(A189076(n)), A173557(n+1))`
-/

namespace A293176.P8245072224723378982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (A189076 n).toNat) (A173557 (n + 1))

end

end A293176.P8245072224723378982

/-! ## A293176.P303450616446316657

`A000120(A357135(3*n+2)+A331572(2*n))`
-/

namespace A293176.P303450616446316657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A357135 (3 * n + 2) + A331572 (2 * n)).toNat

end

end A293176.P303450616446316657

/-!
# A293177: Triangle read by rows: T(m,n) = number of maximal independent sets in m X n rectangular grid graph (m>=1, 1<=n<=m).

The programs for A293177, there is no canonical definition to state claims against.
-/

/-! ## A293177.P16500407567142937804

`A197054(A245300(n)+A000265(A000079(n)))`
-/

namespace A293177.P16500407567142937804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A245300 n + A000265 (A000079 n).toNat).toNat

end

end A293177.P16500407567142937804

/-! ## A293177.P12418671918058551423

`A197054(A245300(n)+A014963(A280154(n)))`
-/

namespace A293177.P12418671918058551423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A245300 n + A014963 (A280154 n).toNat).toNat

end

end A293177.P12418671918058551423

/-! ## A293177.P2880818074875269402

`A197054(A187829(n+1)+A245300(n)-n)`
-/

namespace A293177.P2880818074875269402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A187829 (n + 1) + (A245300 n - (n : ℤ))).toNat

end

end A293177.P2880818074875269402

/-! ## A293177.P12737474410753926072

`A197054(A245300(n)+Δ[A187829(n+1)])`
-/

namespace A293177.P12737474410753926072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A245300 n + (f1 (n + 1) - f1 n)).toNat

end

end A293177.P12737474410753926072

/-!
# A293181: Irregular triangle read by rows: T(n,k) is the number of k-partitions of {1..2n} that are invariant under a permutation consisting of n 2-cycles (1 <= k <= 2n).

The programs for A293181, there is no canonical definition to state claims against.
-/

/-! ## A293181.P15687598142374696149

`A304972(A053187(n)+1+n)`
-/

namespace A293181.P15687598142374696149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (A053187 n + 1 + (n : ℤ)).toNat

end

end A293181.P15687598142374696149

/-! ## A293181.P4805682786962805196

`A304972(A000194(n)²+1+n)`
-/

namespace A293181.P4805682786962805196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (A000194 n ^ 2 + 1 + (n : ℤ)).toNat

end

end A293181.P4805682786962805196

/-! ## A293181.P1586529375039724503

`A304972(A007607(n+1))`
-/

namespace A293181.P1586529375039724503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (A007607 (n + 1)).toNat

end

end A293181.P1586529375039724503

/-! ## A293181.P18252584677315836889

`A304972(A162917(n+1)+1)`
-/

namespace A293181.P18252584677315836889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (A162917 (n + 1) + 1).toNat

end

end A293181.P18252584677315836889

/-! ## A293181.P5095602426150240949

`A304972(A116942(2*n+1)+1)`
-/

namespace A293181.P5095602426150240949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (A116942 (2 * n + 1) + 1).toNat

end

end A293181.P5095602426150240949

/-! ## A293181.P7709134075180973231

`A304972(A162917(n+2))`
-/

namespace A293181.P7709134075180973231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (A162917 (n + 2)).toNat

end

end A293181.P7709134075180973231

/-! ## A293181.P13073817431836695319

`A304972(A116942(2*n+3))`
-/

namespace A293181.P13073817431836695319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (A116942 (2 * n + 3)).toNat

end

end A293181.P13073817431836695319

/-!
# A293183: Numbers k such that bsigma(k) = bsigma(k+1), where bsigma(k) is the sum of the bi-unitary divisors of k (A188999).

The programs for A293183, there is no canonical definition to state claims against.
-/

/-! ## A293183.P15495750800741388251

`A306985(lt[A144959(n), A003418(n)])`
-/

namespace A293183.P15495750800741388251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306985 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293183.P15495750800741388251

/-! ## A293183.P5879078062948737885

`A306985(lt[A054861(n), A071295(2*n)])`
-/

namespace A293183.P5879078062948737885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306985 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293183.P5879078062948737885

/-! ## A293183.P12108728605630098997

`A306985(A077168(n))`
-/

namespace A293183.P12108728605630098997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306985 (A077168 n).toNat

end

end A293183.P12108728605630098997

/-! ## A293183.P696180197282978725

`A306985(A035175(2^n))`
-/

namespace A293183.P696180197282978725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306985 (A035175 (2 ^ n)).toNat

end

end A293183.P696180197282978725

/-! ## A293183.P12668586480260121185

`A306985(A035189(2^n))`
-/

namespace A293183.P12668586480260121185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306985 (A035189 (2 ^ n)).toNat

end

end A293183.P12668586480260121185

/-!
# A293184: Numbers k such that bphi(k) = bphi(k+1), where bphi(k) is the bi-unitary analog of Euler's totient function (A116550).

The programs for A293184, there is no canonical definition to state claims against.
-/

/-! ## A293184.P1363546522223812408

`eq[A116550(n+1), A116550(n+2)]+1`
-/

namespace A293184.P1363546522223812408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A293184.P1363546522223812408

/-!
# A293185: Bi-unitary highly composite numbers: where the number of bi-unitary divisors of n (A286324) increases to a record.

The programs for A293185, there is no canonical definition to state claims against.
-/

/-! ## A293185.P16236004982818998632

`A292984(n+1)%A077817(n)`
-/

namespace A293185.P16236004982818998632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292984 (n + 1)) (A077817 (n + 11))

end

end A293185.P16236004982818998632

/-!
# A293187: Bi-unitary 3-abundant numbers: numbers k such that bsigma(k) > 3*k, where bsigma is the sum of the bi-unitary divisors function (A188999).

The programs for A293187, there is no canonical definition to state claims against.
-/

/-! ## A293187.P12455558508878220934

`A019428(A330353(n+1))*A300664(n+1)`
-/

namespace A293187.P12455558508878220934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A330353 (n + 1)).toNat * A300664 (n + 1)

end

end A293187.P12455558508878220934

/-! ## A293187.P3427577273632150243

`A300664(n+1)*A371706(A107689(n+1))`
-/

namespace A293187.P3427577273632150243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300664 (n + 1) * A371706 (A107689 (n + 1)).toNat

end

end A293187.P3427577273632150243

/-!
# A293188: Unitary pseudoperfect numbers: numbers that equal to the sum of a subset of their aliquot unitary divisors.

The programs for A293188, there is no canonical definition to state claims against.
-/

/-! ## A293188.P8774602192622545932

`lt[1, A349542(n)]`
-/

namespace A293188.P8774602192622545932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293188.P8774602192622545932

/-! ## A293188.P419100771205800064

`eq[1, A054977(A349542(n)-1)]`
-/

namespace A293188.P419100771205800064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A349542 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293188.P419100771205800064

/-! ## A293188.P15693275432953106149

`eq[1, A057427(A349542(n)-1)]`
-/

namespace A293188.P15693275432953106149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A349542 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293188.P15693275432953106149

/-! ## A293188.P12111613178972161032

`eq[1, A158388(A349542(n)-1)]`
-/

namespace A293188.P12111613178972161032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A349542 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293188.P12111613178972161032

/-! ## A293188.P8938831964974307912

`A290466(A123578(A090937(n+1)))`
-/

namespace A293188.P8938831964974307912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (A123578 (A090937 (n + 1)).toNat).toNat

end

end A293188.P8938831964974307912

/-! ## A293188.P4678106660268589545

`∩[A153763(n+1), A290466(n+1)]`
-/

namespace A293188.P4678106660268589545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293188.P4678106660268589545

/-!
# A293191: a(n) = n! * [x^n] exp(n*arcsin(x)).

The programs for A293191, there is no canonical definition to state claims against.
-/

/-! ## A293191.P7239717369693685958

`A028310(n)*A227464(A028310(n))`
-/

namespace A293191.P7239717369693685958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A227464 (A028310 n).toNat

end

end A293191.P7239717369693685958

/-! ## A293191.P17427220965666085052

`A007094(round(1/acot(n))*A111088(n))`
-/

namespace A293191.P17427220965666085052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A111088 n).toNat

end

end A293191.P17427220965666085052

/-!
# A293192: a(n) = n! * [x^n] exp(n*arctan(x)).

The programs for A293192, there is no canonical definition to state claims against.
-/

/-! ## A293192.P4577132534961685421

`A028310(n)*A334854(A028310(n))`
-/

namespace A293192.P4577132534961685421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A334854 (A028310 n).toNat

end

end A293192.P4577132534961685421

/-! ## A293192.P11178463841822951448

`(A000007(n)+n)*A334854(A000007(n)+n)`
-/

namespace A293192.P11178463841822951448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A334854 (A000007 n + (n : ℤ)).toNat

end

end A293192.P11178463841822951448

/-!
# A293193: a(n) = n! * [x^n] exp(n*arctanh(x)).

The programs for A293193, there is no canonical definition to state claims against.
-/

/-! ## A293193.P2712291344034909907

`A028310(n)*A227466(A028310(n))`
-/

namespace A293193.P2712291344034909907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A227466 (A028310 n).toNat

end

end A293193.P2712291344034909907

/-! ## A293193.P3048769931019487529

`A006882(n)*A326841(A323682(n))`
-/

namespace A293193.P3048769931019487529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A326841 (A323682 n).toNat

end

end A293193.P3048769931019487529

/-!
# A293194: Primes of the form 2^q * 3^r * 5^s - 1.

The programs for A293194, there is no canonical definition to state claims against.
-/

/-! ## A293194.P15274829126095535344

`∩[A051037(n+1)-1, A219669(n+1)]`
-/

namespace A293194.P15274829126095535344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293194.P15274829126095535344

/-! ## A293194.P18234764349119051576

`∩[A051037(n+1)-1, A219697(n+1)]`
-/

namespace A293194.P18234764349119051576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293194.P18234764349119051576

/-! ## A293194.P14753423409635979840

`∩[A219697(n+1), A219794(n)+a(n-1)]` with `a(0)=0`
-/

namespace A293194.P14753423409635979840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A219794 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293194.P14753423409635979840

/-! ## A293194.P9317817277260545278

`p?[∑[A219794(n+1)]]`
-/

namespace A293194.P9317817277260545278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293194.P9317817277260545278

/-! ## A293194.P12517218270331273636

`p?[A051037(n+1)-1]`
-/

namespace A293194.P12517218270331273636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293194.P12517218270331273636

/-! ## A293194.P15587825553681904377

`p?[A219794(n)+a(n-1)]` with `a(0)=0`
-/

namespace A293194.P15587825553681904377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A219794 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293194.P15587825553681904377

/-! ## A293194.P9377842736714286726

`∩[A347977(n+1), A042988(n)]`
-/

namespace A293194.P9377842736714286726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293194.P9377842736714286726

/-! ## A293194.P12587906026498214905

`p?[lt[A061395(n+1), 4]]`
-/

namespace A293194.P12587906026498214905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A293194.P12587906026498214905

/-!
# A293195: E.g.f.: Product_{m>0} (1+x^m+x^(2*m)/2!+x^(3*m)/3!).

The programs for A293195, there is no canonical definition to state claims against.
-/

/-! ## A293195.P9923414041525931995

`A293135(∑[n+3]+n+3)`
-/

namespace A293195.P9923414041525931995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293195.P9923414041525931995

/-! ## A293195.P10636171397757577697

`gcd(A000038(n), A293135(A046691(n+2)))`
-/

namespace A293195.P10636171397757577697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293135 (A046691 (n + 2)).toNat)

end

end A293195.P10636171397757577697

/-! ## A293195.P17272478869167853848

`lcm(A033999(n), A293135(A046691(n+2)))`
-/

namespace A293195.P17272478869167853848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A293135 (A046691 (n + 2)).toNat)

end

end A293195.P17272478869167853848

/-! ## A293195.P4074941808864152872

`xor(A000038(n+2), A293135(A046691(n+2)))`
-/

namespace A293195.P4074941808864152872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 2)) (A293135 (A046691 (n + 2)).toNat)

end

end A293195.P4074941808864152872

/-! ## A293195.P13082754351982144006

`A293135(A046691(n+2))+C(A067514(n+1), n+1)`
-/

namespace A293195.P13082754351982144006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A046691 (n + 2)).toNat + (Nat.choose (A067514 (n + 1)).toNat (n + 1) : ℤ)

end

end A293195.P13082754351982144006

/-!
# A293196: E.g.f.: Product_{m>0} (1+x^m+x^(2*m)/2!+x^(3*m)/3!+x^(4*m)/4!).

The programs for A293196, there is no canonical definition to state claims against.
-/

/-! ## A293196.P9399947608861779097

`A293135(A052905(n+2))`
-/

namespace A293196.P9399947608861779097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A052905 (n + 2)).toNat

end

end A293196.P9399947608861779097

/-! ## A293196.P201315186448775453

`A293135(eq[4, A025581(n)])`
-/

namespace A293196.P201315186448775453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293196.P201315186448775453

/-! ## A293196.P2594017869474923413

`A293135(A046691(n+3)-1)`
-/

namespace A293196.P2594017869474923413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A046691 (n + 3) - 1).toNat

end

end A293196.P2594017869474923413

/-! ## A293196.P7388068480619572182

`A293135(A100542(n+5)-5)`
-/

namespace A293196.P7388068480619572182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A100542 (n + 5) - 5).toNat

end

end A293196.P7388068480619572182

/-! ## A293196.P15058463433577201062

`A293135(A161680(n+6)-5)`
-/

namespace A293196.P15058463433577201062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A161680 (n + 6) - 5).toNat

end

end A293196.P15058463433577201062

/-! ## A293196.P3122042671311007518

`A293135(eq[5, A004736(n+1)])`
-/

namespace A293196.P3122042671311007518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293196.P3122042671311007518

/-! ## A293196.P18360530814585286538

`A293135(2*n+A167614(n+2)+1)`
-/

namespace A293196.P18360530814585286538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 ((2 * n : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A293196.P18360530814585286538

/-!
# A293197: E.g.f.: Product_{m>0} (1+x^m+x^(2*m)/2!+x^(3*m)/3!+x^(4*m)/4!+x^(5*m)/5!).

The programs for A293197, there is no canonical definition to state claims against.
-/

/-! ## A293197.P5966349483583263373

`A293135(A055999(n+3))`
-/

namespace A293197.P5966349483583263373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (A055999 (n + 3)).toNat

end

end A293197.P5966349483583263373

/-! ## A293197.P5671082198076274909

`A293135(eq[5, A025581(n)])`
-/

namespace A293197.P5671082198076274909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293197.P5671082198076274909

/-! ## A293197.P6949719678344763853

`A293135(eq[11, A099375(n)])`
-/

namespace A293197.P6949719678344763853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293197.P6949719678344763853

/-! ## A293197.P17022487819652666394

`A293135(Δ[A026054(n+3)])`
-/

namespace A293197.P17022487819652666394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (f1 (n + 1) - f1 n).toNat

end

end A293197.P17022487819652666394

/-! ## A293197.P5896420301426753930

`A293135(eq[6, A004736(n+1)])`
-/

namespace A293197.P5896420301426753930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293197.P5896420301426753930

/-!
# A293199: Primes of the form 2^q * 3^r * 7^s - 1.

The programs for A293199, there is no canonical definition to state claims against.
-/

/-! ## A293199.P16733213109224068534

`p?[A108319(n+1)-1]`
-/

namespace A293199.P16733213109224068534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293199.P16733213109224068534

/-! ## A293199.P2176273204734332388

`p?[A342950(n+1)-1]`
-/

namespace A293199.P2176273204734332388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293199.P2176273204734332388

/-! ## A293199.P12389972948001795541

`∩[A042986(n+1), A347977(n+1)]`
-/

namespace A293199.P12389972948001795541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293199.P12389972948001795541

/-! ## A293199.P501178193555410636

`∩[A347977(n+1), A001068(n)]`
-/

namespace A293199.P501178193555410636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293199.P501178193555410636

/-! ## A293199.P2103298748764683527

`∩[A347977(n+1), A272576(n)]`
-/

namespace A293199.P2103298748764683527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293199.P2103298748764683527

