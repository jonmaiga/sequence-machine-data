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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A026701: Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026692.

The programs for A026701, there is no canonical definition to state claims against.
-/

/-! ## A026701.P17530937397470851887

`∑[A026699(n)]`
-/

namespace A026701.P17530937397470851887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026701.P17530937397470851887

/-! ## A026701.P42803618212060941

`A026699(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A026701.P42803618212060941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026699 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A026701.P42803618212060941

/-! ## A026701.P5125846456629574516

`∑[A026995(n)/(n/2+1)]`
-/

namespace A026701.P5125846456629574516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026995 n : ℚ) / ((n : ℚ) / 2 + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026701.P5125846456629574516

/-! ## A026701.P14526464295818137442

`record[∑[A026692(n+1)]/A048505(n)]`
-/

namespace A026701.P14526464295818137442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A048505 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026701.P14526464295818137442

/-! ## A026701.P11758531992871022771

`A000027(A026699(n)+a(n-1))%A000594(n+1)` with `a(0)=1`
-/

namespace A026701.P11758531992871022771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000027 (A026699 n + a (n - 1)).toNat) (A000594 (n + 1))

end

end A026701.P11758531992871022771

/-!
# A026702: a(n) = Sum_{k=0..floor(n/2)} T(n-k, k), T given by A026692.

The programs for A026702, there is no canonical definition to state claims against.
-/

/-! ## A026702.P8366461873555987429

`A342441(A095008(n+1))+A342237(n+1)`
-/

namespace A026702.P8366461873555987429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (A095008 (n + 1)).toNat + A342237 (n + 1)

end

end A026702.P8366461873555987429

/-! ## A026702.P8839091625584091653

`floor(root(A232005(n+2), 5))`
-/

namespace A026702.P8839091625584091653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232005 (n + 2) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A026702.P8839091625584091653

/-! ## A026702.P6673279540632157522

`A083277(A071724(n))`
-/

namespace A026702.P6673279540632157522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A071724 n).toNat

end

end A026702.P6673279540632157522

/-! ## A026702.P5164861494579276236

`A204164(A006930(n))`
-/

namespace A026702.P5164861494579276236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A006930 n).toNat

end

end A026702.P5164861494579276236

/-! ## A026702.P10627988653841405881

`A111651(A117758(n))`
-/

namespace A026702.P10627988653841405881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A117758 n).toNat

end

end A026702.P10627988653841405881

/-!
# A026703: Triangular array T read by rows: T(n,1) = T(n,n) = 1, T(n,k) = T(n-1, k-1) + T(n-2,k-1) + T(n-1,k) if k=(n/2) or k=((n+1)/2), otherwise T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026703, there is no canonical definition to state claims against.
-/

/-! ## A026703.P16613308774215851336

`A038575(A203610(n+1))+1`
-/

namespace A026703.P16613308774215851336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (A203610 (n + 1)).toNat + 1

end

end A026703.P16613308774215851336

/-! ## A026703.P13113023836925272423

`A302840(A008288(n))%A355791(3*(n+1))`
-/

namespace A026703.P13113023836925272423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302840 (A008288 n).toNat) (A355791 (3 * (n + 1)))

end

end A026703.P13113023836925272423

/-! ## A026703.P7476847079726691588

`A302840(A008288(n)%A379096(3*n+2))`
-/

namespace A026703.P7476847079726691588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302840 (Int.tmod (A008288 n) (A379096 (3 * n + 2))).toNat

end

end A026703.P7476847079726691588

/-! ## A026703.P10633011784560469489

`A087845(A081580(n))`
-/

namespace A026703.P10633011784560469489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A081580 n).toNat

end

end A026703.P10633011784560469489

/-! ## A026703.P3593539029984075559

`A111944(A395571(n))`
-/

namespace A026703.P3593539029984075559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (A395571 n).toNat

end

end A026703.P3593539029984075559

/-!
# A026704: T(2n,n), T given by A026703.

The programs for A026704, there is no canonical definition to state claims against.
-/

/-! ## A026704.P13068696649041231109

`A026709(2*n)`
-/

namespace A026704.P13068696649041231109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (2 * n)

end

end A026704.P13068696649041231109

/-! ## A026704.P4048497111497297137

`or(1, A026709(A005843(n)))`
-/

namespace A026704.P4048497111497297137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026709 (A005843 n).toNat)

end

end A026704.P4048497111497297137

/-! ## A026704.P15587370705939545010

`record[A026709(A026741(n)+1)]`
-/

namespace A026704.P15587370705939545010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P15587370705939545010

/-! ## A026704.P9682269134005710726

`record[A026709(A106617(n)+1)]`
-/

namespace A026704.P9682269134005710726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (A106617 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P9682269134005710726

/-! ## A026704.P5118186523591631926

`record[A026709(n)/A033999(n)]`
-/

namespace A026704.P5118186523591631926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P5118186523591631926

/-! ## A026704.P11517597871692403598

`record[A026709(n)/A130599(n)]`
-/

namespace A026704.P11517597871692403598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 n : ℚ) / (A130599 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P11517597871692403598

/-! ## A026704.P9320799261997179412

`record[A026709(lcm(n, A056594(n)))]`
-/

namespace A026704.P9320799261997179412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P9320799261997179412

/-! ## A026704.P12466859746621724072

`record[A026709(A000265(n+1)-1)]`
-/

namespace A026704.P12466859746621724072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P12466859746621724072

/-! ## A026704.P12238416420635860355

`record[A026709(n)/A001511(n+1)]`
-/

namespace A026704.P12238416420635860355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P12238416420635860355

/-! ## A026704.P151693662294519129

`record[A026709(n)/A037227(n+1)]`
-/

namespace A026704.P151693662294519129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 n : ℚ) / (A037227 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P151693662294519129

/-! ## A026704.P16981286074048045487

`record[A026709(n)/Δ[A001651(n+1)]]`
-/

namespace A026704.P16981286074048045487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P16981286074048045487

/-! ## A026704.P14254058722469823172

`record[A026709(n+1-A001511(n+1))]`
-/

namespace A026704.P14254058722469823172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 ((n + 1 : ℤ) - A001511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P14254058722469823172

/-! ## A026704.P16267655937822976379

`A026709(A005843(n))^A057428(n)²`
-/

namespace A026704.P16267655937822976379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 (A005843 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A026704.P16267655937822976379

/-! ## A026704.P13987478178389348646

`A026709(A005843(n))^A019425(A019425(n))`
-/

namespace A026704.P13987478178389348646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 (A005843 n).toNat : ℚ) ^ (A019425 (A019425 n).toNat : ℤ)

end

end A026704.P13987478178389348646

/-! ## A026704.P11902362061368051058

`record[Δ[A026709(n+1)]-A026709(n+1)]`
-/

namespace A026704.P11902362061368051058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026704.P11902362061368051058

/-! ## A026704.P1052456015247310970

`A026709(A004277(n))/A007318(∑[n])`
-/

namespace A026704.P1052456015247310970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 (A004277 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A026704.P1052456015247310970

/-! ## A026704.P11961904618250831962

`A026709(A005843(n))%A016090(n+1)`
-/

namespace A026704.P11961904618250831962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026709 (A005843 n).toNat) (A016090 (n + 1))

end

end A026704.P11961904618250831962

/-!
# A026705: T(2n,n-1), T given by A026703.

The programs for A026705, there is no canonical definition to state claims against.
-/

/-! ## A026705.P6417254735910871951

`Δ[A026707(n+1)-∑[A026704(n)]]`
-/

namespace A026705.P6417254735910871951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026707 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026705.P6417254735910871951

/-! ## A026705.P2079301366073413670

`Δ[A026707(n+1)]-A026704(n+1)`
-/

namespace A026705.P2079301366073413670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026704 (n + 1)

end

end A026705.P2079301366073413670

/-! ## A026705.P10891126023145319152

`A026707(n+2)-(A026707(n+1)+A026704(n+1))`
-/

namespace A026705.P10891126023145319152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026707 (n + 2) - (A026707 (n + 1) + A026704 (n + 1))

end

end A026705.P10891126023145319152

/-! ## A026705.P10570268318731009528

`A026703(∑[4*(n+1)])`
-/

namespace A026705.P10570268318731009528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026705.P10570268318731009528

/-! ## A026705.P18180813868919047764

`record[A026703(A265225(n))]`
-/

namespace A026705.P18180813868919047764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026705.P18180813868919047764

/-! ## A026705.P14936993624335154963

`record[A026703(abs(A110326(n))+1)]`
-/

namespace A026705.P14936993624335154963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (|A110326 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026705.P14936993624335154963

/-! ## A026705.P364340398416655289

`record[A026703(1-A110326(n+1))]`
-/

namespace A026705.P364340398416655289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (1 - A110326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026705.P364340398416655289

/-!
# A026706: T(2n,n-2), T given by A026703.

The programs for A026706, there is no canonical definition to state claims against.
-/

/-! ## A026706.P2295282304147293849

`A026708(n+3)-A026705(n+2)`
-/

namespace A026706.P2295282304147293849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026708 (n + 3) - A026705 (n + 2)

end

end A026706.P2295282304147293849

/-! ## A026706.P5714398711057278434

`Δ[A026708(n+2)]-A026707(n+2)`
-/

namespace A026706.P5714398711057278434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026707 (n + 2)

end

end A026706.P5714398711057278434

/-! ## A026706.P14114445649884529736

`A026708(n+3)-(A026708(n+2)+A026707(n+2))`
-/

namespace A026706.P14114445649884529736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026708 (n + 3) - (A026708 (n + 2) + A026707 (n + 2))

end

end A026706.P14114445649884529736

/-! ## A026706.P4173639747281064246

`A026703(A142463(n+2))`
-/

namespace A026706.P4173639747281064246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (A142463 (n + 2)).toNat

end

end A026706.P4173639747281064246

/-! ## A026706.P1894533453278685786

`record[A026703(abs(A110326(n)))]`
-/

namespace A026706.P1894533453278685786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 |A110326 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026706.P1894533453278685786

/-! ## A026706.P14698067227898063843

`record[A026703(A053439(n)+n)]`
-/

namespace A026706.P14698067227898063843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (A053439 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026706.P14698067227898063843

/-! ## A026706.P13430082547647884315

`A026703(A090288(n+1)+1)`
-/

namespace A026706.P13430082547647884315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (A090288 (n + 1) + 1).toNat

end

end A026706.P13430082547647884315

/-! ## A026706.P8312888693855309014

`record[A026703(A116940(A000265(n+1)))]`
-/

namespace A026706.P8312888693855309014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (A116940 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026706.P8312888693855309014

/-!
# A026707: a(n) = T(2n-1,n-1), T given by A026703.

The programs for A026707, there is no canonical definition to state claims against.
-/

/-! ## A026707.P400445607528677806

`A026709(Δ[n²])`
-/

namespace A026707.P400445607528677806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026707.P400445607528677806

/-! ## A026707.P6682061794666911091

`Δ[A026704(n)/2]`
-/

namespace A026707.P6682061794666911091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026704 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026707.P6682061794666911091

/-! ## A026707.P12217048689262263931

`Δ[A026709(2*n)/2]`
-/

namespace A026707.P12217048689262263931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026707.P12217048689262263931

/-! ## A026707.P7780776466587113281

`record[A026709(n*n%2)]`
-/

namespace A026707.P7780776466587113281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026707.P7780776466587113281

/-! ## A026707.P7753665895553278530

`record[A026709(A026741(n))]`
-/

namespace A026707.P7753665895553278530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026707.P7753665895553278530

/-! ## A026707.P10839866199552409039

`record[A026709(A106617(n))]`
-/

namespace A026707.P10839866199552409039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (A106617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026707.P10839866199552409039

/-! ## A026707.P4788643001551207265

`record[A026709(A000265(n+1))]`
-/

namespace A026707.P4788643001551207265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026707.P4788643001551207265

/-! ## A026707.P249978840249990760

`record[A026709(A033999(n)+n)]`
-/

namespace A026707.P249978840249990760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026707.P249978840249990760

/-! ## A026707.P12123530645562680642

`record[A026709(n)/A130599(n+1)]`
-/

namespace A026707.P12123530645562680642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026709 n : ℚ) / (A130599 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026707.P12123530645562680642

/-! ## A026707.P13890214749709605240

`record[lcm(A026709(n+1), A056594(n))]`
-/

namespace A026707.P13890214749709605240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026709 (n + 1)) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026707.P13890214749709605240

/-! ## A026707.P14655674022757410205

`Δ[A026709(2*n)]-A026709(2*n+1)`
-/

namespace A026707.P14655674022757410205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026709 (2 * n + 1)

end

end A026707.P14655674022757410205

/-!
# A026708: T(2n-1,n-2), T given by A026703.

The programs for A026708, there is no canonical definition to state claims against.
-/

/-! ## A026708.P4528897741035129314

`A026705(n+2)-A026707(n+2)`
-/

namespace A026708.P4528897741035129314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026705 (n + 2) - A026707 (n + 2)

end

end A026708.P4528897741035129314

/-! ## A026708.P1035145391916510482

`A026705(n+2)-A026709(2*n+3)`
-/

namespace A026708.P1035145391916510482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026705 (n + 2) - A026709 (2 * n + 3)

end

end A026708.P1035145391916510482

/-! ## A026708.P8136623046458082860

`A026705(n+2)%A026709(A028310(2*n+3))`
-/

namespace A026708.P8136623046458082860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026705 (n + 2)) (A026709 (A028310 (2 * n + 3)).toNat)

end

end A026708.P8136623046458082860

/-! ## A026708.P17654460180438045471

`A026705(A154271(2*(n+1))+2+n)%A026707(n+2)`
-/

namespace A026708.P17654460180438045471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026705 (A154271 (2 * (n + 1)) + 2 + (n : ℤ)).toNat) (A026707 (n + 2))

end

end A026708.P17654460180438045471

/-! ## A026708.P4442206078741538784

`A026705(A064989(C(2, n+2)+1)+n+1)%A026707(n+2)`
-/

namespace A026708.P4442206078741538784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026705 (A064989 (Nat.choose 2 (n + 2) + 1) + (n + 1 : ℤ)).toNat) (A026707 (n + 2))

end

end A026708.P4442206078741538784

/-! ## A026708.P5397076047178091564

`A026703((n+1)²+(n+3)²)`
-/

namespace A026708.P5397076047178091564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A026708.P5397076047178091564

/-! ## A026708.P12124565232653864886

`record[A026703(A053439(n+1)-1)]`
-/

namespace A026708.P12124565232653864886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (A053439 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026708.P12124565232653864886

/-!
# A026709: T(n,[ n/2 ]), T given by A026703.

The programs for A026709, there is no canonical definition to state claims against.
-/

/-! ## A026709.P7761440087508001358

`A026703(∑[or(1, n)])`
-/

namespace A026709.P7761440087508001358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026709.P7761440087508001358

/-! ## A026709.P5470537038274467407

`A026703(∑[char[2*n]+n])`
-/

namespace A026709.P5470537038274467407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026709.P5470537038274467407

/-! ## A026709.P5826161511588715110

`A026703(A080827(n+1))%A062572(n+1)`
-/

namespace A026709.P5826161511588715110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026703 (A080827 (n + 1)).toNat) (A062572 (n + 1))

end

end A026709.P5826161511588715110

/-!
# A026710: T(n,1) + T(n,2) + ... + T(n,n), T given by A026703.

The programs for A026710, there is no canonical definition to state claims against.
-/

/-! ## A026710.P3293633924894399734

`2/(n+2)*A027256(n)`
-/

namespace A026710.P3293633924894399734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A027256 n : ℚ)

end

end A026710.P3293633924894399734

/-! ## A026710.P12308285622561684559

`A004277(A027256(n))/(n+2)`
-/

namespace A026710.P12308285622561684559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A027256 n).toNat : ℚ) / (n + 2 : ℚ)

end

end A026710.P12308285622561684559

/-! ## A026710.P13314095495042861425

`A008458(A027256(n))/A008486(n+2)`
-/

namespace A026710.P13314095495042861425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A027256 n).toNat : ℚ) / (A008486 (n + 2) : ℚ)

end

end A026710.P13314095495042861425

/-! ## A026710.P13376238157722602036

`A278950(A321142(n)+A094005(n+1))`
-/

namespace A026710.P13376238157722602036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278950 (A321142 n + A094005 (n + 1)).toNat

end

end A026710.P13376238157722602036

/-!
# A026711: a(n) = T(n,0) + T(n,1) + ... + T(n,[ n/2 ]), T given by A026703.

The programs for A026711, there is no canonical definition to state claims against.
-/

/-! ## A026711.P9146845751519856063

`∏{p}[A134019(n+1), A003056(#)]`
-/

namespace A026711.P9146845751519856063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003056 p

end

end A026711.P9146845751519856063

/-! ## A026711.P6281064554081564662

`A229744(A336416(n)+A042163(n))`
-/

namespace A026711.P6281064554081564662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229744 (A336416 n + A042163 n).toNat

end

end A026711.P6281064554081564662

/-! ## A026711.P5171879936604220216

`A026383(n)-A038698(A333093(n))`
-/

namespace A026711.P5171879936604220216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n - A038698 (A333093 n).toNat

end

end A026711.P5171879936604220216

/-!
# A026712: a(n) = Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026703.

The programs for A026712, there is no canonical definition to state claims against.
-/

/-! ## A026712.P12412167467305032851

`∑[A026710(n+1)]`
-/

namespace A026712.P12412167467305032851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026712.P12412167467305032851

/-! ## A026712.P8681936057584921670

`∑[2/(n+2)*A027256(n)]`
-/

namespace A026712.P8681936057584921670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A027256 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026712.P8681936057584921670

/-! ## A026712.P5604397324793257482

`A026819(A055269(n))`
-/

namespace A026712.P5604397324793257482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A055269 n).toNat

end

end A026712.P5604397324793257482

/-!
# A026713: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], T given by A026703.

The programs for A026713, there is no canonical definition to state claims against.
-/

/-! ## A026713.P5979783880875172558

`A280951(A183857(n+1))`
-/

namespace A026713.P5979783880875172558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A183857 (n + 1)).toNat

end

end A026713.P5979783880875172558

/-! ## A026713.P118080920679130914

`A280951(∑[A247987(n+1)])`
-/

namespace A026713.P118080920679130914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026713.P118080920679130914

/-! ## A026713.P17830509079419791385

`A280951(∑[A289012(n+1)])`
-/

namespace A026713.P17830509079419791385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026713.P17830509079419791385

/-! ## A026713.P17665780807130261967

`A280951(eq[1, A025654(n+1)])`
-/

namespace A026713.P17665780807130261967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026713.P17665780807130261967

/-! ## A026713.P8703565562303586759

`A280951(∑[record[A169594(n+1)]])`
-/

namespace A026713.P8703565562303586759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026713.P8703565562303586759

/-!
# A026714: Triangular array T read by rows: T(n,0)=T(n,n)=1 for n >= 0; for n >= 2 and 1<=k<=n-1, T(n,k)=T(n-1,k-1)+T(n-2,k-1)+T(n-1,k) if k=[ (n-1)/2 ] or k=[ n/2 ] or k=[ (n+2)/2 ], else T(n,k)=T(n-1,k-1)+T(n-1,k).

The programs for A026714, there is no canonical definition to state claims against.
-/

/-! ## A026714.P10761419072347498117

`A008288(n)-A055641(A329228(n+1))`
-/

namespace A026714.P10761419072347498117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A055641 (A329228 (n + 1)).toNat

end

end A026714.P10761419072347498117

/-! ## A026714.P5291904322208754583

`A085723(A152654(n))`
-/

namespace A026714.P5291904322208754583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085723 (A152654 n).toNat

end

end A026714.P5291904322208754583

/-! ## A026714.P2679587232271278865

`A196172(A131235(n))`
-/

namespace A026714.P2679587232271278865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196172 (A131235 n).toNat

end

end A026714.P2679587232271278865

/-! ## A026714.P13649956200321870497

`A196172(A171229(n))`
-/

namespace A026714.P13649956200321870497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196172 (A171229 n).toNat

end

end A026714.P13649956200321870497

/-! ## A026714.P17568682504869453977

`A287355(A081578(n))`
-/

namespace A026714.P17568682504869453977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A081578 n).toNat

end

end A026714.P17568682504869453977

/-!
# A026715: T(2n,n), T given by A026714.

The programs for A026715, there is no canonical definition to state claims against.
-/

/-! ## A026715.P6770519712810904633

`A026720(2*n)`
-/

namespace A026715.P6770519712810904633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (2 * n)

end

end A026715.P6770519712810904633

/-! ## A026715.P16468890882481127286

`record[A026720(A014681(n))]`
-/

namespace A026715.P16468890882481127286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P16468890882481127286

/-! ## A026715.P12428635561979381298

`or(1, A026720(A005843(n)))`
-/

namespace A026715.P12428635561979381298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026720 (A005843 n).toNat)

end

end A026715.P12428635561979381298

/-! ## A026715.P1091011046593361794

`record[A026720(A026741(n)+1)]`
-/

namespace A026715.P1091011046593361794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P1091011046593361794

/-! ## A026715.P17260400404431917473

`record[A026720(n)/A033999(n)]`
-/

namespace A026715.P17260400404431917473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026720 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P17260400404431917473

/-! ## A026715.P14844555553370892916

`record[A026720(n%A109613(n))]`
-/

namespace A026715.P14844555553370892916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (Int.tmod (n : ℤ) (A109613 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P14844555553370892916

/-! ## A026715.P1044291159366437472

`record[A026720(n)/A000034(n)²]`
-/

namespace A026715.P1044291159366437472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026720 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P1044291159366437472

/-! ## A026715.P2123692470859524603

`record[A026720(A000265(n+1)-1)]`
-/

namespace A026715.P2123692470859524603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P2123692470859524603

/-! ## A026715.P15889676491672771982

`record[A026720(n)/(A004442(n)-n)]`
-/

namespace A026715.P15889676491672771982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026720 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P15889676491672771982

/-! ## A026715.P12277660349866819724

`2*A026722(2*n)-A026721(2*n)`
-/

namespace A026715.P12277660349866819724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026722 (2 * n) - A026721 (2 * n)

end

end A026715.P12277660349866819724

/-! ## A026715.P8831597995382229509

`record[Δ[A026720(n+1)]-A026720(n+1)]`
-/

namespace A026715.P8831597995382229509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026715.P8831597995382229509

/-!
# A026716: T(2n,n-1), T given by A026714.

The programs for A026716, there is no canonical definition to state claims against.
-/

/-! ## A026716.P12020471572862515559

`Δ[A026718(n+1)-∑[A026715(n)]]`
-/

namespace A026716.P12020471572862515559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026715 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026718 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026716.P12020471572862515559

/-! ## A026716.P11372947518716003121

`Δ[A026718(n+1)]-A026715(n+1)`
-/

namespace A026716.P11372947518716003121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026715 (n + 1)

end

end A026716.P11372947518716003121

/-! ## A026716.P17305998360978654281

`Δ[A026718(n+1)]-A026720(2*(n+1))`
-/

namespace A026716.P17305998360978654281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026720 (2 * (n + 1))

end

end A026716.P17305998360978654281

/-! ## A026716.P2374180201000340218

`A026718(n+2)-(A026718(n+1)+A026715(n+1))`
-/

namespace A026716.P2374180201000340218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026718 (n + 2) - (A026718 (n + 1) + A026715 (n + 1))

end

end A026716.P2374180201000340218

/-! ## A026716.P17567052213888544621

`A026714(∑[4*(n+1)])`
-/

namespace A026716.P17567052213888544621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026716.P17567052213888544621

/-! ## A026716.P3080185113164961524

`record[A026714(A156678(n+1))]`
-/

namespace A026716.P3080185113164961524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A156678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026716.P3080185113164961524

/-!
# A026717: T(2n,n-2), T given by A026714.

The programs for A026717, there is no canonical definition to state claims against.
-/

/-! ## A026717.P10393732248949908599

`A026719(n+3)-A026716(n+2)`
-/

namespace A026717.P10393732248949908599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026719 (n + 3) - A026716 (n + 2)

end

end A026717.P10393732248949908599

/-! ## A026717.P3213227054870795429

`A026714(A046092(n+2)-1)`
-/

namespace A026717.P3213227054870795429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A046092 (n + 2) - 1).toNat

end

end A026717.P3213227054870795429

/-! ## A026717.P4422483178274089314

`A026714(A181510(n+1)+5)`
-/

namespace A026717.P4422483178274089314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A181510 (n + 1) + 5).toNat

end

end A026717.P4422483178274089314

/-! ## A026717.P10962566610950597129

`record[A026714(A156678(n+1)-1)]`
-/

namespace A026717.P10962566610950597129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A156678 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026717.P10962566610950597129

/-! ## A026717.P16463106533264385895

`A026714(A052905(2*(n+1))-(n-5))`
-/

namespace A026717.P16463106533264385895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A052905 (2 * (n + 1)) - ((n : ℤ) - 5)).toNat

end

end A026717.P16463106533264385895

/-!
# A026718: T(2n-1,n-1), T given by A026714.

The programs for A026718, there is no canonical definition to state claims against.
-/

/-! ## A026718.P8046727795136413201

`A026720(Δ[n²])`
-/

namespace A026718.P8046727795136413201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026718.P8046727795136413201

/-! ## A026718.P15628587369669666502

`Δ[A026715(n)/2]`
-/

namespace A026718.P15628587369669666502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026715 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026718.P15628587369669666502

/-! ## A026718.P17952487258460104473

`Δ[A026720(2*n)/2]`
-/

namespace A026718.P17952487258460104473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026720 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026718.P17952487258460104473

/-! ## A026718.P7703993159313870569

`record[A026720(3^(n%2)+n-1)]`
-/

namespace A026718.P7703993159313870569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 ((3 ^ (n % 2) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026718.P7703993159313870569

/-! ## A026718.P17148321103419606916

`record[A026720(A004442(n))]`
-/

namespace A026718.P17148321103419606916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026718.P17148321103419606916

/-! ## A026718.P10936862844970514779

`record[A026720(A026741(n))]`
-/

namespace A026718.P10936862844970514779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026718.P10936862844970514779

/-! ## A026718.P11659193424373117828

`record[A026720(A000265(n+1))]`
-/

namespace A026718.P11659193424373117828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026718.P11659193424373117828

/-! ## A026718.P4629711445598624115

`record[A026720(A014681(n)+1)]`
-/

namespace A026718.P4629711445598624115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026718.P4629711445598624115

/-! ## A026718.P5368937420684582374

`record[A026720(A033999(n)+n)]`
-/

namespace A026718.P5368937420684582374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026718.P5368937420684582374

/-! ## A026718.P10081693087960060785

`record[A026720(n/A000034(n+1))]`
-/

namespace A026718.P10081693087960060785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026718.P10081693087960060785

/-! ## A026718.P8016458663228101477

`Δ[A026720(2*n)]-A026720(2*n+1)`
-/

namespace A026718.P8016458663228101477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026720 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026720 (2 * n + 1)

end

end A026718.P8016458663228101477

/-! ## A026718.P12672203205589278767

`2*A026720(2*n+1)/A000034(2*n+1)`
-/

namespace A026718.P12672203205589278767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A026720 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A026718.P12672203205589278767

/-! ## A026718.P5957575310075028793

`A026722(2*n+3)-A026721(2*(n+1))`
-/

namespace A026718.P5957575310075028793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026722 (2 * n + 3) - A026721 (2 * (n + 1))

end

end A026718.P5957575310075028793

/-! ## A026718.P15053180553618988177

`A026720(2*n+1)*(2*n+1)/A109613(2*n)`
-/

namespace A026718.P15053180553618988177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026720 (2 * n + 1) * (2 * n + 1 : ℤ) : ℚ) / (A109613 (2 * n) : ℚ)

end

end A026718.P15053180553618988177

/-!
# A026719: T(2n-1,n-2), T given by A026714.

The programs for A026719, there is no canonical definition to state claims against.
-/

/-! ## A026719.P17420214329465972881

`Δ[A026716(n+1)]-A026718(n+2)`
-/

namespace A026719.P17420214329465972881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026718 (n + 2)

end

end A026719.P17420214329465972881

/-! ## A026719.P3503672885596453702

`Δ[A026716(n+1)%∑[A026718(n+1)]]`
-/

namespace A026719.P3503672885596453702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026718 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026716 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026719.P3503672885596453702

/-! ## A026719.P16406356351620389105

`A026716(n+2)-(A026718(n+2)+A026716(n+1))`
-/

namespace A026719.P16406356351620389105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026716 (n + 2) - (A026718 (n + 2) + A026716 (n + 1))

end

end A026719.P16406356351620389105

/-! ## A026719.P12212887261003448375

`A026714((n+1)²+(n+3)²)`
-/

namespace A026719.P12212887261003448375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A026719.P12212887261003448375

/-! ## A026719.P10408603304804252658

`record[gcd(A003285(n+1), A026714(2*n+1))]`
-/

namespace A026719.P10408603304804252658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003285 (n + 1)) (A026714 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026719.P10408603304804252658

/-!
# A026720: T(n,[ n/2 ]), T given by A026714.

The programs for A026720, there is no canonical definition to state claims against.
-/

/-! ## A026720.P18058429092070947827

`A026714(A000982(n+1))`
-/

namespace A026720.P18058429092070947827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A000982 (n + 1)).toNat

end

end A026720.P18058429092070947827

/-! ## A026720.P12761706217271581078

`A026714(A030978(n+1))`
-/

namespace A026720.P12761706217271581078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A030978 (n + 1)).toNat

end

end A026720.P12761706217271581078

/-! ## A026720.P14362472551433715220

`A026714(A074133(n+1))`
-/

namespace A026720.P14362472551433715220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A074133 (n + 1)).toNat

end

end A026720.P14362472551433715220

/-! ## A026720.P8955840411217697080

`A026714(A080827(n+1))`
-/

namespace A026720.P8955840411217697080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A080827 (n + 1)).toNat

end

end A026720.P8955840411217697080

/-! ## A026720.P10513468533636688397

`A026714(A104563(n+1))`
-/

namespace A026720.P10513468533636688397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A104563 (n + 1)).toNat

end

end A026720.P10513468533636688397

/-! ## A026720.P5754763160349103237

`A026714(A099392(n+2))`
-/

namespace A026720.P5754763160349103237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026714 (A099392 (n + 2)).toNat

end

end A026720.P5754763160349103237

/-!
# A026721: T(n,0) + T(n,1) + ... + T(n,n), T given by A026714.

The programs for A026721, there is no canonical definition to state claims against.
-/

/-! ## A026721.P12390736524114303778

`2/(n+2)*A027205(n)`
-/

namespace A026721.P12390736524114303778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A027205 n : ℚ)

end

end A026721.P12390736524114303778

/-! ## A026721.P1006045250501902566

`∑[A326835(A368830(n))]`
-/

namespace A026721.P1006045250501902566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (A368830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026721.P1006045250501902566

/-! ## A026721.P9630567802546412725

`A182555(n)+A025437(A129584(n+1))`
-/

namespace A026721.P9630567802546412725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n + A025437 (A129584 (n + 1)).toNat

end

end A026721.P9630567802546412725

/-! ## A026721.P5635314074968217384

`A353855(A006054(n))+A065161(n+1)`
-/

namespace A026721.P5635314074968217384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353855 (A006054 n).toNat + A065161 (n + 1)

end

end A026721.P5635314074968217384

/-!
# A026722: a(n) = T(n,0) + T(n,1) + ... + T(n,[ n/2 ]), T given by A026714.

The programs for A026722, there is no canonical definition to state claims against.
-/

/-! ## A026722.P8075713474181475309

`A347467(A148051(n))`
-/

namespace A026722.P8075713474181475309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347467 (A148051 n).toNat

end

end A026722.P8075713474181475309

/-! ## A026722.P5196594105032481172

`A347467(A148052(n))`
-/

namespace A026722.P5196594105032481172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347467 (A148052 n).toNat

end

end A026722.P5196594105032481172

/-! ## A026722.P10800819243787736668

`A126309(A209621(n))+A026788(n)`
-/

namespace A026722.P10800819243787736668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126309 (A209621 n).toNat + A026788 n

end

end A026722.P10800819243787736668

/-!
# A026723: a(n) = Sum{T(i,j)}, 0<=i<=n, 0<=j<=i, T given by A026714.

The programs for A026723, there is no canonical definition to state claims against.
-/

/-! ## A026723.P6721876898555739129

`∑[A026721(n)]`
-/

namespace A026723.P6721876898555739129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026723.P6721876898555739129

/-! ## A026723.P18023485476343503252

`A026721(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A026723.P18023485476343503252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026721 n + a (A023443 n).toNat

end

end A026723.P18023485476343503252

/-! ## A026723.P1479681841915638732

`a(n-1)-A026721(n)*A153881(n+1)` with `a(0)=1`
-/

namespace A026723.P1479681841915638732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A026721 n * A153881 (n + 1)

end

end A026723.P1479681841915638732

/-! ## A026723.P9246761331402142338

`∑[A027205(n)/(n/2+1)]`
-/

namespace A026723.P9246761331402142338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027205 n : ℚ) / ((n : ℚ) / 2 + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026723.P9246761331402142338

/-! ## A026723.P4495738207028722778

`a(n-1)+A026721(n)%A022845(n)` with `a(0)=1`
-/

namespace A026723.P4495738207028722778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A026721 n) (A022845 n)

end

end A026723.P4495738207028722778

/-!
# A026724: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], T given by A026714.

The programs for A026724, there is no canonical definition to state claims against.
-/

/-! ## A026724.P7431112264812299815

`A293137(A293735(n))-A359894(A359897(n))`
-/

namespace A026724.P7431112264812299815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A293735 n).toNat - A359894 (A359897 n).toNat

end

end A026724.P7431112264812299815

/-! ## A026724.P12726583666617876984

`A293137(A293735(n))-A214650(A260412(n+3))`
-/

namespace A026724.P12726583666617876984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A293735 n).toNat - A214650 (A260412 (n + 3)).toNat

end

end A026724.P12726583666617876984

/-! ## A026724.P5028253917156358647

`A276581(A202261(n+1))-A214650(A260412(n+3))`
-/

namespace A026724.P5028253917156358647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A202261 (n + 1)).toNat - A214650 (A260412 (n + 3)).toNat

end

end A026724.P5028253917156358647

/-! ## A026724.P17150648160699581077

`floor(sqrt(A319565(n+2)-n))`
-/

namespace A026724.P17150648160699581077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A319565 (n + 2) - (n : ℤ))

end

end A026724.P17150648160699581077

/-! ## A026724.P15076182038798413805

`A112055(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A026724.P15076182038798413805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A112055 (a (n - 1)).toNat

end

end A026724.P15076182038798413805

/-!
# A026725: Triangular array, T, read by rows: T(n,0) = T(n,n) = 1. For n >= 2 and 1<=k<=n-1, T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k) if n is odd and k=(n-1)/2, otherwise T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026725, there is no canonical definition to state claims against.
-/

/-! ## A026725.P249712699996599587

`A026758(n)-A100950(A155586(n))`
-/

namespace A026725.P249712699996599587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n - A100950 (A155586 n).toNat

end

end A026725.P249712699996599587

/-! ## A026725.P5192298729926096721

`A026758(n)-A184159(A155586(n))-A185284(n)`
-/

namespace A026725.P5192298729926096721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n - A184159 (A155586 n).toNat - A185284 n

end

end A026725.P5192298729926096721

/-! ## A026725.P16860804253610956938

`A026758(n)-A021913(A194794(n+1))`
-/

namespace A026725.P16860804253610956938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n - A021913 (A194794 (n + 1)).toNat

end

end A026725.P16860804253610956938

/-! ## A026725.P10841128046432828798

`A163352(A098568(n)+A026758(n))`
-/

namespace A026725.P10841128046432828798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A098568 n + A026758 n).toNat

end

end A026725.P10841128046432828798

/-! ## A026725.P17126392659051656487

`A026758(n)-A125005(A227655(n))`
-/

namespace A026725.P17126392659051656487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n - A125005 (A227655 n).toNat

end

end A026725.P17126392659051656487

/-!
# A026726: a(n) = T(2n,n), T given by A026725.

The programs for A026726, the canonical program `A026726.P4620029716739878414` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026726 has offset 0).

The definition of A026726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026726.P15906774214928835514

`A165407(3*n)`
-/

namespace A026726.P15906774214928835514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (3 * n)

end

end A026726.P15906774214928835514

namespace A026726

/-- `A165407(3*n)` -/
def P15906774214928835514.Spec : Prop :=
  ∀ n, P15906774214928835514.a n = A026726 n

end A026726

/-! ## A026726.P6347693344524467956

`A026731(2*n)`
-/

namespace A026726.P6347693344524467956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 (2 * n)

end

end A026726.P6347693344524467956

namespace A026726

/-- `A026731(2*n)` -/
def P6347693344524467956.Spec : Prop :=
  ∀ n, P6347693344524467956.a n = A026726 n

end A026726

/-! ## A026726.P3056152065500846320

`A165203(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A026726.P3056152065500846320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165203 (n - 1) + a (n - 1)

end

end A026726.P3056152065500846320

namespace A026726

/-- `A165203(n-1)+a(n-1)` -/
def P3056152065500846320.Spec : Prop :=
  ∀ n, P3056152065500846320.a n = A026726 n

end A026726

/-! ## A026726.P678644691535746277

`record[A026731(A014681(n))]`
-/

namespace A026726.P678644691535746277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026726.P678644691535746277

namespace A026726

/-- `record[A026731(A014681(n))]` -/
def P678644691535746277.Spec : Prop :=
  ∀ n, P678644691535746277.a n = A026726 n

end A026726

/-! ## A026726.P16380316374674195626

`A109262(n)+A015448(n)`
-/

namespace A026726.P16380316374674195626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109262 n + A015448 n

end

end A026726.P16380316374674195626

namespace A026726

/-- `A109262(n)+A015448(n)` -/
def P16380316374674195626.Spec : Prop :=
  ∀ n, P16380316374674195626.a n = A026726 n

end A026726

/-! ## A026726.P12783242153741895822

`A026854(n)-A000245(n)`
-/

namespace A026726.P12783242153741895822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026854 n - A000245 n

end

end A026726.P12783242153741895822

namespace A026726

/-- `A026854(n)-A000245(n)` -/
def P12783242153741895822.Spec : Prop :=
  ∀ n, P12783242153741895822.a n = A026726 n

end A026726

/-! ## A026726.P262324041297355043

`record[A026731(A026741(n)+1)]`
-/

namespace A026726.P262324041297355043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026726.P262324041297355043

namespace A026726

/-- `record[A026731(A026741(n)+1)]` -/
def P262324041297355043.Spec : Prop :=
  ∀ n, P262324041297355043.a n = A026726 n

end A026726

/-! ## A026726.P10242857737899471277

`A026671(n)-Δ[A164651(n)]`
-/

namespace A026726.P10242857737899471277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - (f1 (n + 1) - f1 n)

end

end A026726.P10242857737899471277

namespace A026726

/-- `A026671(n)-Δ[A164651(n)]` -/
def P10242857737899471277.Spec : Prop :=
  ∀ n, P10242857737899471277.a n = A026726 n

end A026726

/-! ## A026726.P14645758669781931606

`A026671(n)-A165201(n)%A026671(n)`
-/

namespace A026726.P14645758669781931606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - Int.tmod (A165201 n) (A026671 n)

end

end A026726.P14645758669781931606

namespace A026726

/-- `A026671(n)-A165201(n)%A026671(n)` -/
def P14645758669781931606.Spec : Prop :=
  ∀ n, P14645758669781931606.a n = A026726 n

end A026726

/-! ## A026726.P132665389687892579

`A000108(n)+A026854(n)-A000108(n+1)`
-/

namespace A026726.P132665389687892579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A026854 n - A000108 (n + 1))

end

end A026726.P132665389687892579

namespace A026726

/-- `A000108(n)+A026854(n)-A000108(n+1)` -/
def P132665389687892579.Spec : Prop :=
  ∀ n, P132665389687892579.a n = A026726 n

end A026726

/-! ## A026726.P7078155434431174534

`A026671(n)+A164651(n)-A164651(n+1)`
-/

namespace A026726.P7078155434431174534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n + (A164651 n - A164651 (n + 1))

end

end A026726.P7078155434431174534

namespace A026726

/-- `A026671(n)+A164651(n)-A164651(n+1)` -/
def P7078155434431174534.Spec : Prop :=
  ∀ n, P7078155434431174534.a n = A026726 n

end A026726

/-! ## A026726.P5983085940820754519

`A108080(n)-A054441(n)`
-/

namespace A026726.P5983085940820754519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108080 n - A054441 n

end

end A026726.P5983085940820754519

namespace A026726

/-- `A108080(n)-A054441(n)` -/
def P5983085940820754519.Spec : Prop :=
  ∀ n, P5983085940820754519.a n = A026726 n

end A026726

/-! ## A026726.P8002198925189479022

`2*A026847(2*n)-A026678(2*n)`
-/

namespace A026726.P8002198925189479022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026847 (2 * n) - A026678 (2 * n)

end

end A026726.P8002198925189479022

namespace A026726

/-- `2*A026847(2*n)-A026678(2*n)` -/
def P8002198925189479022.Spec : Prop :=
  ∀ n, P8002198925189479022.a n = A026726 n

end A026726

/-! ## A026726.P6965307650261792818

`2*A026847(2*n)-A026743(2*n)`
-/

namespace A026726.P6965307650261792818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026847 (2 * n) - A026743 (2 * n)

end

end A026726.P6965307650261792818

namespace A026726

/-- `2*A026847(2*n)-A026743(2*n)` -/
def P6965307650261792818.Spec : Prop :=
  ∀ n, P6965307650261792818.a n = A026726 n

end A026726

/-! ## A026726.P472993229505988504

`2*A026847(2*n)-A026847(2*n+1)`
-/

namespace A026726.P472993229505988504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026847 (2 * n) - A026847 (2 * n + 1)

end

end A026726.P472993229505988504

namespace A026726

/-- `2*A026847(2*n)-A026847(2*n+1)` -/
def P472993229505988504.Spec : Prop :=
  ∀ n, P472993229505988504.a n = A026726 n

end A026726

/-! ## A026726.P4873936083649683598

`A108080(n)+A108080(n)-A390266(n)`
-/

namespace A026726.P4873936083649683598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108080 n + (A108080 n - A390266 n)

end

end A026726.P4873936083649683598

namespace A026726

/-- `A108080(n)+A108080(n)-A390266(n)` -/
def P4873936083649683598.Spec : Prop :=
  ∀ n, P4873936083649683598.a n = A026726 n

end A026726

/-! ## A026726.P4620029716739878414

`A026674(n+1)+A000108(n)-A026671(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026726

/-- `A026674(n+1)+A000108(n)-A026671(n)` -/
def P4620029716739878414.Spec : Prop :=
  ∀ n, P4620029716739878414.a n = A026726 n

theorem P4620029716739878414.correct : P4620029716739878414.Spec := by
  intro n
  simp only [A026726]

end A026726

/-! ## A026726.P6587340365440409291

`A026733(2*n)+A026743(2*n)-A026733(2*n+1)`
-/

namespace A026726.P6587340365440409291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 (2 * n) + (A026743 (2 * n) - A026733 (2 * n + 1))

end

end A026726.P6587340365440409291

namespace A026726

/-- `A026733(2*n)+A026743(2*n)-A026733(2*n+1)` -/
def P6587340365440409291.Spec : Prop :=
  ∀ n, P6587340365440409291.a n = A026726 n

end A026726

/-! ## A026726.P10499304511198165534

`A236830(∑[n+1]+1)`
-/

namespace A026726.P10499304511198165534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236830 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026726.P10499304511198165534

namespace A026726

/-- `A236830(∑[n+1]+1)` -/
def P10499304511198165534.Spec : Prop :=
  ∀ n, P10499304511198165534.a n = A026726 n

end A026726

/-!
# A026727: Expansion of 1/((1-2*x)*(1-6*x)*(1-8*x)*(1-11*x)).

The programs for A026727, there is no canonical definition to state claims against.
-/

/-! ## A026727.P17424624298482671554

`a(n-1)+A020593(n)+a(n-1)` with `a(0)=1`
-/

namespace A026727.P17424624298482671554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020593 n + a (n - 1))

end

end A026727.P17424624298482671554

/-! ## A026727.P17085159390176194945

`2*A021274(n)-A021184(n)`
-/

namespace A026727.P17085159390176194945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021274 n - A021184 n

end

end A026727.P17085159390176194945

/-! ## A026727.P2801386026911002792

`2*A025990(n)-A025987(n)`
-/

namespace A026727.P2801386026911002792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025990 n - A025987 n

end

end A026727.P2801386026911002792

/-! ## A026727.P9958270250601720770

`A025941(n)+A025950(n)-A025938(n)`
-/

namespace A026727.P9958270250601720770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025941 n + (A025950 n - A025938 n)

end

end A026727.P9958270250601720770

/-! ## A026727.P14635325601710721941

`A025978(n)+A025978(n)-A025969(n)`
-/

namespace A026727.P14635325601710721941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025978 n + (A025978 n - A025969 n)

end

end A026727.P14635325601710721941

/-! ## A026727.P1543158919342015788

`2*A025978(n)-A025969(n)`
-/

namespace A026727.P1543158919342015788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025978 n - A025969 n

end

end A026727.P1543158919342015788

/-! ## A026727.P14831179567232190403

`2*A028002(n)-A028018(n)`
-/

namespace A026727.P14831179567232190403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028002 n - A028018 n

end

end A026727.P14831179567232190403

/-!
# A026728: a(n) = number of primes of the form k*(n-k) + 1.

The programs for A026728, there is no canonical definition to state claims against.
-/

/-! ## A026728.P8939489057782689319

`A349798(A007952(n+3))+A325195(n+1)`
-/

namespace A026728.P8939489057782689319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A007952 (n + 3)).toNat + A325195 (n + 1)

end

end A026728.P8939489057782689319

/-!
# A026729: Square array of binomial coefficients T(n,k) = binomial(n,k), n >= 0, k >= 0, read by downward antidiagonals.

The programs for A026729, the canonical program `A026729.P18212919796410262121` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026729 has offset 0).

The definition of A026729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026729.P1368028567917559866

`abs(A109466(n))`
-/

namespace A026729.P1368028567917559866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109466 n|

end

end A026729.P1368028567917559866

namespace A026729

/-- `abs(A109466(n))` -/
def P1368028567917559866.Spec : Prop :=
  ∀ n, P1368028567917559866.a n = A026729 n

end A026729

/-! ## A026729.P1819784789039403176

`A007318(n)-A085391(n)`
-/

namespace A026729.P1819784789039403176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A085391 n

end

end A026729.P1819784789039403176

namespace A026729

/-- `A007318(n)-A085391(n)` -/
def P1819784789039403176.Spec : Prop :=
  ∀ n, P1819784789039403176.a n = A026729 n

end A026729

/-! ## A026729.P15182628558455966448

`A059674(n)*A101688(n)`
-/

namespace A026729.P15182628558455966448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 n * A101688 n

end

end A026729.P15182628558455966448

namespace A026729

/-- `A059674(n)*A101688(n)` -/
def P15182628558455966448.Spec : Prop :=
  ∀ n, P15182628558455966448.a n = A026729 n

end A026729

/-! ## A026729.P9808939122822478193

`A097807(n)*A109466(n)`
-/

namespace A026729.P9808939122822478193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A109466 n

end

end A026729.P9808939122822478193

namespace A026729

/-- `A097807(n)*A109466(n)` -/
def P9808939122822478193.Spec : Prop :=
  ∀ n, P9808939122822478193.a n = A026729 n

end A026729

/-! ## A026729.P4995746228821190965

`A109466(n)*A128257(n)`
-/

namespace A026729.P4995746228821190965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A128257 n

end

end A026729.P4995746228821190965

namespace A026729

/-- `A109466(n)*A128257(n)` -/
def P4995746228821190965.Spec : Prop :=
  ∀ n, P4995746228821190965.a n = A026729 n

end A026729

/-! ## A026729.P6006165164008282628

`A109466(n)*A187034(n)`
-/

namespace A026729.P6006165164008282628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A187034 n

end

end A026729.P6006165164008282628

namespace A026729

/-- `A109466(n)*A187034(n)` -/
def P6006165164008282628.Spec : Prop :=
  ∀ n, P6006165164008282628.a n = A026729 n

end A026729

/-! ## A026729.P14196361100237067101

`A099040(n)/A059268(n)`
-/

namespace A026729.P14196361100237067101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) / (A059268 n : ℚ)

end

end A026729.P14196361100237067101

namespace A026729

/-- `A099040(n)/A059268(n)` -/
def P14196361100237067101.Spec : Prop :=
  ∀ n, P14196361100237067101.a n = (A026729 n : ℚ)

end A026729

/-! ## A026729.P10807278313157176387

`A113953(n)/A052509(n)`
-/

namespace A026729.P10807278313157176387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113953 n : ℚ) / (A052509 n : ℚ)

end

end A026729.P10807278313157176387

namespace A026729

/-- `A113953(n)/A052509(n)` -/
def P10807278313157176387.Spec : Prop :=
  ∀ n, P10807278313157176387.a n = (A026729 n : ℚ)

end A026729

/-! ## A026729.P6016209534680949246

`A099089(n)/A116588(n)`
-/

namespace A026729.P6016209534680949246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099089 n : ℚ) / (A116588 n : ℚ)

end

end A026729.P6016209534680949246

namespace A026729

/-- `A099089(n)/A116588(n)` -/
def P6016209534680949246.Spec : Prop :=
  ∀ n, P6016209534680949246.a n = (A026729 n : ℚ)

end A026729

/-! ## A026729.P4108560547898092796

`A099092(n)/A137688(n)`
-/

namespace A026729.P4108560547898092796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A137688 n : ℚ)

end

end A026729.P4108560547898092796

namespace A026729

/-- `A099092(n)/A137688(n)` -/
def P4108560547898092796.Spec : Prop :=
  ∀ n, P4108560547898092796.a n = (A026729 n : ℚ)

end A026729

/-! ## A026729.P13968502280666256315

`A113953(n)/A130321(n)`
-/

namespace A026729.P13968502280666256315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113953 n : ℚ) / (A130321 n : ℚ)

end

end A026729.P13968502280666256315

namespace A026729

/-- `A113953(n)/A130321(n)` -/
def P13968502280666256315.Spec : Prop :=
  ∀ n, P13968502280666256315.a n = (A026729 n : ℚ)

end A026729

/-! ## A026729.P16603380370235832377

`gcd(A000038(n), A109466(n))`
-/

namespace A026729.P16603380370235832377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109466 n)

end

end A026729.P16603380370235832377

namespace A026729

/-- `gcd(A000038(n), A109466(n))` -/
def P16603380370235832377.Spec : Prop :=
  ∀ n, (P16603380370235832377.a n : ℤ) = A026729 n

end A026729

/-! ## A026729.P3700445884169330800

`gcd(A099040(n), A099093(n))`
-/

namespace A026729.P3700445884169330800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099040 n) (A099093 n)

end

end A026729.P3700445884169330800

namespace A026729

/-- `gcd(A099040(n), A099093(n))` -/
def P3700445884169330800.Spec : Prop :=
  ∀ n, (P3700445884169330800.a n : ℤ) = A026729 n

end A026729

/-! ## A026729.P6993556777606423646

`gcd(A099089(n), A099097(n))`
-/

namespace A026729.P6993556777606423646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099089 n) (A099097 n)

end

end A026729.P6993556777606423646

namespace A026729

/-- `gcd(A099089(n), A099097(n))` -/
def P6993556777606423646.Spec : Prop :=
  ∀ n, (P6993556777606423646.a n : ℤ) = A026729 n

end A026729

/-! ## A026729.P16543821101477925412

`gcd(A099092(n), A110517(n))`
-/

namespace A026729.P16543821101477925412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099092 n) (A110517 n)

end

end A026729.P16543821101477925412

namespace A026729

/-- `gcd(A099092(n), A110517(n))` -/
def P16543821101477925412.Spec : Prop :=
  ∀ n, (P16543821101477925412.a n : ℤ) = A026729 n

end A026729

/-! ## A026729.P4293866823204038012

`lcm(A059674(n), A187034(n))`
-/

namespace A026729.P4293866823204038012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059674 n) (A187034 n)

end

end A026729.P4293866823204038012

namespace A026729

/-- `lcm(A059674(n), A187034(n))` -/
def P4293866823204038012.Spec : Prop :=
  ∀ n, (P4293866823204038012.a n : ℤ) = A026729 n

end A026729

/-! ## A026729.P18212919796410262121

`C(A002262(n), A025581(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026729

/-- `C(A002262(n), A025581(n))` -/
def P18212919796410262121.Spec : Prop :=
  ∀ n, (P18212919796410262121.a n : ℤ) = A026729 n

theorem P18212919796410262121.correct : P18212919796410262121.Spec := by
  intro n
  simp only [A026729]

end A026729

/-! ## A026729.P3035044108052733359

`C(A191532(n), A025581(n))`
-/

namespace A026729.P3035044108052733359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A191532 n).toNat (A025581 n).toNat

end

end A026729.P3035044108052733359

namespace A026729

/-- `C(A191532(n), A025581(n))` -/
def P3035044108052733359.Spec : Prop :=
  ∀ n, (P3035044108052733359.a n : ℤ) = A026729 n

end A026729

/-! ## A026729.P13746642180405507498

`A109466(n)²/A059674(n)`
-/

namespace A026729.P13746642180405507498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109466 n ^ 2 : ℚ) / (A059674 n : ℚ)

end

end A026729.P13746642180405507498

namespace A026729

/-- `A109466(n)²/A059674(n)` -/
def P13746642180405507498.Spec : Prop :=
  ∀ n, P13746642180405507498.a n = (A026729 n : ℚ)

end A026729

/-! ## A026729.P6554562370031484910

`C(log2(A059268(n)), A025581(n))`
-/

namespace A026729.P6554562370031484910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat (A025581 n).toNat

end

end A026729.P6554562370031484910

namespace A026729

/-- `C(log2(A059268(n)), A025581(n))` -/
def P6554562370031484910.Spec : Prop :=
  ∀ n, (P6554562370031484910.a n : ℤ) = A026729 n

end A026729

/-!
# A026730: a(8n)=n, a(8n+4)=a(8n)+a(8n+8), a(4n+2)=a(4n)+a(4n+4), a(2n+1)=a(2n)+a(2n+2).

The programs for A026730, there is no canonical definition to state claims against.
-/

/-! ## A026730.P1564183900546520348

`A357743(lt[A213831(n+1), A327203(n+1)])`
-/

namespace A026730.P1564183900546520348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357743 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026730.P1564183900546520348

/-! ## A026730.P6598885321526783410

`A178798(A022166(n))+A002487(A161673(n+1))`
-/

namespace A026730.P6598885321526783410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A022166 n).toNat + A002487 (A161673 (n + 1)).toNat

end

end A026730.P6598885321526783410

/-! ## A026730.P13251872160158796002

`A002487(A161673(n+1))%A050891(A000009(n))`
-/

namespace A026730.P13251872160158796002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A161673 (n + 1)).toNat) (A050891 (A000009 n).toNat)

end

end A026730.P13251872160158796002

/-! ## A026730.P8470150363682250002

`A002487(A368533(n+1))%A118756(n+1)`
-/

namespace A026730.P8470150363682250002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A368533 (n + 1)).toNat) (A118756 (n + 1))

end

end A026730.P8470150363682250002

/-!
# A026731: Greatest number in row n of array T given by A026725.

The programs for A026731, there is no canonical definition to state claims against.
-/

/-! ## A026731.P7073583632286866145

`A165407(A007494(n))`
-/

namespace A026731.P7073583632286866145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A007494 n).toNat

end

end A026731.P7073583632286866145

/-! ## A026731.P11220792812086413585

`A165407(A267528(n+1))`
-/

namespace A026731.P11220792812086413585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A267528 (n + 1)).toNat

end

end A026731.P11220792812086413585

/-! ## A026731.P1044970211040769785

`A165407(A294732(n+2))`
-/

namespace A026731.P1044970211040769785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A294732 (n + 2)).toNat

end

end A026731.P1044970211040769785

/-! ## A026731.P6578283406388682633

`A165407(A001651(n+2)-2)`
-/

namespace A026731.P6578283406388682633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A001651 (n + 2) - 2).toNat

end

end A026731.P6578283406388682633

/-! ## A026731.P2074705851966809323

`A165407(A267528(2*n)-A267528(n))`
-/

namespace A026731.P2074705851966809323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A267528 (2 * n) - A267528 n).toNat

end

end A026731.P2074705851966809323

/-! ## A026731.P2338289161611818831

`A026847(n+1)+A026733(n)-A026733(n+1)`
-/

namespace A026731.P2338289161611818831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026847 (n + 1) + (A026733 n - A026733 (n + 1))

end

end A026731.P2338289161611818831

/-! ## A026731.P11604645243600049050

`A026725(∑[n]+floor(n/2))`
-/

namespace A026731.P11604645243600049050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A026731.P11604645243600049050

/-! ## A026731.P14956059590472111118

`A121460(A000982(n+1))`
-/

namespace A026731.P14956059590472111118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121460 (A000982 (n + 1)).toNat

end

end A026731.P14956059590472111118

/-!
# A026732: a(n) = Sum_{k=0..n} T(n,k), T given by A026725.

The programs for A026732, the canonical program `A026732.P6139381397905138302` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026732 has offset 0).

The definition of A026732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026732.P4393826188879152829

`A026678(n+1)-Δ[A026847(n)]`
-/

namespace A026732.P4393826188879152829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026678 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026732.P4393826188879152829

namespace A026732

/-- `A026678(n+1)-Δ[A026847(n)]` -/
def P4393826188879152829.Spec : Prop :=
  ∀ n, P4393826188879152829.a n = A026732 n

end A026732

/-! ## A026732.P6139381397905138302

`A026733(n)+Δ[A026733(n)/2]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026732

/-- `A026733(n)+Δ[A026733(n)/2]` -/
def P6139381397905138302.Spec : Prop :=
  ∀ n, P6139381397905138302.a n = (A026732 n : ℚ)

end A026732

/-! ## A026732.P12696716483708024735

`A026733(n)+A026743(n)-A026847(n)`
-/

namespace A026732.P12696716483708024735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n + (A026743 n - A026847 n)

end

end A026732.P12696716483708024735

namespace A026732

/-- `A026733(n)+A026743(n)-A026847(n)` -/
def P12696716483708024735.Spec : Prop :=
  ∀ n, P12696716483708024735.a n = A026732 n

end A026732

/-! ## A026732.P15995644449277609599

`(A026733(n+1)+A026733(n))/2`
-/

namespace A026732.P15995644449277609599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 (n + 1) + A026733 n : ℚ) / 2

end

end A026732.P15995644449277609599

namespace A026732

/-- `(A026733(n+1)+A026733(n))/2` -/
def P15995644449277609599.Spec : Prop :=
  ∀ n, P15995644449277609599.a n = (A026732 n : ℚ)

end A026732

/-! ## A026732.P15729553629864551272

`Δ[A026677(n)]+A026847(n)-A026743(n)`
-/

namespace A026732.P15729553629864551272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A026847 n - A026743 n)

end

end A026732.P15729553629864551272

namespace A026732

/-- `Δ[A026677(n)]+A026847(n)-A026743(n)` -/
def P15729553629864551272.Spec : Prop :=
  ∀ n, P15729553629864551272.a n = A026732 n

end A026732

/-!
# A026733: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026725.

The programs for A026733, the canonical program `A026733.P9218894337222086257` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026733 has offset 0).

The definition of A026733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026733.P7617553853518768252

`A026678(n)+A026731(n)-A026676(n)`
-/

namespace A026733.P7617553853518768252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026678 n + (A026731 n - A026676 n)

end

end A026733.P7617553853518768252

namespace A026733

/-- `A026678(n)+A026731(n)-A026676(n)` -/
def P7617553853518768252.Spec : Prop :=
  ∀ n, P7617553853518768252.a n = A026733 n

end A026733

/-! ## A026733.P18208009879340535244

`A026731(n)+A026744(n)-A026742(n)`
-/

namespace A026733.P18208009879340535244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 n + (A026744 n - A026742 n)

end

end A026733.P18208009879340535244

namespace A026733

/-- `A026731(n)+A026744(n)-A026742(n)` -/
def P18208009879340535244.Spec : Prop :=
  ∀ n, P18208009879340535244.a n = A026733 n

end A026733

/-! ## A026733.P9218894337222086257

`abs(Δ[A026677(abs(1-n))])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026733

/-- `abs(Δ[A026677(abs(1-n))])` -/
def P9218894337222086257.Spec : Prop :=
  ∀ n, P9218894337222086257.a n = A026733 n

theorem P9218894337222086257.correct : P9218894337222086257.Spec := by
  intro n
  simp only [A026733]

end A026733

/-! ## A026733.P16644486708609198428

`Δ[Δ[A026743(n)]-A026731(n)]`
-/

namespace A026733.P16644486708609198428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026733.P16644486708609198428

namespace A026733

/-- `Δ[Δ[A026743(n)]-A026731(n)]` -/
def P16644486708609198428.Spec : Prop :=
  ∀ n, P16644486708609198428.a n = A026733 n

end A026733

/-! ## A026733.P13100511067943894235

`Δ[Δ[A026732(n)]-A026847(n)]`
-/

namespace A026733.P13100511067943894235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026733.P13100511067943894235

namespace A026733

/-- `Δ[Δ[A026732(n)]-A026847(n)]` -/
def P13100511067943894235.Spec : Prop :=
  ∀ n, P13100511067943894235.a n = A026733 n

end A026733

/-!
# A026734: a(n) = Sum_{i=0..n} Sum_{j=0..n} T(i,j), T given by A026725.

The programs for A026734, the canonical program `A026734.P17377753573746690983` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026734 has offset 0).

The definition of A026734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026734.P16354439147725963322

`∑[A026732(n)]`
-/

namespace A026734.P16354439147725963322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026734.P16354439147725963322

namespace A026734

/-- `∑[A026732(n)]` -/
def P16354439147725963322.Spec : Prop :=
  ∀ n, P16354439147725963322.a n = A026734 n

end A026734

/-! ## A026734.P17377753573746690983

`∑[(A026733(n+1)+A026733(n))/2]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026734

/-- `∑[(A026733(n+1)+A026733(n))/2]` -/
def P17377753573746690983.Spec : Prop :=
  ∀ n, P17377753573746690983.a n = (A026734 n : ℚ)

end A026734

/-! ## A026734.P11710571794667959043

`record[∑[A026725(n)]/A039598(n)]`
-/

namespace A026734.P11710571794667959043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A039598 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026734.P11710571794667959043

namespace A026734

/-- `record[∑[A026725(n)]/A039598(n)]` -/
def P11710571794667959043.Spec : Prop :=
  ∀ n, P11710571794667959043.a n = (A026734 n : ℚ)

end A026734

/-! ## A026734.P2030340463348628941

`record[∑[A026725(n)]/A047858(n)]`
-/

namespace A026734.P2030340463348628941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A047858 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026734.P2030340463348628941

namespace A026734

/-- `record[∑[A026725(n)]/A047858(n)]` -/
def P2030340463348628941.Spec : Prop :=
  ∀ n, P2030340463348628941.a n = (A026734 n : ℚ)

end A026734

/-! ## A026734.P14237048313248372735

`record[∑[A026725(n)]/A262616(n)]`
-/

namespace A026734.P14237048313248372735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A262616 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026734.P14237048313248372735

namespace A026734

/-- `record[∑[A026725(n)]/A262616(n)]` -/
def P14237048313248372735.Spec : Prop :=
  ∀ n, P14237048313248372735.a n = (A026734 n : ℚ)

end A026734

/-!
# A026735: a(n) = Sum_{k=0..floor(n/2)} T(n-k,k), T given by A026725.

The programs for A026735, there is no canonical definition to state claims against.
-/

/-! ## A026735.P3663014564898445788

`A135660(or(A208540(n+1), A208540(n+2)))`
-/

namespace A026735.P3663014564898445788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.lor (A208540 (n + 1)) (A208540 (n + 2))).toNat

end

end A026735.P3663014564898445788

/-! ## A026735.P17882022793294228234

`or(A034298(A000045(n+1)), A351977(2*n+1))`
-/

namespace A026735.P17882022793294228234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034298 (A000045 (n + 1)).toNat) (A351977 (2 * n + 1))

end

end A026735.P17882022793294228234

/-! ## A026735.P2476103047042300531

`A098745(A212484(n))`
-/

namespace A026735.P2476103047042300531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098745 (A212484 n).toNat

end

end A026735.P2476103047042300531

/-! ## A026735.P9836535774044596876

`A361940(A268176(n))`
-/

namespace A026735.P9836535774044596876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361940 (A268176 n).toNat

end

end A026735.P9836535774044596876

/-!
# A026736: Triangular array T read by rows: T(n,0) = T(n,n) = 1 for n >= 0; for n >= 2 and 1 <= k <= n-1, T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k) if n is even and k=(n-2)/2, otherwise T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026736, there is no canonical definition to state claims against.
-/

/-! ## A026736.P7475720127430892135

`A011744(A080249(n))+A007318(n)`
-/

namespace A026736.P7475720127430892135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011744 (A080249 n).toNat + A007318 n

end

end A026736.P7475720127430892135

/-! ## A026736.P779590063823317750

`A034932(n)+A011744(A080249(n))`
-/

namespace A026736.P779590063823317750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 n + A011744 (A080249 n).toNat

end

end A026736.P779590063823317750

/-! ## A026736.P12212887066555113397

`A273914(n)+A011744(A080249(n))`
-/

namespace A026736.P12212887066555113397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273914 n + A011744 (A080249 n).toNat

end

end A026736.P12212887066555113397

/-! ## A026736.P15935442853104269149

`A186709(A194673(n))+A007318(n)`
-/

namespace A026736.P15935442853104269149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186709 (A194673 n).toNat + A007318 n

end

end A026736.P15935442853104269149

/-! ## A026736.P8469628744998864574

`A186709(A194673(n))+A034932(n)`
-/

namespace A026736.P8469628744998864574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186709 (A194673 n).toNat + A034932 n

end

end A026736.P8469628744998864574

/-!
# A026737: a(n) = T(2*n,n), T given by A026736.

The programs for A026737, the canonical program `A026737.P4467536604630833933` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026737 has offset 0).

The definition of A026737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026737.P12526738458328838277

`A111279(n+1)`
-/

namespace A026737.P12526738458328838277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (n + 1)

end

end A026737.P12526738458328838277

namespace A026737

/-- `A111279(n+1)` -/
def P12526738458328838277.Spec : Prop :=
  ∀ n, P12526738458328838277.a n = A026737 n

end A026737

/-! ## A026737.P12459929215017692004

`A026742(2*n)`
-/

namespace A026737.P12459929215017692004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * n)

end

end A026737.P12459929215017692004

namespace A026737

/-- `A026742(2*n)` -/
def P12459929215017692004.Spec : Prop :=
  ∀ n, P12459929215017692004.a n = A026737 n

end A026737

/-! ## A026737.P2648569787618450752

`record[A026742(A014681(n))]`
-/

namespace A026737.P2648569787618450752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026737.P2648569787618450752

namespace A026737

/-- `record[A026742(A014681(n))]` -/
def P2648569787618450752.Spec : Prop :=
  ∀ n, P2648569787618450752.a n = A026737 n

end A026737

/-! ## A026737.P2832638698074321008

`record[A111279(A008611(n))]`
-/

namespace A026737.P2832638698074321008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026737.P2832638698074321008

namespace A026737

/-- `record[A111279(A008611(n))]` -/
def P2832638698074321008.Spec : Prop :=
  ∀ n, P2832638698074321008.a n = A026737 n

end A026737

/-! ## A026737.P4901103764677731881

`record[A111279(A008624(n))]`
-/

namespace A026737.P4901103764677731881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026737.P4901103764677731881

namespace A026737

/-- `record[A111279(A008624(n))]` -/
def P4901103764677731881.Spec : Prop :=
  ∀ n, P4901103764677731881.a n = A026737 n

end A026737

/-! ## A026737.P7665327273193503950

`record[A026742(A276093(n))]`
-/

namespace A026737.P7665327273193503950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A276093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026737.P7665327273193503950

namespace A026737

/-- `record[A026742(A276093(n))]` -/
def P7665327273193503950.Spec : Prop :=
  ∀ n, P7665327273193503950.a n = A026737 n

end A026737

/-! ## A026737.P1418420838982988445

`record[A026742(A026741(n)+1)]`
-/

namespace A026737.P1418420838982988445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026737.P1418420838982988445

namespace A026737

/-- `record[A026742(A026741(n)+1)]` -/
def P1418420838982988445.Spec : Prop :=
  ∀ n, P1418420838982988445.a n = A026737 n

end A026737

/-! ## A026737.P279513249227227483

`record[A026742(A093411(n)+1)]`
-/

namespace A026737.P279513249227227483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A093411 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026737.P279513249227227483

namespace A026737

/-- `record[A026742(A093411(n)+1)]` -/
def P279513249227227483.Spec : Prop :=
  ∀ n, P279513249227227483.a n = A026737 n

end A026737

/-! ## A026737.P10326440540893609882

`A111279(n)-Δ[-A111279(n)]`
-/

namespace A026737.P10326440540893609882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A111279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 n - (f1 (n + 1) - f1 n)

end

end A026737.P10326440540893609882

namespace A026737

/-- `A111279(n)-Δ[-A111279(n)]` -/
def P10326440540893609882.Spec : Prop :=
  ∀ n, P10326440540893609882.a n = A026737 n

end A026737

/-! ## A026737.P17701631067919685140

`record[A026742(A008611(A026741(n)))]`
-/

namespace A026737.P17701631067919685140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A008611 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026737.P17701631067919685140

namespace A026737

/-- `record[A026742(A008611(A026741(n)))]` -/
def P17701631067919685140.Spec : Prop :=
  ∀ n, P17701631067919685140.a n = A026737 n

end A026737

/-! ## A026737.P4467536604630833933

`A000108(n)+A026671(n)-A026726(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026737

/-- `A000108(n)+A026671(n)-A026726(n)` -/
def P4467536604630833933.Spec : Prop :=
  ∀ n, P4467536604630833933.a n = A026737 n

theorem P4467536604630833933.correct : P4467536604630833933.Spec := by
  intro n
  simp only [A026737]

end A026737

/-! ## A026737.P7324930179039758575

`A164651(n+1)+A000108(n)-A164651(n)`
-/

namespace A026737.P7324930179039758575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 (n + 1) + (A000108 n - A164651 n)

end

end A026737.P7324930179039758575

namespace A026737

/-- `A164651(n+1)+A000108(n)-A164651(n)` -/
def P7324930179039758575.Spec : Prop :=
  ∀ n, P7324930179039758575.a n = A026737 n

end A026737

/-! ## A026737.P583803682946310354

`2*A026671(n)-A026674(n+1)`
-/

namespace A026737.P583803682946310354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026671 n - A026674 (n + 1)

end

end A026737.P583803682946310354

namespace A026737

/-- `2*A026671(n)-A026674(n+1)` -/
def P583803682946310354.Spec : Prop :=
  ∀ n, P583803682946310354.a n = A026737 n

end A026737

/-! ## A026737.P10278554159847438301

`2*A026676(2*n)-A026676(2*n+1)`
-/

namespace A026737.P10278554159847438301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026676 (2 * n) - A026676 (2 * n + 1)

end

end A026737.P10278554159847438301

namespace A026737

/-- `2*A026676(2*n)-A026676(2*n+1)` -/
def P10278554159847438301.Spec : Prop :=
  ∀ n, P10278554159847438301.a n = A026737 n

end A026737

/-! ## A026737.P7418722028429942812

`2*A026744(2*n)-A026744(2*n+1)`
-/

namespace A026737.P7418722028429942812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026744 (2 * n) - A026744 (2 * n + 1)

end

end A026737.P7418722028429942812

namespace A026737

/-- `2*A026744(2*n)-A026744(2*n+1)` -/
def P7418722028429942812.Spec : Prop :=
  ∀ n, P7418722028429942812.a n = A026737 n

end A026737

/-! ## A026737.P2509011254975517347

`A000108(n)+A165203(n)-A026674(n+1)`
-/

namespace A026737.P2509011254975517347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A165203 n - A026674 (n + 1))

end

end A026737.P2509011254975517347

namespace A026737

/-- `A000108(n)+A165203(n)-A026674(n+1)` -/
def P2509011254975517347.Spec : Prop :=
  ∀ n, P2509011254975517347.a n = A026737 n

end A026737

/-! ## A026737.P3327714889714091435

`A000108(n)+A165203(n)-A165201(n+1)`
-/

namespace A026737.P3327714889714091435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A165203 n - A165201 (n + 1))

end

end A026737.P3327714889714091435

namespace A026737

/-- `A000108(n)+A165203(n)-A165201(n+1)` -/
def P3327714889714091435.Spec : Prop :=
  ∀ n, P3327714889714091435.a n = A026737 n

end A026737

/-!
# A026738: Expansion of 1/((1-2*x)*(1-6*x)*(1-8*x)*(1-12*x)).

The programs for A026738, the canonical program `A026738.P13953512776166082424` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026738 has offset 0).

The definition of A026738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026738.P13953512776166082424

`(18*12^(n+1)-5*8^(n+2)+135*6^n-2^n)/30`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026738

/-- `(18*12^(n+1)-5*8^(n+2)+135*6^n-2^n)/30` -/
def P13953512776166082424.Spec : Prop :=
  ∀ n, P13953512776166082424.a n = (A026738 n : ℚ)

end A026738

/-! ## A026738.P12648981039701844334

`2^n*A021354(n)`
-/

namespace A026738.P12648981039701844334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021354 n

end

end A026738.P12648981039701844334

namespace A026738

/-- `2^n*A021354(n)` -/
def P12648981039701844334.Spec : Prop :=
  ∀ n, P12648981039701844334.a n = A026738 n

end A026738

/-! ## A026738.P1666650351354247126

`A020594(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A026738.P1666650351354247126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020594 n + 2 * a (n - 1)

end

end A026738.P1666650351354247126

namespace A026738

/-- `A020594(n)+2*a(n-1)` -/
def P1666650351354247126.Spec : Prop :=
  ∀ n, P1666650351354247126.a n = A026738 n

end A026738

/-! ## A026738.P2232658493595488647

`∑[A016765(n)]*A000079(n)`
-/

namespace A026738.P2232658493595488647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A026738.P2232658493595488647

namespace A026738

/-- `∑[A016765(n)]*A000079(n)` -/
def P2232658493595488647.Spec : Prop :=
  ∀ n, P2232658493595488647.a n = A026738 n

end A026738

/-! ## A026738.P3214478023878844172

`A021354(n)*A223541(∑[n])`
-/

namespace A026738.P3214478023878844172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021354 n * A223541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026738.P3214478023878844172

namespace A026738

/-- `A021354(n)*A223541(∑[n])` -/
def P3214478023878844172.Spec : Prop :=
  ∀ n, P3214478023878844172.a n = A026738 n

end A026738

/-! ## A026738.P18149890434915338624

`2*A028003(n)-A028019(n)`
-/

namespace A026738.P18149890434915338624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028003 n - A028019 n

end

end A026738.P18149890434915338624

namespace A026738

/-- `2*A028003(n)-A028019(n)` -/
def P18149890434915338624.Spec : Prop :=
  ∀ n, P18149890434915338624.a n = A026738 n

end A026738

/-! ## A026738.P12173832054162103049

`∑[A011782(n)]*∑[A016765(n)]`
-/

namespace A026738.P12173832054162103049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A026738.P12173832054162103049

namespace A026738

/-- `∑[A011782(n)]*∑[A016765(n)]` -/
def P12173832054162103049.Spec : Prop :=
  ∀ n, P12173832054162103049.a n = A026738 n

end A026738

/-! ## A026738.P8099351836923151451

`A028002(n)+A028004(n)-A028019(n)`
-/

namespace A026738.P8099351836923151451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028002 n + (A028004 n - A028019 n)

end

end A026738.P8099351836923151451

namespace A026738

/-- `A028002(n)+A028004(n)-A028019(n)` -/
def P8099351836923151451.Spec : Prop :=
  ∀ n, P8099351836923151451.a n = A026738 n

end A026738

/-! ## A026738.P4579682464437742670

`∑[A020594(n)/A000079(n)]*A000079(n)`
-/

namespace A026738.P4579682464437742670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020594 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A026738.P4579682464437742670

namespace A026738

/-- `∑[A020594(n)/A000079(n)]*A000079(n)` -/
def P4579682464437742670.Spec : Prop :=
  ∀ n, P4579682464437742670.a n = (A026738 n : ℚ)

end A026738

/-!
# A026739: Number of subgroups L of Z^n with the property that for every a in Z^n there exists precisely one b in L with d(a,b) <= 1. Here d denotes Euclidean distance.

The programs for A026739, there is no canonical definition to state claims against.
-/

/-! ## A026739.P8989306274072971798

`A034382(2*n+1)/∏[2*n+1]`
-/

namespace A026739.P8989306274072971798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034382 (2 * n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A026739.P8989306274072971798

/-! ## A026739.P18369021584701455815

`1/A001147(n+1)*A034382(2*n+1)`
-/

namespace A026739.P18369021584701455815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A001147 (n + 1) : ℚ) * (A034382 (2 * n + 1) : ℚ)

end

end A026739.P18369021584701455815

/-! ## A026739.P14005627032932888009

`A058162(2*n+1)/A059366(A000217(n))`
-/

namespace A026739.P14005627032932888009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058162 (2 * n + 1) : ℚ) / (A059366 (A000217 n).toNat : ℚ)

end

end A026739.P14005627032932888009

/-!
# A026740: a(n) = 2^n*(2^n - 1)*(2^n - 2)/6.

The programs for A026740, the canonical program `A026740.P6480507900774407034` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026740 has offset 0).

The definition of A026740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(2^n-1)*(2^n-2)/6` (program `A026740.P12108832762469059196`, by `A026740.P12108832762469059196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026740.P6480507900774407034

`14*a(n-1)-56*a(n-2)+64*a(n-3)` with `a(0)=0, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026740

/-- `14*a(n-1)-56*a(n-2)+64*a(n-3)` -/
def P6480507900774407034.Spec : Prop :=
  ∀ n, P6480507900774407034.a n = A026740 n

theorem P6480507900774407034.correct : P6480507900774407034.Spec := by
  intro n
  simp only [A026740]

end A026740

/-! ## A026740.P14448116939013874389

`C(2^n, 3)`
-/

namespace A026740.P14448116939013874389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 3

end

end A026740.P14448116939013874389

namespace A026740

/-- `C(2^n, 3)` -/
def P14448116939013874389.Spec : Prop :=
  ∀ n, (P14448116939013874389.a n : ℤ) = A026740 n

end A026740

/-! ## A026740.P12108832762469059196

`2^n*(2^n-1)*(2^n-2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026740.P12108832762469059196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * ((2 ^ n : ℤ) - 1) * ((2 ^ n : ℤ) - 2) : ℚ) / 6

end

end A026740.P12108832762469059196

namespace A026740

/-- `2^n*(2^n-1)*(2^n-2)/6` -/
def P12108832762469059196.Spec : Prop :=
  ∀ n, P12108832762469059196.a n = (A026740 n : ℚ)

theorem P12108832762469059196.correct : P12108832762469059196.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A026740, Nat.add_sub_cancel, A026740.P12108832762469059196.a, A026740.P6480507900774407034.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A026740, Nat.add_sub_cancel, A026740.P12108832762469059196.a, A026740.P6480507900774407034.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A026740

/-! ## A026740.P1309455448139236750

`lcm(2^n, A006095(n))`
-/

namespace A026740.P1309455448139236750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A006095 n)

end

end A026740.P1309455448139236750

namespace A026740

/-- `lcm(2^n, A006095(n))` -/
def P1309455448139236750.Spec : Prop :=
  ∀ n, (P1309455448139236750.a n : ℤ) = A026740 n

end A026740

/-! ## A026740.P7063084698479305969

`A228701(n)+A228700(n)`
-/

namespace A026740.P7063084698479305969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228701 n + A228700 n

end

end A026740.P7063084698479305969

namespace A026740

/-- `A228701(n)+A228700(n)` -/
def P7063084698479305969.Spec : Prop :=
  ∀ n, P7063084698479305969.a n = A026740 n

end A026740

/-! ## A026740.P1825234494465640179

`A092055(n)-A000079(n)²`
-/

namespace A026740.P1825234494465640179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092055 n - A000079 n ^ 2

end

end A026740.P1825234494465640179

namespace A026740

/-- `A092055(n)-A000079(n)²` -/
def P1825234494465640179.Spec : Prop :=
  ∀ n, P1825234494465640179.a n = A026740 n

end A026740

/-! ## A026740.P1494178578215416011

`A092055(n)-A000079(2*n)`
-/

namespace A026740.P1494178578215416011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092055 n - A000079 (2 * n)

end

end A026740.P1494178578215416011

namespace A026740

/-- `A092055(n)-A000079(2*n)` -/
def P1494178578215416011.Spec : Prop :=
  ∀ n, P1494178578215416011.a n = A026740 n

end A026740

/-! ## A026740.P5460898980827554742

`A006095(n)+A000225(n)*A006095(n)`
-/

namespace A026740.P5460898980827554742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A000225 n * A006095 n

end

end A026740.P5460898980827554742

namespace A026740

/-- `A006095(n)+A000225(n)*A006095(n)` -/
def P5460898980827554742.Spec : Prop :=
  ∀ n, P5460898980827554742.a n = A026740 n

end A026740

/-! ## A026740.P10168448438069876899

`A006095(n)+A006095(n)*A255047(n)`
-/

namespace A026740.P10168448438069876899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A006095 n * A255047 n

end

end A026740.P10168448438069876899

namespace A026740

/-- `A006095(n)+A006095(n)*A255047(n)` -/
def P10168448438069876899.Spec : Prop :=
  ∀ n, P10168448438069876899.a n = A026740 n

end A026740

/-! ## A026740.P11933329623570982025

`A000051(n)*A006095(n)-A006095(n)`
-/

namespace A026740.P11933329623570982025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A006095 n - A006095 n

end

end A026740.P11933329623570982025

namespace A026740

/-- `A000051(n)*A006095(n)-A006095(n)` -/
def P11933329623570982025.Spec : Prop :=
  ∀ n, P11933329623570982025.a n = A026740 n

end A026740

/-! ## A026740.P6281211530686061104

`A002450(n)*A131577(n)-A006516(n)`
-/

namespace A026740.P6281211530686061104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n * A131577 n - A006516 n

end

end A026740.P6281211530686061104

namespace A026740

/-- `A002450(n)*A131577(n)-A006516(n)` -/
def P6281211530686061104.Spec : Prop :=
  ∀ n, P6281211530686061104.a n = A026740 n

end A026740

/-! ## A026740.P4461049805918536736

`C(A000079(n), 3)%A192945(n+4)`
-/

namespace A026740.P4461049805918536736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A000079 n).toNat 3 : ℤ) (A192945 (n + 4))

end

end A026740.P4461049805918536736

namespace A026740

/-- `C(A000079(n), 3)%A192945(n+4)` -/
def P4461049805918536736.Spec : Prop :=
  ∀ n, P4461049805918536736.a n = A026740 n

end A026740

/-!
# A026741: a(n) = n if n odd, n/2 if n even.

The programs for A026741, the canonical program `A026741.P7397200255647832146` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026741 has offset 0).

The definition of A026741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026741.P18285036826168848094

`lcm(n, 2)/2`
-/

namespace A026741.P18285036826168848094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n 2 : ℚ) / 2

end

end A026741.P18285036826168848094

namespace A026741

/-- `lcm(n, 2)/2` -/
def P18285036826168848094.Spec : Prop :=
  ∀ n, P18285036826168848094.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P9580612282081082859

`n/gcd(n, 2)`
-/

namespace A026741.P9580612282081082859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 2 : ℚ)

end

end A026741.P9580612282081082859

namespace A026741

/-- `n/gcd(n, 2)` -/
def P9580612282081082859.Spec : Prop :=
  ∀ n, P9580612282081082859.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P1297956033154098169

`2*n/(3+(-1)^n)`
-/

namespace A026741.P1297956033154098169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (3 + (-1) ^ n : ℚ)

end

end A026741.P1297956033154098169

namespace A026741

/-- `2*n/(3+(-1)^n)` -/
def P1297956033154098169.Spec : Prop :=
  ∀ n, P1297956033154098169.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P7397200255647832146

`gcd(n, A000217(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026741

/-- `gcd(n, A000217(n))` -/
def P7397200255647832146.Spec : Prop :=
  ∀ n, (P7397200255647832146.a n : ℤ) = A026741 n

theorem P7397200255647832146.correct : P7397200255647832146.Spec := by
  intro n
  simp only [A026741]

end A026741

/-! ## A026741.P17968488020861267828

`A106619(n)*A109012(n)`
-/

namespace A026741.P17968488020861267828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n * A109012 n

end

end A026741.P17968488020861267828

namespace A026741

/-- `A106619(n)*A109012(n)` -/
def P17968488020861267828.Spec : Prop :=
  ∀ n, P17968488020861267828.a n = A026741 n

end A026741

/-! ## A026741.P14072655517717050367

`gcd(n^10, ∑[n])`
-/

namespace A026741.P14072655517717050367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 10) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026741.P14072655517717050367

namespace A026741

/-- `gcd(n^10, ∑[n])` -/
def P14072655517717050367.Spec : Prop :=
  ∀ n, (P14072655517717050367.a n : ℤ) = A026741 n

end A026741

/-! ## A026741.P10950253722482006244

`abs(n/or(n, -2))`
-/

namespace A026741.P10950253722482006244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)|

end

end A026741.P10950253722482006244

namespace A026741

/-- `abs(n/or(n, -2))` -/
def P10950253722482006244.Spec : Prop :=
  ∀ n, P10950253722482006244.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P15704949145281360569

`-(n/or(n, -2))`
-/

namespace A026741.P15704949145281360569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

end

end A026741.P15704949145281360569

namespace A026741

/-- `-(n/or(n, -2))` -/
def P15704949145281360569.Spec : Prop :=
  ∀ n, P15704949145281360569.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P4810524364900510748

`n/2*C(2, n%2)`
-/

namespace A026741.P4810524364900510748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (Nat.choose 2 (n % 2) : ℚ)

end

end A026741.P4810524364900510748

namespace A026741

/-- `n/2*C(2, n%2)` -/
def P4810524364900510748.Spec : Prop :=
  ∀ n, P4810524364900510748.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P12735201620752798535

`n²%record[or(2, n-1)]`
-/

namespace A026741.P12735201620752798535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A026741.P12735201620752798535

namespace A026741

/-- `n²%record[or(2, n-1)]` -/
def P12735201620752798535.Spec : Prop :=
  ∀ n, P12735201620752798535.a n = A026741 n

end A026741

/-! ## A026741.P13196936922676961531

`floor(n/((n+1)%2+1))`
-/

namespace A026741.P13196936922676961531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (((n + 1) % 2 + 1 : ℕ) : ℚ)⌋

end

end A026741.P13196936922676961531

namespace A026741

/-- `floor(n/((n+1)%2+1))` -/
def P13196936922676961531.Spec : Prop :=
  ∀ n, P13196936922676961531.a n = A026741 n

end A026741

/-! ## A026741.P3904259134960991481

`(∑[or(1, n)]-1)%(n+1)`
-/

namespace A026741.P3904259134960991481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A026741.P3904259134960991481

namespace A026741

/-- `(∑[or(1, n)]-1)%(n+1)` -/
def P3904259134960991481.Spec : Prop :=
  ∀ n, P3904259134960991481.a n = A026741 n

end A026741

/-! ## A026741.P2785019729991378908

`∑{digits}[1-a(n-1), n/#]` with `a(0)=2`
-/

namespace A026741.P2785019729991378908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (n : ℚ) / (x : ℚ)).sum

end

end A026741.P2785019729991378908

namespace A026741

/-- `∑{digits}[1-a(n-1), n/#]` -/
def P2785019729991378908.Spec : Prop :=
  ∀ n, P2785019729991378908.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P8836710443049389989

`∑{e}[1-a(n-1), n/#]` with `a(0)=4`
-/

namespace A026741.P8836710443049389989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A026741.P8836710443049389989

namespace A026741

/-- `∑{e}[1-a(n-1), n/#]` -/
def P8836710443049389989.Spec : Prop :=
  ∀ n, P8836710443049389989.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P2700385116079881755

`floor(∑[n]/(a(n-1)+1))` with `a(0)=0`
-/

namespace A026741.P2700385116079881755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) + 1 : ℚ)⌋

end

end A026741.P2700385116079881755

namespace A026741

/-- `floor(∑[n]/(a(n-1)+1))` -/
def P2700385116079881755.Spec : Prop :=
  ∀ n, P2700385116079881755.a n = A026741 n

end A026741

/-! ## A026741.P13847810864055881203

`∏{digits}[1-a(n-1), n/#]` with `a(0)=2`
-/

namespace A026741.P13847810864055881203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (n : ℚ) / (x : ℚ)).prod

end

end A026741.P13847810864055881203

namespace A026741

/-- `∏{digits}[1-a(n-1), n/#]` -/
def P13847810864055881203.Spec : Prop :=
  ∀ n, P13847810864055881203.a n = (A026741 n : ℚ)

end A026741

/-! ## A026741.P7781920632179611703

`3*(n-1)-2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A026741.P7781920632179611703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * ((n : ℤ) - 1) - 2 * a (n - 1) - a (n - 2)

end

end A026741.P7781920632179611703

namespace A026741

/-- `3*(n-1)-2*a(n-1)-a(n-2)` -/
def P7781920632179611703.Spec : Prop :=
  ∀ n, P7781920632179611703.a n = A026741 n

end A026741

/-! ## A026741.P2320471034704800783

`n-A142150(n)`
-/

namespace A026741.P2320471034704800783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A142150 n

end

end A026741.P2320471034704800783

namespace A026741

/-- `n-A142150(n)` -/
def P2320471034704800783.Spec : Prop :=
  ∀ n, P2320471034704800783.a n = A026741 n

end A026741

/-! ## A026741.P16097148417552901445

`n/2*A000034(n)`
-/

namespace A026741.P16097148417552901445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000034 n : ℚ)

end

end A026741.P16097148417552901445

namespace A026741

/-- `n/2*A000034(n)` -/
def P16097148417552901445.Spec : Prop :=
  ∀ n, P16097148417552901445.a n = (A026741 n : ℚ)

end A026741

/-!
# A026742: a(n) = T(n, floor(n/2)), T given by A026736.

The programs for A026742, the canonical program `A026742.P5946613676768836754` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026742 has offset 0).

The definition of A026742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026742.P5946613676768836754

`abs(A026676(n)-Δ[A026676(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A026742

/-- `abs(A026676(n)-Δ[A026676(n)])` -/
def P5946613676768836754.Spec : Prop :=
  ∀ n, P5946613676768836754.a n = A026742 n

theorem P5946613676768836754.correct : P5946613676768836754.Spec := by
  intro n
  simp only [A026742]

end A026742

/-! ## A026742.P12160777582825405916

`(A026676(n)-Δ[A026676(n)])*A033999(n)`
-/

namespace A026742.P12160777582825405916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026676 n - (f1 (n + 1) - f1 n)) * A033999 n

end

end A026742.P12160777582825405916

namespace A026742

/-- `(A026676(n)-Δ[A026676(n)])*A033999(n)` -/
def P12160777582825405916.Spec : Prop :=
  ∀ n, P12160777582825405916.a n = A026742 n

end A026742

/-! ## A026742.P4261118731176641036

`(A026676(n)-Δ[A026676(n)])*A165326(n+1)`
-/

namespace A026742.P4261118731176641036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026676 n - (f1 (n + 1) - f1 n)) * A165326 (n + 1)

end

end A026742.P4261118731176641036

namespace A026742

/-- `(A026676(n)-Δ[A026676(n)])*A165326(n+1)` -/
def P4261118731176641036.Spec : Prop :=
  ∀ n, P4261118731176641036.a n = A026742 n

end A026742

/-! ## A026742.P2046163754542895972

`A026736(∑[or(1, n)]-1)`
-/

namespace A026742.P2046163754542895972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A026742.P2046163754542895972

namespace A026742

/-- `A026736(∑[or(1, n)]-1)` -/
def P2046163754542895972.Spec : Prop :=
  ∀ n, P2046163754542895972.a n = A026742 n

end A026742

/-! ## A026742.P12915630378833337018

`A026736(ceil((n+1)²/2)-1)`
-/

namespace A026742.P12915630378833337018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (⌈((n + 1) ^ 2 : ℚ) / 2⌉ - 1).toNat

end

end A026742.P12915630378833337018

namespace A026742

/-- `A026736(ceil((n+1)²/2)-1)` -/
def P12915630378833337018.Spec : Prop :=
  ∀ n, P12915630378833337018.a n = A026742 n

end A026742

/-!
# A026743: a(n) = Sum_{j=0..n} T(n,j), T given by A026736.

The programs for A026743, the canonical program `A026743.P7713919475354622590` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026743 has offset 0).

The definition of A026743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026743.P3769277392289752451

`A000034(n)*A026847(A109613(n))`
-/

namespace A026743.P3769277392289752451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A026847 (A109613 n).toNat

end

end A026743.P3769277392289752451

namespace A026743

/-- `A000034(n)*A026847(A109613(n))` -/
def P3769277392289752451.Spec : Prop :=
  ∀ n, P3769277392289752451.a n = A026743 n

end A026743

/-! ## A026743.P18041188353682488104

`A000034(n)*A026678(A109613(n)-1)`
-/

namespace A026743.P18041188353682488104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A026678 (A109613 n - 1).toNat

end

end A026743.P18041188353682488104

namespace A026743

/-- `A000034(n)*A026678(A109613(n)-1)` -/
def P18041188353682488104.Spec : Prop :=
  ∀ n, P18041188353682488104.a n = A026743 n

end A026743

/-! ## A026743.P12301373035514461489

`A026732(n+1)-A026677(n)`
-/

namespace A026743.P12301373035514461489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (n + 1) - A026677 n

end

end A026743.P12301373035514461489

namespace A026743

/-- `A026732(n+1)-A026677(n)` -/
def P12301373035514461489.Spec : Prop :=
  ∀ n, P12301373035514461489.a n = A026743 n

end A026743

/-! ## A026743.P405687232537083845

`A026732(n+1)-∑[A026733(n)]`
-/

namespace A026743.P405687232537083845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026743.P405687232537083845

namespace A026743

/-- `A026732(n+1)-∑[A026733(n)]` -/
def P405687232537083845.Spec : Prop :=
  ∀ n, P405687232537083845.a n = A026743 n

end A026743

/-! ## A026743.P7713919475354622590

`Δ[A026734(n)]-A026677(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A026743

/-- `Δ[A026734(n)]-A026677(n)` -/
def P7713919475354622590.Spec : Prop :=
  ∀ n, P7713919475354622590.a n = A026743 n

theorem P7713919475354622590.correct : P7713919475354622590.Spec := by
  intro n
  simp only [A026743]

end A026743

/-! ## A026743.P13064715525531242556

`Δ[A026734(n)]-∑[A026733(n)]`
-/

namespace A026743.P13064715525531242556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A026743.P13064715525531242556

namespace A026743

/-- `Δ[A026734(n)]-∑[A026733(n)]` -/
def P13064715525531242556.Spec : Prop :=
  ∀ n, P13064715525531242556.a n = A026743 n

end A026743

/-!
# A026744: a(n) = Sum_{j=0..floor(n/2)} T(n,j), T given by A026736.

The programs for A026744, there is no canonical definition to state claims against.
-/

/-! ## A026744.P17683520141344923729

`A026733(n)+A026742(n)-A026731(n)`
-/

namespace A026744.P17683520141344923729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n + (A026742 n - A026731 n)

end

end A026744.P17683520141344923729

/-!
# A026745: a(n) = Sum_{j=0..n} Sum_{i=0..n} T(j,i), T given by A026736.

The programs for A026745, the canonical program `A026745.P14770233917658089792` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026745 has offset 0).

The definition of A026745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026745.P14770233917658089792

`∑[A026743(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A026745

/-- `∑[A026743(n)]` -/
def P14770233917658089792.Spec : Prop :=
  ∀ n, P14770233917658089792.a n = A026745 n

theorem P14770233917658089792.correct : P14770233917658089792.Spec := by
  intro n
  simp only [A026745]

end A026745

/-! ## A026745.P1174414554020849036

`∑[A026732(n+1)-A026677(n)]`
-/

namespace A026745.P1174414554020849036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (n + 1) - A026677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026745.P1174414554020849036

namespace A026745

/-- `∑[A026732(n+1)-A026677(n)]` -/
def P1174414554020849036.Spec : Prop :=
  ∀ n, P1174414554020849036.a n = A026745 n

end A026745

/-! ## A026745.P7368392372947070942

`A026743(A004525(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A026745.P7368392372947070942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026743 (A004525 (2 * n)).toNat + a (n - 1)

end

end A026745.P7368392372947070942

namespace A026745

/-- `A026743(A004525(2*n))+a(n-1)` -/
def P7368392372947070942.Spec : Prop :=
  ∀ n, P7368392372947070942.a n = A026745 n

end A026745

/-! ## A026745.P1030570472446279573

`A026743(n%A026743(n))+a(n-1)` with `a(0)=1`
-/

namespace A026745.P1030570472446279573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026743 (Int.tmod (n : ℤ) (A026743 n)).toNat + a (n - 1)

end

end A026745.P1030570472446279573

namespace A026745

/-- `A026743(n%A026743(n))+a(n-1)` -/
def P1030570472446279573.Spec : Prop :=
  ∀ n, P1030570472446279573.a n = A026745 n

end A026745

/-! ## A026745.P18242993132734273631

`A026743(A300293(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A026745.P18242993132734273631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026743 (A300293 (2 * n + 1)).toNat + a (n - 1)

end

end A026745.P18242993132734273631

namespace A026745

/-- `A026743(A300293(2*n+1))+a(n-1)` -/
def P18242993132734273631.Spec : Prop :=
  ∀ n, P18242993132734273631.a n = A026745 n

end A026745

/-!
# A026746: a(n) = Sum_{k=0..floor(n/2)} T(n-k,k), T given by A026736.

The programs for A026746, there is no canonical definition to state claims against.
-/

/-! ## A026746.P11167817489799816232

`A026735(n+2)-A026680(n+1)`
-/

namespace A026746.P11167817489799816232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026735 (n + 2) - A026680 (n + 1)

end

end A026746.P11167817489799816232

/-! ## A026746.P4737988992215447966

`A319642(n)-A000989(A212804(n))`
-/

namespace A026746.P4737988992215447966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - A000989 (A212804 n).toNat

end

end A026746.P4737988992215447966

/-! ## A026746.P6925088648283179790

`A344742(A304790(n))`
-/

namespace A026746.P6925088648283179790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A304790 n).toNat

end

end A026746.P6925088648283179790

/-! ## A026746.P1578515442610426711

`A039216(floor(∑[A166742(n+1)]/9)+1)`
-/

namespace A026746.P1578515442610426711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039216 (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9⌋ + 1).toNat

end

end A026746.P1578515442610426711

/-! ## A026746.P11261641006641464391

`A069623(A148506(n)+∏{e}[n+1, #+1])`
-/

namespace A026746.P11261641006641464391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A148506 n + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A026746.P11261641006641464391

/-!
# A026747: Triangular array T read by rows: T(n,0)=T(n,n)=1 for n >= 0; for n >= 2 and 1 <= k <= n-1, T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k) if n is even and 1 <= k <= n/2, else T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026747, there is no canonical definition to state claims against.
-/

/-! ## A026747.P713575976904020620

`A124761(A122538(n))+A026670(n)`
-/

namespace A026747.P713575976904020620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A122538 n).toNat + A026670 n

end

end A026747.P713575976904020620

/-! ## A026747.P17396074527149590522

`A124761(A122538(n))+A095791(A334218(n)²)`
-/

namespace A026747.P17396074527149590522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A122538 n).toNat + A095791 (A334218 n ^ 2).toNat

end

end A026747.P17396074527149590522

/-! ## A026747.P7672927013571161407

`A182786(A144395(n+1))+A124761(A122538(n))`
-/

namespace A026747.P7672927013571161407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182786 (A144395 (n + 1)).toNat + A124761 (A122538 n).toNat

end

end A026747.P7672927013571161407

/-! ## A026747.P7066545824217183886

`A319951(2*A144463(n))+A124761(A122538(n))`
-/

namespace A026747.P7066545824217183886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (2 * A144463 n).toNat + A124761 (A122538 n).toNat

end

end A026747.P7066545824217183886

/-! ## A026747.P14336076864994332099

`A102683(A000045(n))+A026670(n)`
-/

namespace A026747.P14336076864994332099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A000045 n).toNat + A026670 n

end

end A026747.P14336076864994332099

/-!
# A026748: a(n) = T(2n,n), T given by A026747.

The programs for A026748, there is no canonical definition to state claims against.
-/

/-! ## A026748.P17134648925195666986

`A026753(2*n)`
-/

namespace A026748.P17134648925195666986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (2 * n)

end

end A026748.P17134648925195666986

/-! ## A026748.P1769762695891815388

`A026753(n+n)/gcd(n, n+1)`
-/

namespace A026748.P1769762695891815388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026753 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A026748.P1769762695891815388

/-! ## A026748.P2662463180849190423

`record[A026753(A014681(n))]`
-/

namespace A026748.P2662463180849190423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P2662463180849190423

/-! ## A026748.P90208621277917826

`record[A026753(A006257(n)+1)]`
-/

namespace A026748.P90208621277917826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P90208621277917826

/-! ## A026748.P980912400512342898

`record[A026753(A026741(n)+1)]`
-/

namespace A026748.P980912400512342898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P980912400512342898

/-! ## A026748.P11788522546084714602

`record[A026753(A106617(n)+1)]`
-/

namespace A026748.P11788522546084714602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A106617 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P11788522546084714602

/-! ## A026748.P10969770496841846678

`record[A026753(A227140(n)+1)]`
-/

namespace A026748.P10969770496841846678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A227140 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P10969770496841846678

/-! ## A026748.P10010958351492377203

`record[A026753(A093178(n)-1)]`
-/

namespace A026748.P10010958351492377203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P10010958351492377203

/-! ## A026748.P5183549289064634541

`record[A026753(A053830(n)+n)]`
-/

namespace A026748.P5183549289064634541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A053830 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P5183549289064634541

/-! ## A026748.P7663031515812769190

`record[A026753(n/A093178(n))]`
-/

namespace A026748.P7663031515812769190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P7663031515812769190

/-! ## A026748.P8508516311522866000

`record[root(A026753(n), A000034(n))]`
-/

namespace A026748.P8508516311522866000
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026753 n : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P8508516311522866000

/-! ## A026748.P11057497785430238977

`record[A026753(n)/A276391(n+1)]`
-/

namespace A026748.P11057497785430238977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026753 n : ℚ) / (A276391 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P11057497785430238977

/-! ## A026748.P435592035577071562

`record[A026753(1-A020639(n+1)+n)]`
-/

namespace A026748.P435592035577071562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (1 - A020639 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026748.P435592035577071562

/-! ## A026748.P13557294214666614595

`2*A026869(2*n)-A026869(2*n+1)`
-/

namespace A026748.P13557294214666614595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026869 (2 * n) - A026869 (2 * n + 1)

end

end A026748.P13557294214666614595

/-! ## A026748.P16463049041915774330

`2*A026755(2*n)-A026755(2*n+1)`
-/

namespace A026748.P16463049041915774330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026755 (2 * n) - A026755 (2 * n + 1)

end

end A026748.P16463049041915774330

/-! ## A026748.P646248353811340628

`A026753(n+n)+1-A026747(∑[n])`
-/

namespace A026748.P646248353811340628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (n + n) + (1 - A026747 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A026748.P646248353811340628

/-!
# A026749: a(n) = T(2n,n-1), T given by A026747.

The programs for A026749, there is no canonical definition to state claims against.
-/

/-! ## A026749.P5346392054696307002

`A026751(n+2)-A026748(n+1)`
-/

namespace A026749.P5346392054696307002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026751 (n + 2) - A026748 (n + 1)

end

end A026749.P5346392054696307002

/-! ## A026749.P17350032490971517775

`A026751(n+2)-A026753(2*(n+1))`
-/

namespace A026749.P17350032490971517775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026751 (n + 2) - A026753 (2 * (n + 1))

end

end A026749.P17350032490971517775

/-! ## A026749.P6805164039630434846

`A026753(2*n+3)-A026748(n+1)`
-/

namespace A026749.P6805164039630434846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (2 * n + 3) - A026748 (n + 1)

end

end A026749.P6805164039630434846

/-! ## A026749.P3767756691577556795

`A026753(2*n+3)-A026753(2*(n+1))`
-/

namespace A026749.P3767756691577556795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (2 * n + 3) - A026753 (2 * (n + 1))

end

end A026749.P3767756691577556795

/-! ## A026749.P6285621635088833650

`A026747((2*n+3)*(n+1)+n)`
-/

namespace A026749.P6285621635088833650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 ((2 * n + 3) * (n + 1) + n)

end

end A026749.P6285621635088833650

/-!
# A026750: a(n) = T(2n,n-2), T given by A026747.

The programs for A026750, there is no canonical definition to state claims against.
-/

/-! ## A026750.P360532638000852040

`A026752(n+3)-A026749(n+2)`
-/

namespace A026750.P360532638000852040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026752 (n + 3) - A026749 (n + 2)

end

end A026750.P360532638000852040

/-! ## A026750.P1216870766540036167

`A026747(A090288(n+1))`
-/

namespace A026750.P1216870766540036167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A090288 (n + 1)).toNat

end

end A026750.P1216870766540036167

/-! ## A026750.P10150743001458450426

`A026747(A016825(∑[n+2]))`
-/

namespace A026750.P10150743001458450426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026750.P10150743001458450426

/-! ## A026750.P11438746738963846905

`A026747(A059993(n+1)+1)`
-/

namespace A026750.P11438746738963846905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A059993 (n + 1) + 1).toNat

end

end A026750.P11438746738963846905

/-! ## A026750.P1815095935978733830

`A026747(A004767(∑[n+2])-1)`
-/

namespace A026750.P1815095935978733830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A004767 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A026750.P1815095935978733830

/-! ## A026750.P8313064530547574644

`record[A026747(A156681(n+1)-2)]`
-/

namespace A026750.P8313064530547574644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A156681 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026750.P8313064530547574644

/-! ## A026750.P4571505975572882600

`A026747(A005893(n+2)+2*n)`
-/

namespace A026750.P4571505975572882600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A005893 (n + 2) + (2 * n : ℤ)).toNat

end

end A026750.P4571505975572882600

/-!
# A026751: a(n) = T(2n-1,n-1), T given by A026747.

The programs for A026751, there is no canonical definition to state claims against.
-/

/-! ## A026751.P8022428687912724964

`A026753(Δ[n²])`
-/

namespace A026751.P8022428687912724964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026751.P8022428687912724964

/-! ## A026751.P2394028072665392592

`record[A026753(A004442(n))]`
-/

namespace A026751.P2394028072665392592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P2394028072665392592

/-! ## A026751.P6362142825075599602

`record[A026753(A006257(n))]`
-/

namespace A026751.P6362142825075599602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P6362142825075599602

/-! ## A026751.P17984000824892698861

`record[A026753(A026741(n))]`
-/

namespace A026751.P17984000824892698861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P17984000824892698861

/-! ## A026751.P17216267995538834902

`record[A026753(A093178(n))]`
-/

namespace A026751.P17216267995538834902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P17216267995538834902

/-! ## A026751.P1344518856264108171

`record[A026753(A106617(n))]`
-/

namespace A026751.P1344518856264108171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A106617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P1344518856264108171

/-! ## A026751.P11721198392192267832

`record[A026753(A227140(n))]`
-/

namespace A026751.P11721198392192267832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A227140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P11721198392192267832

/-! ## A026751.P2348164394496577302

`record[A026753(A014681(n)+1)]`
-/

namespace A026751.P2348164394496577302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P2348164394496577302

/-! ## A026751.P6115020183725274436

`Δ[A026748(n)]-A026762(n+1)`
-/

namespace A026751.P6115020183725274436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026762 (n + 1)

end

end A026751.P6115020183725274436

/-! ## A026751.P8512018045594060338

`record[A026753(A053830(n+1)+n)]`
-/

namespace A026751.P8512018045594060338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (A053830 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P8512018045594060338

/-! ## A026751.P5221162607573886569

`record[A026753(n/A000034(n+1))]`
-/

namespace A026751.P5221162607573886569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026751.P5221162607573886569

/-! ## A026751.P11951831437550920959

`Δ[A026753(2*n)]-A026762(n+1)`
-/

namespace A026751.P11951831437550920959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026762 (n + 1)

end

end A026751.P11951831437550920959

/-! ## A026751.P13534998673812207644

`2*A026753(2*n+1)/A000034(2*n+1)`
-/

namespace A026751.P13534998673812207644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A026753 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A026751.P13534998673812207644

/-! ## A026751.P272715074077990084

`2*A026753(2*n+1)/A020639(2*(n+1))`
-/

namespace A026751.P272715074077990084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A026753 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A026751.P272715074077990084

/-!
# A026752: a(n) = T(2n-1,n-2), T given by A026747.

The programs for A026752, there is no canonical definition to state claims against.
-/

/-! ## A026752.P9262044273422803775

`Δ[A026749(n+1)]-A026751(n+2)`
-/

namespace A026752.P9262044273422803775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026751 (n + 2)

end

end A026752.P9262044273422803775

/-! ## A026752.P4491470159568315660

`A026749(n+2)-(A026751(n+2)+A026749(n+1))`
-/

namespace A026752.P4491470159568315660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026749 (n + 2) - (A026751 (n + 2) + A026749 (n + 1))

end

end A026752.P4491470159568315660

/-! ## A026752.P16716806178373007270

`A026747(∑[4*n+6])`
-/

namespace A026752.P16716806178373007270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026752.P16716806178373007270

/-! ## A026752.P14272823457955149278

`record[A026747(n*A278539(n+2))]`
-/

namespace A026752.P14272823457955149278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 ((n : ℤ) * A278539 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026752.P14272823457955149278

/-! ## A026752.P17132199452730490002

`A000035(2*n+1)*A026747(A054000(n+2))`
-/

namespace A026752.P17132199452730490002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A026747 (A054000 (n + 2)).toNat

end

end A026752.P17132199452730490002

/-! ## A026752.P8211928978709303402

`A026747(A054000(n+2))*A040001(2*n+1)`
-/

namespace A026752.P8211928978709303402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A054000 (n + 2)).toNat * A040001 (2 * n + 1)

end

end A026752.P8211928978709303402

/-!
# A026753: a(n) = T(n, floor(n/2)), T given by A026747.

The programs for A026753, there is no canonical definition to state claims against.
-/

/-! ## A026753.P10987548123578285030

`A026747(∑[or(1, n)]-1)`
-/

namespace A026753.P10987548123578285030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A026753.P10987548123578285030

/-! ## A026753.P10617313654431221999

`A026747(∑[n]+floor(n/2))`
-/

namespace A026753.P10617313654431221999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A026753.P10617313654431221999

/-! ## A026753.P2638247526109547026

`or(char[1], A026747(A007590(n)+n))`
-/

namespace A026753.P2638247526109547026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026747 (A007590 n + (n : ℤ)).toNat)

end

end A026753.P2638247526109547026

/-! ## A026753.P11533640903146632032

`gcd(A000038(n), A026747(A007590(n)+n))`
-/

namespace A026753.P11533640903146632032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026747 (A007590 n + (n : ℤ)).toNat)

end

end A026753.P11533640903146632032

/-! ## A026753.P2798638803078194390

`A026747(A007590(n)+n)/A007318(∑[n])`
-/

namespace A026753.P2798638803078194390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026747 (A007590 n + (n : ℤ)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A026753.P2798638803078194390

/-!
# A026754: a(n) = Sum{k=0..n} T(n,k), T given by A026747.

The programs for A026754, there is no canonical definition to state claims against.
-/

/-! ## A026754.P8517744168393975577

`xor(A004524(A018324(n+1)), A018323(n+1))`
-/

namespace A026754.P8517744168393975577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004524 (A018324 (n + 1)).toNat) (A018323 (n + 1))

end

end A026754.P8517744168393975577

/-! ## A026754.P12627017168442844323

`abs(Δ[A206814(a(n-2)+1)])` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A026754.P12627017168442844323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  A206814 (f1 (n - 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A026754.P12627017168442844323

/-! ## A026754.P11052461339582744739

`A171611(A295933(n+1))`
-/

namespace A026754.P11052461339582744739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A295933 (n + 1)).toNat

end

end A026754.P11052461339582744739

/-!
# A026755: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026747.

The programs for A026755, there is no canonical definition to state claims against.
-/

/-! ## A026755.P3660231984099770983

`A003056(C(A313713(n), A069910(n)))`
-/

namespace A026755.P3660231984099770983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A313713 n).toNat (A069910 n).toNat)

end

end A026755.P3660231984099770983

/-! ## A026755.P18417313877502006930

`A003056(C(A063656(3*n+1), A004526(n)))`
-/

namespace A026755.P18417313877502006930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A063656 (3 * n + 1)).toNat (A004526 n).toNat)

end

end A026755.P18417313877502006930

/-!
# A026756: a(n) = Sum_{i=0..n} Sum_{j=0..n} T(i,j), T given by A026747.

The programs for A026756, there is no canonical definition to state claims against.
-/

/-! ## A026756.P9276441596007217013

`∑[A026754(n)]`
-/

namespace A026756.P9276441596007217013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026756.P9276441596007217013

/-! ## A026756.P3895720686570062170

`a(n-1)+A026754(n)*A057427(n)` with `a(0)=1`
-/

namespace A026756.P3895720686570062170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A026754 n * A057427 n

end

end A026756.P3895720686570062170

/-! ## A026756.P263058336443494797

`a(n-1)+A026754(n)%A033453(n)` with `a(0)=1`
-/

namespace A026756.P263058336443494797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A026754 n) (A033453 n)

end

end A026756.P263058336443494797

/-! ## A026756.P1207814122470035229

`record[∑[A026747(n)]/A047858(n)]`
-/

namespace A026756.P1207814122470035229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A047858 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026756.P1207814122470035229

/-! ## A026756.P9976603337874725167

`record[∑[A026747(n)]/A131415(n)]`
-/

namespace A026756.P9976603337874725167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A131415 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026756.P9976603337874725167

/-!
# A026757: a(n) = Sum_{k=0..floor(n/2)} T(n-k,k), T given by A026747.

The programs for A026757, there is no canonical definition to state claims against.
-/

/-! ## A026757.P15017729781163031369

`∑[A112318(A052546(n))]`
-/

namespace A026757.P15017729781163031369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A052546 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026757.P15017729781163031369

/-! ## A026757.P9213561165806681317

`A298402(n)+A001222(A149623(n))`
-/

namespace A026757.P9213561165806681317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298402 n + A001222 (A149623 n).toNat

end

end A026757.P9213561165806681317

/-! ## A026757.P17957047459496315158

`A194339(A318395(n))+A011679(n)`
-/

namespace A026757.P17957047459496315158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 (A318395 n).toNat + A011679 n

end

end A026757.P17957047459496315158

/-! ## A026757.P13712892835598612736

`A003056(xor(A092255(n), A320643(n+1)))`
-/

namespace A026757.P13712892835598612736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A092255 n) (A320643 (n + 1))).toNat

end

end A026757.P13712892835598612736

/-! ## A026757.P6375133108272687363

`A176416(A165673(n+1))+A053638(n+1)`
-/

namespace A026757.P6375133108272687363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176416 (A165673 (n + 1)).toNat + A053638 (n + 1)

end

end A026757.P6375133108272687363

/-!
# A026758: Triangular array T read by rows: T(n,0)=T(n,n)=1 for n >= 0; for n >= 2 and 1 <= k <= n-1, T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k) if n is odd and 1 <= k <= (n-1)/2, else T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026758, there is no canonical definition to state claims against.
-/

/-! ## A026758.P8879005413982815612

`A100950(A155586(n))+A026725(n)`
-/

namespace A026758.P8879005413982815612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100950 (A155586 n).toNat + A026725 n

end

end A026758.P8879005413982815612

/-! ## A026758.P2411170276509873576

`A026725(n)+A185284(n)+A184159(A155586(n))`
-/

namespace A026758.P2411170276509873576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 n + (A185284 n + A184159 (A155586 n).toNat)

end

end A026758.P2411170276509873576

/-! ## A026758.P12656466756326100532

`A184159(A155586(n)+A143518(n+1))+A026725(n)`
-/

namespace A026758.P12656466756326100532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (A155586 n + A143518 (n + 1)).toNat + A026725 n

end

end A026758.P12656466756326100532

/-! ## A026758.P88907510306686814

`A026725(n)+A021913(A194794(n+1))`
-/

namespace A026758.P88907510306686814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 n + A021913 (A194794 (n + 1)).toNat

end

end A026758.P88907510306686814

/-! ## A026758.P15852849946375586553

`A026769(n)-A124761(A122538(n))`
-/

namespace A026758.P15852849946375586553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 n - A124761 (A122538 n).toNat

end

end A026758.P15852849946375586553

/-!
# A026759: a(n) = T(2n, n), T given by A026758.

The programs for A026759, the canonical program `A026759.P13760565404652770883` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026759 has offset 0).

The definition of A026759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026759.P13760565404652770883

`A002212(n+1)-A000245(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026759

/-- `A002212(n+1)-A000245(n)` -/
def P13760565404652770883.Spec : Prop :=
  ∀ n, P13760565404652770883.a n = A026759 n

theorem P13760565404652770883.correct : P13760565404652770883.Spec := by
  intro n
  simp only [A026759]

end A026759

/-! ## A026759.P1968533154733663666

`A026764(2*n)`
-/

namespace A026759.P1968533154733663666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (2 * n)

end

end A026759.P1968533154733663666

namespace A026759

/-- `A026764(2*n)` -/
def P1968533154733663666.Spec : Prop :=
  ∀ n, P1968533154733663666.a n = A026759 n

end A026759

/-! ## A026759.P13805831868404798734

`record[A026764(n)/(-1)^n]`
-/

namespace A026759.P13805831868404798734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026764 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026759.P13805831868404798734

namespace A026759

/-- `record[A026764(n)/(-1)^n]` -/
def P13805831868404798734.Spec : Prop :=
  ∀ n, P13805831868404798734.a n = (A026759 n : ℚ)

end A026759

/-! ## A026759.P6372813813586897984

`record[A026764(A014681(n))]`
-/

namespace A026759.P6372813813586897984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026759.P6372813813586897984

namespace A026759

/-- `record[A026764(A014681(n))]` -/
def P6372813813586897984.Spec : Prop :=
  ∀ n, P6372813813586897984.a n = A026759 n

end A026759

/-! ## A026759.P9022498647013726644

`record[A026764(A026741(n)+1)]`
-/

namespace A026759.P9022498647013726644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026759.P9022498647013726644

namespace A026759

/-- `record[A026764(A026741(n)+1)]` -/
def P9022498647013726644.Spec : Prop :=
  ∀ n, P9022498647013726644.a n = A026759 n

end A026759

/-! ## A026759.P3148364220659034534

`record[A026764(A106617(n)+1)]`
-/

namespace A026759.P3148364220659034534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A106617 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026759.P3148364220659034534

namespace A026759

/-- `record[A026764(A106617(n)+1)]` -/
def P3148364220659034534.Spec : Prop :=
  ∀ n, P3148364220659034534.a n = A026759 n

end A026759

/-! ## A026759.P16026952144219984882

`record[A026764(A093178(n)-1)]`
-/

namespace A026759.P16026952144219984882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026759.P16026952144219984882

namespace A026759

/-- `record[A026764(A093178(n)-1)]` -/
def P16026952144219984882.Spec : Prop :=
  ∀ n, P16026952144219984882.a n = A026759 n

end A026759

/-! ## A026759.P17517761877001677099

`record[A026764(n/A093178(n))]`
-/

namespace A026759.P17517761877001677099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026759.P17517761877001677099

namespace A026759

/-- `record[A026764(n/A093178(n))]` -/
def P17517761877001677099.Spec : Prop :=
  ∀ n, P17517761877001677099.a n = A026759 n

end A026759

/-! ## A026759.P6627922624489533004

`A278301(n)+A039919(n+1)`
-/

namespace A026759.P6627922624489533004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278301 n + A039919 (n + 1)

end

end A026759.P6627922624489533004

namespace A026759

/-- `A278301(n)+A039919(n+1)` -/
def P6627922624489533004.Spec : Prop :=
  ∀ n, P6627922624489533004.a n = A026759 n

end A026759

/-! ## A026759.P5139291061276403348

`record[A026764(A004442(A093178(n)))]`
-/

namespace A026759.P5139291061276403348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A004442 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026759.P5139291061276403348

namespace A026759

/-- `record[A026764(A004442(A093178(n)))]` -/
def P5139291061276403348.Spec : Prop :=
  ∀ n, P5139291061276403348.a n = A026759 n

end A026759

/-! ## A026759.P12309472619946976159

`A002212(n+1)+A000108(n)-A000108(n+1)`
-/

namespace A026759.P12309472619946976159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A000108 n - A000108 (n + 1))

end

end A026759.P12309472619946976159

namespace A026759

/-- `A002212(n+1)+A000108(n)-A000108(n+1)` -/
def P12309472619946976159.Spec : Prop :=
  ∀ n, P12309472619946976159.a n = A026759 n

end A026759

/-! ## A026759.P12817156165899718346

`Δ[A007317(n+1)-A000108(n)]`
-/

namespace A026759.P12817156165899718346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026759.P12817156165899718346

namespace A026759

/-- `Δ[A007317(n+1)-A000108(n)]` -/
def P12817156165899718346.Spec : Prop :=
  ∀ n, P12817156165899718346.a n = A026759 n

end A026759

/-! ## A026759.P8683027410056290230

`2*A026880(2*n+1)-A026880(2*(n+1))`
-/

namespace A026759.P8683027410056290230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026880 (2 * n + 1) - A026880 (2 * (n + 1))

end

end A026759.P8683027410056290230

namespace A026759

/-- `2*A026880(2*n+1)-A026880(2*(n+1))` -/
def P8683027410056290230.Spec : Prop :=
  ∀ n, P8683027410056290230.a n = A026759 n

end A026759

/-! ## A026759.P8891436564690554623

`A007317(n+2)-(A007317(n+1)+A000245(n))`
-/

namespace A026759.P8891436564690554623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2) - (A007317 (n + 1) + A000245 n)

end

end A026759.P8891436564690554623

namespace A026759

/-- `A007317(n+2)-(A007317(n+1)+A000245(n))` -/
def P8891436564690554623.Spec : Prop :=
  ∀ n, P8891436564690554623.a n = A026759 n

end A026759

/-!
# A026760: a(n) = T(2n, n-1), T given by A026758.

The programs for A026760, there is no canonical definition to state claims against.
-/

/-! ## A026760.P10946049661277608642

`Δ[A026748(n)-∑[A002212(n)]]`
-/

namespace A026760.P10946049661277608642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026760.P10946049661277608642

/-! ## A026760.P1918233107086287416

`Δ[A026748(n)]-A002212(n+1)`
-/

namespace A026760.P1918233107086287416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002212 (n + 1)

end

end A026760.P1918233107086287416

/-! ## A026760.P9989583281236731805

`Δ[A026748(n)-A007317(n+1)]`
-/

namespace A026760.P9989583281236731805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n - A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026760.P9989583281236731805

/-! ## A026760.P12421687901619848648

`Δ[A026762(n+1)-∑[A026759(n)]]`
-/

namespace A026760.P12421687901619848648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026762 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026760.P12421687901619848648

/-! ## A026760.P58019956182068069

`Δ[A026762(n+1)]-A026759(n+1)`
-/

namespace A026760.P58019956182068069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026759 (n + 1)

end

end A026760.P58019956182068069

/-! ## A026760.P6716063367095212090

`A026762(n+2)-(A026762(n+1)+A026759(n+1))`
-/

namespace A026760.P6716063367095212090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026762 (n + 2) - (A026762 (n + 1) + A026759 (n + 1))

end

end A026760.P6716063367095212090

/-! ## A026760.P2796267794277689905

`A026758(A090288(n)+1)`
-/

namespace A026760.P2796267794277689905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A090288 n + 1).toNat

end

end A026760.P2796267794277689905

/-! ## A026760.P17504990279091898036

`A026758(A132209(n+1))`
-/

namespace A026760.P17504990279091898036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A132209 (n + 1)).toNat

end

end A026760.P17504990279091898036

/-! ## A026760.P401317493225361457

`A026758(A142463(n+1))`
-/

namespace A026760.P401317493225361457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A142463 (n + 1)).toNat

end

end A026760.P401317493225361457

/-! ## A026760.P11460119577347361375

`A026758(eq[2, A114327(n)])`
-/

namespace A026760.P11460119577347361375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026760.P11460119577347361375

/-!
# A026761: a(n) = T(2n, n-2), T given by A026758.

The programs for A026761, there is no canonical definition to state claims against.
-/

/-! ## A026761.P16937904602822096836

`A026763(n+3)-(A026763(n+2)+A026760(n+2))`
-/

namespace A026761.P16937904602822096836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026763 (n + 3) - (A026763 (n + 2) + A026760 (n + 2))

end

end A026761.P16937904602822096836

/-! ## A026761.P17661083107742428585

`A026758(A090288(n+1))`
-/

namespace A026761.P17661083107742428585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A090288 (n + 1)).toNat

end

end A026761.P17661083107742428585

/-! ## A026761.P375415377101384758

`A026758(eq[4, A114327(n)])`
-/

namespace A026761.P375415377101384758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026761.P375415377101384758

/-! ## A026761.P7117155017272999376

`A026758(Δ[A037237(n)+n²])`
-/

namespace A026761.P7117155017272999376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (f1 (n + 1) - f1 n).toNat

end

end A026761.P7117155017272999376

/-! ## A026761.P12125052390825705027

`A026758(Δ[2*A077415(n+2)])`
-/

namespace A026761.P12125052390825705027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (f1 (n + 1) - f1 n).toNat

end

end A026761.P12125052390825705027

/-! ## A026761.P17057710096172260774

`A026758(lcm(2, Δ[A077415(n+2)]))`
-/

namespace A026761.P17057710096172260774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A026761.P17057710096172260774

/-! ## A026761.P14802917733165945894

`A026758(A067728(n+1)-2*n)`
-/

namespace A026761.P14802917733165945894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A067728 (n + 1) - (2 * n : ℤ)).toNat

end

end A026761.P14802917733165945894

/-! ## A026761.P11668188512156442440

`A026758(A067728(n+1)-n-n)`
-/

namespace A026761.P11668188512156442440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A067728 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A026761.P11668188512156442440

/-! ## A026761.P9573676646617407546

`A026758(A004768(n)+A001844(n))`
-/

namespace A026761.P9573676646617407546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A004768 n + A001844 n).toNat

end

end A026761.P9573676646617407546

/-!
# A026762: a(n) = T(2n-1,n-1), T given by A026758. Also T(2n+1,n+1), T given by A026747.

The programs for A026762, there is no canonical definition to state claims against.
-/

/-! ## A026762.P14331141098186769485

`A026764(Δ[n²])`
-/

namespace A026762.P14331141098186769485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026762.P14331141098186769485

/-! ## A026762.P7664099944136812393

`Δ[A165538(n+1)]`
-/

namespace A026762.P7664099944136812393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026762.P7664099944136812393

/-! ## A026762.P15075808428849473896

`record[and((-1)^n, A026764(n))]`
-/

namespace A026762.P15075808428849473896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A026764 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026762.P15075808428849473896

/-! ## A026762.P11275662983929498131

`((n+1)%2)!*A026764(2*n+1)`
-/

namespace A026762.P11275662983929498131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1) % 2) : ℤ) * A026764 (2 * n + 1)

end

end A026762.P11275662983929498131

/-! ## A026762.P7275924040856604917

`record[A026764(A004442(n))]`
-/

namespace A026762.P7275924040856604917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026762.P7275924040856604917

/-! ## A026762.P12413803466644029211

`record[A026764(A026741(n))]`
-/

namespace A026762.P12413803466644029211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026762.P12413803466644029211

/-! ## A026762.P1146179639109617586

`record[A026764(A093178(n))]`
-/

namespace A026762.P1146179639109617586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026762.P1146179639109617586

/-! ## A026762.P2995565532425385451

`record[A026764(A106617(n))]`
-/

namespace A026762.P2995565532425385451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A106617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026762.P2995565532425385451

/-! ## A026762.P8254430263867153554

`record[A026764(A014681(n)+1)]`
-/

namespace A026762.P8254430263867153554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026762.P8254430263867153554

/-! ## A026762.P3503053687183726353

`A165538(n+2)-A165538(n+1)`
-/

namespace A026762.P3503053687183726353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165538 (n + 2) - A165538 (n + 1)

end

end A026762.P3503053687183726353

/-! ## A026762.P10894311999886877270

`A026764(2*n+1)*A247477(2*n+1)`
-/

namespace A026762.P10894311999886877270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (2 * n + 1) * A247477 (2 * n + 1)

end

end A026762.P10894311999886877270

/-! ## A026762.P2419633994118401933

`Δ[A026748(n)]-A026751(n+1)`
-/

namespace A026762.P2419633994118401933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026751 (n + 1)

end

end A026762.P2419633994118401933

/-! ## A026762.P367755688868734859

`Δ[A026748(n)]-A026753(Δ[n²])`
-/

namespace A026762.P367755688868734859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026753 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A026762.P367755688868734859

/-! ## A026762.P9262422343729136084

`Δ[A026753(2*n)]-A026751(n+1)`
-/

namespace A026762.P9262422343729136084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026751 (n + 1)

end

end A026762.P9262422343729136084

/-! ## A026762.P1653746505933281369

`Δ[A026753(2*n)]-A026753(2*n+1)`
-/

namespace A026762.P1653746505933281369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026753 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026753 (2 * n + 1)

end

end A026762.P1653746505933281369

/-! ## A026762.P539055245500560758

`A026748(n+1)-(A026751(n+1)+A026748(n))`
-/

namespace A026762.P539055245500560758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 (n + 1) - (A026751 (n + 1) + A026748 n)

end

end A026762.P539055245500560758

/-! ## A026762.P6691636157505861178

`A026748(n+1)-(A026753(2*n+1)+A026753(2*n))`
-/

namespace A026762.P6691636157505861178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 (n + 1) - (A026753 (2 * n + 1) + A026753 (2 * n))

end

end A026762.P6691636157505861178

/-! ## A026762.P4511396023608444331

`A026764(2*n+1)*(2*n+1)/A004442(2*n)`
-/

namespace A026762.P4511396023608444331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026764 (2 * n + 1) * (2 * n + 1 : ℤ) : ℚ) / (A004442 (2 * n) : ℚ)

end

end A026762.P4511396023608444331

/-!
# A026763: a(n) = T(2n-1,n-2), T given by A026758.

The programs for A026763, there is no canonical definition to state claims against.
-/

/-! ## A026763.P1845720913961493558

`A026760(n+2)-A026762(n+2)`
-/

namespace A026763.P1845720913961493558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026760 (n + 2) - A026762 (n + 2)

end

end A026763.P1845720913961493558

/-! ## A026763.P11697214086358307290

`A026751(n+2)-Δ[A007317(n+2)]`
-/

namespace A026763.P11697214086358307290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026751 (n + 2) - (f1 (n + 1) - f1 n)

end

end A026763.P11697214086358307290

/-! ## A026763.P12900232012209584112

`A026760(n+2)-A026764(2*n+3)`
-/

namespace A026763.P12900232012209584112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026760 (n + 2) - A026764 (2 * n + 3)

end

end A026763.P12900232012209584112

/-! ## A026763.P18331005344263328182

`∑[A026761(n+2)+A026760(n+1)]-A026761(n+2)`
-/

namespace A026763.P18331005344263328182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026761 (n + 2) + A026760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026761 (n + 2)

end

end A026763.P18331005344263328182

/-! ## A026763.P3863248697654580004

`A026758(2*(n+1)*(n+3))`
-/

namespace A026763.P3863248697654580004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (2 * ((n + 1) * (n + 3)))

end

end A026763.P3863248697654580004

/-! ## A026763.P9519277337279474295

`record[A026758(∑[A014682(n)+2])]`
-/

namespace A026763.P9519277337279474295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026763.P9519277337279474295

/-!
# A026764: a(n) = T(n, floor(n/2)), T given by A026758.

The programs for A026764, there is no canonical definition to state claims against.
-/

/-! ## A026764.P4923794430484104326

`A026758(floor(n²/2+n))`
-/

namespace A026764.P4923794430484104326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 ⌊(n ^ 2 : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A026764.P4923794430484104326

/-! ## A026764.P9407448497555393033

`((-1)^n)²*A026758(A007590(n)+n)`
-/

namespace A026764.P9407448497555393033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A026758 (A007590 n + (n : ℤ)).toNat

end

end A026764.P9407448497555393033

/-! ## A026764.P6912417380940489732

`A026758(A007590(n)+n)+A000038(n+1)`
-/

namespace A026764.P6912417380940489732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A007590 n + (n : ℤ)).toNat + A000038 (n + 1)

end

end A026764.P6912417380940489732

/-! ## A026764.P17904585853475721829

`A026758(A007590(n)+n)+A015885(2*n+3)`
-/

namespace A026764.P17904585853475721829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A007590 n + (n : ℤ)).toNat + A015885 (2 * n + 3)

end

end A026764.P17904585853475721829

/-! ## A026764.P15902438036691801210

`A026758(A007590(n)+n)%A077409(n)`
-/

namespace A026764.P15902438036691801210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026758 (A007590 n + (n : ℤ)).toNat) (A077409 n)

end

end A026764.P15902438036691801210

/-! ## A026764.P9984317515874369706

`A026758(A007590(n)+n)*A322354(A236143(n+1))`
-/

namespace A026764.P9984317515874369706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A007590 n + (n : ℤ)).toNat * A322354 (A236143 (n + 1)).toNat

end

end A026764.P9984317515874369706

/-!
# A026765: a(n) = Sum_{k=0..n} T(n,k), T given by A026758.

The programs for A026765, there is no canonical definition to state claims against.
-/

/-! ## A026765.P11753427717792585849

`A000267(A066313(n+1)*A290890(n))`
-/

namespace A026765.P11753427717792585849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A066313 (n + 1) * A290890 n).toNat

end

end A026765.P11753427717792585849

/-! ## A026765.P6302361150833814770

`A000930(2*n+1)-A339861(A301877(n+1))`
-/

namespace A026765.P6302361150833814770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n + 1) - A339861 (A301877 (n + 1)).toNat

end

end A026765.P6302361150833814770

/-!
# A026766: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026758.

The programs for A026766, there is no canonical definition to state claims against.
-/

/-! ## A026766.P6251803951976159269

`A176075(A302182(n))`
-/

namespace A026766.P6251803951976159269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (A302182 n).toNat

end

end A026766.P6251803951976159269

/-! ## A026766.P5961143281964983773

`A003056(A194805(∑[xor(1, n)]))`
-/

namespace A026766.P5961143281964983773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A194805 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026766.P5961143281964983773

/-! ## A026766.P13283881414567128968

`A026709(n)-A225230(A001003(n))`
-/

namespace A026766.P13283881414567128968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026709 n - A225230 (A001003 n).toNat

end

end A026766.P13283881414567128968

/-! ## A026766.P6762537492388388125

`xor(A052146(A150388(n)), A280748(n))`
-/

namespace A026766.P6762537492388388125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052146 (A150388 n).toNat) (A280748 n)

end

end A026766.P6762537492388388125

/-!
# A026767: a(n) = Sum_{i=0..n} Sum_{j=0..n} T(i,j), T given by A026758.

The programs for A026767, there is no canonical definition to state claims against.
-/

/-! ## A026767.P7866104971864604647

`∑[A026765(n)]`
-/

namespace A026767.P7866104971864604647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026767.P7866104971864604647

/-! ## A026767.P17831693591189260015

`A026765(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A026767.P17831693591189260015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026765 (A004526 (2 * n)).toNat + a (n - 1)

end

end A026767.P17831693591189260015

/-! ## A026767.P14972963952527031040

`a(n-1)+A026765(A000007(n)+n)` with `a(0)=1`
-/

namespace A026767.P14972963952527031040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A026765 (A000007 n + (n : ℤ)).toNat

end

end A026767.P14972963952527031040

/-! ## A026767.P16842331377088166262

`a(n-1)-(A000007(n)-A026765(n))` with `a(0)=1`
-/

namespace A026767.P16842331377088166262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A026765 n)

end

end A026767.P16842331377088166262

/-! ## A026767.P18204475314500557339

`a(n-1)+gcd(n, A000188(n+1))*A026765(n)` with `a(0)=1`
-/

namespace A026767.P18204475314500557339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Int.gcd (n : ℤ) (A000188 (n + 1)) : ℤ) * A026765 n

end

end A026767.P18204475314500557339

/-!
# A026768: a(n) = Sum_{k=0..floor(n/2)} T(n-k,k), T given by A026758.

The programs for A026768, there is no canonical definition to state claims against.
-/

/-! ## A026768.P3834932323512358981

`A308952(n)+A101888(A320356(n))`
-/

namespace A026768.P3834932323512358981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308952 n + A101888 (A320356 n).toNat

end

end A026768.P3834932323512358981

/-! ## A026768.P5884731398959729349

`A137735(A004396(n)*A227237(n))`
-/

namespace A026768.P5884731398959729349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A004396 n * A227237 n).toNat

end

end A026768.P5884731398959729349

/-! ## A026768.P16715568251590315080

`A252474(A026735(n))`
-/

namespace A026768.P16715568251590315080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A026735 n).toNat

end

end A026768.P16715568251590315080

/-! ## A026768.P3429697640603422547

`A199426(A351018(n))`
-/

namespace A026768.P3429697640603422547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199426 (A351018 n).toNat

end

end A026768.P3429697640603422547

/-! ## A026768.P2704470263328424265

`A122921(A116831(n+1))`
-/

namespace A026768.P2704470263328424265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A116831 (n + 1)).toNat

end

end A026768.P2704470263328424265

/-!
# A026769: Triangular array T read by rows: T(n,0)=T(n,n)=1 for n >= 0; T(2,1)=2; for n >= 3 and 1<=k<=n-1, T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k) if 1<=k<=(n-1)/2, else T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026769, there is no canonical definition to state claims against.
-/

/-! ## A026769.P11909490563752503459

`A124761(A122538(n))+A026758(n)`
-/

namespace A026769.P11909490563752503459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A122538 n).toNat + A026758 n

end

end A026769.P11909490563752503459

/-! ## A026769.P16629412862117109226

`A124761(A008277(n+2))+A026758(n)`
-/

namespace A026769.P16629412862117109226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A008277 (n + 2)).toNat + A026758 n

end

end A026769.P16629412862117109226

/-! ## A026769.P3576099142105942010

`A356874(A108625(n)%A356857(2*(n+1)))`
-/

namespace A026769.P3576099142105942010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (Int.tmod (A108625 n) (A356857 (2 * (n + 1)))).toNat

end

end A026769.P3576099142105942010

/-! ## A026769.P6952020580027272632

`A067693(A090981(n))`
-/

namespace A026769.P6952020580027272632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A090981 n).toNat

end

end A026769.P6952020580027272632

/-! ## A026769.P9914071800858703852

`A068063(A109960(n))`
-/

namespace A026769.P9914071800858703852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A109960 n).toNat

end

end A026769.P9914071800858703852

/-!
# A026770: a(n) = T(2n,n), T given by A026769.

The programs for A026770, there is no canonical definition to state claims against.
-/

/-! ## A026770.P16410872632096029919

`A026775(2*n)`
-/

namespace A026770.P16410872632096029919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (2 * n)

end

end A026770.P16410872632096029919

/-! ## A026770.P109222098577886190

`record[A026775(and(n, n+1))]`
-/

namespace A026770.P109222098577886190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P109222098577886190

/-! ## A026770.P2064495052672643560

`record[A026775(n)/(-1)^n]`
-/

namespace A026770.P2064495052672643560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026775 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P2064495052672643560

/-! ## A026770.P10387728502503799243

`record[A026775(xor(1, n)%(n+1))]`
-/

namespace A026770.P10387728502503799243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (Nat.xor 1 n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P10387728502503799243

/-! ## A026770.P10102385291390912509

`record[A026775(gcd(n-1, xor(1, n)))]`
-/

namespace A026770.P10102385291390912509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (Int.gcd ((n : ℤ) - 1) (Nat.xor 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P10102385291390912509

/-! ## A026770.P7857129996446576543

`record[A026775(A131452(n))]`
-/

namespace A026770.P7857129996446576543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (A131452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P7857129996446576543

/-! ## A026770.P3403960783699545655

`record[A026775(Δ[A110660(n)])]`
-/

namespace A026770.P3403960783699545655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P3403960783699545655

/-! ## A026770.P15484820923209681536

`record[A026775(A026741(n)+1)]`
-/

namespace A026770.P15484820923209681536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P15484820923209681536

/-! ## A026770.P15678475769750597179

`record[A026775(n-A167877(n))]`
-/

namespace A026770.P15678475769750597179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 ((n : ℤ) - A167877 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P15678475769750597179

/-! ## A026770.P10920587512237363233

`record[A026775(A033558(n+1)+1)]`
-/

namespace A026770.P10920587512237363233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (A033558 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P10920587512237363233

/-! ## A026770.P1042153482294384592

`record[A026775(1-A035327(n)+n)]`
-/

namespace A026770.P1042153482294384592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (1 - A035327 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P1042153482294384592

/-! ## A026770.P18046392040268829059

`record[A026891(n+1)-Δ[A026891(n+1)]]`
-/

namespace A026770.P18046392040268829059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026891 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026891 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026770.P18046392040268829059

/-! ## A026770.P10203883333062918696

`2*A026891(2*n+1)-A026891(2*(n+1))`
-/

namespace A026770.P10203883333062918696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026891 (2 * n + 1) - A026891 (2 * (n + 1))

end

end A026770.P10203883333062918696

/-! ## A026770.P9919261916287863569

`gcd(A000038(n), A026775(A005843(n)))`
-/

namespace A026770.P9919261916287863569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026775 (A005843 n).toNat)

end

end A026770.P9919261916287863569

/-! ## A026770.P16818819397783766986

`lcm(A000034(n), A026775(A005843(n)))`
-/

namespace A026770.P16818819397783766986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A026775 (A005843 n).toNat)

end

end A026770.P16818819397783766986

/-! ## A026770.P12847743305922859709

`or(A000007(n), A026775(A004277(n)))`
-/

namespace A026770.P12847743305922859709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026775 (A004277 n).toNat)

end

end A026770.P12847743305922859709

/-! ## A026770.P14215488912259764267

`A026775(A005843(n))%A266507(n)`
-/

namespace A026770.P14215488912259764267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026775 (A005843 n).toNat) (A266507 n)

end

end A026770.P14215488912259764267

/-!
# A026771: a(n) = T(2n,n-1), T given by A026769.

The programs for A026771, there is no canonical definition to state claims against.
-/

/-! ## A026771.P3702071355816473831

`A026781(n+1)-A006318(n+1)`
-/

namespace A026771.P3702071355816473831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 (n + 1) - A006318 (n + 1)

end

end A026771.P3702071355816473831

/-! ## A026771.P17764276810276375135

`A026781(n+1)-2*A001003(n+1)`
-/

namespace A026771.P17764276810276375135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 (n + 1) - 2 * A001003 (n + 1)

end

end A026771.P17764276810276375135

/-! ## A026771.P13893809535858580508

`A026784(n+1)+A026781(n)-A000108(n+1)`
-/

namespace A026771.P13893809535858580508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026784 (n + 1) + (A026781 n - A000108 (n + 1))

end

end A026771.P13893809535858580508

/-! ## A026771.P11805709258457224170

`A026781(n+1)-(A166228(n+1)+A166228(n))`
-/

namespace A026771.P11805709258457224170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 (n + 1) - (A166228 (n + 1) + A166228 n)

end

end A026771.P11805709258457224170

/-! ## A026771.P13920776196825464735

`Δ[A026773(n+1)-A026770(n)]-A026770(n)`
-/

namespace A026771.P13920776196825464735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026773 (n + 1) - A026770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026770 n

end

end A026771.P13920776196825464735

/-! ## A026771.P11408399642421941791

`Δ[A026773(n+1)]-(A026887(n)+A026773(n+1))`
-/

namespace A026771.P11408399642421941791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A026887 n + A026773 (n + 1))

end

end A026771.P11408399642421941791

/-! ## A026771.P11608329447164596686

`A026773(n+2)-(A026773(n+1)+A026770(n+1))`
-/

namespace A026771.P11608329447164596686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026773 (n + 2) - (A026773 (n + 1) + A026770 (n + 1))

end

end A026771.P11608329447164596686

/-! ## A026771.P12539527501075103820

`A026769(A090288(n)+1)`
-/

namespace A026771.P12539527501075103820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A090288 n + 1).toNat

end

end A026771.P12539527501075103820

/-! ## A026771.P1646331226790241591

`A026769(A132209(n+1))`
-/

namespace A026771.P1646331226790241591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A132209 (n + 1)).toNat

end

end A026771.P1646331226790241591

/-! ## A026771.P14011241294721297196

`A026769(A142463(n+1))`
-/

namespace A026771.P14011241294721297196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A142463 (n + 1)).toNat

end

end A026771.P14011241294721297196

/-!
# A026772: a(n) = T(2n, n-2), T given by A026769.

The programs for A026772, there is no canonical definition to state claims against.
-/

/-! ## A026772.P9518310176535587544

`Δ[A026774(n+2)-∑[A026771(n+1)]]`
-/

namespace A026772.P9518310176535587544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026771 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026774 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026772.P9518310176535587544

/-! ## A026772.P7803813444133202229

`A026774(n+3)-(A026774(n+2)+A026771(n+2))`
-/

namespace A026772.P7803813444133202229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026774 (n + 3) - (A026774 (n + 2) + A026771 (n + 2))

end

end A026772.P7803813444133202229

/-! ## A026772.P11875669682839525487

`A026769(A090288(n+1))`
-/

namespace A026772.P11875669682839525487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A090288 (n + 1)).toNat

end

end A026772.P11875669682839525487

/-! ## A026772.P27733260088625213

`A026769(eq[4, A114327(n)])`
-/

namespace A026772.P27733260088625213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026772.P27733260088625213

/-! ## A026772.P10630522470323164427

`A026769(A067728(n+1)-2*n)`
-/

namespace A026772.P10630522470323164427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A067728 (n + 1) - (2 * n : ℤ)).toNat

end

end A026772.P10630522470323164427

/-! ## A026772.P5798517881738693268

`A026769(A268581(n)+2*n+5)`
-/

namespace A026772.P5798517881738693268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A268581 n + (2 * n : ℤ) + 5).toNat

end

end A026772.P5798517881738693268

/-! ## A026772.P9315127201042291054

`A026769(A067728(n+1)-n-n)`
-/

namespace A026772.P9315127201042291054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A067728 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A026772.P9315127201042291054

/-! ## A026772.P3658718934475285208

`A026769(A099776(n+1)+A004766(n+1))`
-/

namespace A026772.P3658718934475285208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A099776 (n + 1) + A004766 (n + 1)).toNat

end

end A026772.P3658718934475285208

/-!
# A026773: a(n) = T(2n-1,n-1), T given by A026769. Also T(2n+1,n+1), T given by A026780.

The programs for A026773, the canonical program `A026773.P6203066424165419462` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026773 has offset 1).

The definition of A026773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026773.P6203066424165419462

`A006318(n+1)-A000108(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026773

/-- `A006318(n+1)-A000108(n+1)` -/
def P6203066424165419462.Spec : Prop :=
  ∀ n, P6203066424165419462.a n = A026773 (n + 1)

theorem P6203066424165419462.correct : P6203066424165419462.Spec := by
  intro n
  simp only [A026773, Nat.add_sub_cancel]

end A026773

/-! ## A026773.P14819235304945830253

`A026775(Δ[n²])`
-/

namespace A026773.P14819235304945830253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026773.P14819235304945830253

namespace A026773

/-- `A026775(Δ[n²])` -/
def P14819235304945830253.Spec : Prop :=
  ∀ n, P14819235304945830253.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P10586304095274583694

`record[and((-1)^n, A026775(n))]`
-/

namespace A026773.P10586304095274583694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A026775 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026773.P10586304095274583694

namespace A026773

/-- `record[and((-1)^n, A026775(n))]` -/
def P10586304095274583694.Spec : Prop :=
  ∀ n, P10586304095274583694.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P7867016413330052723

`record[A026775(A026741(n))]`
-/

namespace A026773.P7867016413330052723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026773.P7867016413330052723

namespace A026773

/-- `record[A026775(A026741(n))]` -/
def P7867016413330052723.Spec : Prop :=
  ∀ n, P7867016413330052723.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P2307159774967034889

`record[A026775(A033558(n+1))]`
-/

namespace A026773.P2307159774967034889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (A033558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026773.P2307159774967034889

namespace A026773

/-- `record[A026775(A033558(n+1))]` -/
def P2307159774967034889.Spec : Prop :=
  ∀ n, P2307159774967034889.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P2902916763523563569

`record[A026775(A131452(n)+1)]`
-/

namespace A026773.P2902916763523563569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (A131452 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026773.P2902916763523563569

namespace A026773

/-- `record[A026775(A131452(n)+1)]` -/
def P2902916763523563569.Spec : Prop :=
  ∀ n, P2902916763523563569.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P16512643943350986089

`A026770(n+1)-A026887(n)`
-/

namespace A026773.P16512643943350986089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 1) - A026887 n

end

end A026773.P16512643943350986089

namespace A026773

/-- `A026770(n+1)-A026887(n)` -/
def P16512643943350986089.Spec : Prop :=
  ∀ n, P16512643943350986089.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P17109028663249608576

`record[A026775(Δ[A110660(n)]+1)]`
-/

namespace A026773.P17109028663249608576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026773.P17109028663249608576

namespace A026773

/-- `record[A026775(Δ[A110660(n)]+1)]` -/
def P17109028663249608576.Spec : Prop :=
  ∀ n, P17109028663249608576.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P9724701327652842403

`Δ[A026781(n)]-A026784(n+1)`
-/

namespace A026773.P9724701327652842403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026784 (n + 1)

end

end A026773.P9724701327652842403

namespace A026773

/-- `Δ[A026781(n)]-A026784(n+1)` -/
def P9724701327652842403.Spec : Prop :=
  ∀ n, P9724701327652842403.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P1214275606658869607

`A025240(n+2)-A000108(n+1)`
-/

namespace A026773.P1214275606658869607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025240 (n + 2) - A000108 (n + 1)

end

end A026773.P1214275606658869607

namespace A026773

/-- `A025240(n+2)-A000108(n+1)` -/
def P1214275606658869607.Spec : Prop :=
  ∀ n, P1214275606658869607.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P10400922896305801091

`A155069(n+2)-A000108(n+1)`
-/

namespace A026773.P10400922896305801091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 2) - A000108 (n + 1)

end

end A026773.P10400922896305801091

namespace A026773

/-- `A155069(n+2)-A000108(n+1)` -/
def P10400922896305801091.Spec : Prop :=
  ∀ n, P10400922896305801091.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P7491008511240495028

`Δ[A026786(2*n)]-A026784(n+1)`
-/

namespace A026773.P7491008511240495028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026784 (n + 1)

end

end A026773.P7491008511240495028

namespace A026773

/-- `Δ[A026786(2*n)]-A026784(n+1)` -/
def P7491008511240495028.Spec : Prop :=
  ∀ n, P7491008511240495028.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P10333027933520885606

`Δ[A026781(n)]-A026786(2*n+1)`
-/

namespace A026773.P10333027933520885606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026786 (2 * n + 1)

end

end A026773.P10333027933520885606

namespace A026773

/-- `Δ[A026781(n)]-A026786(2*n+1)` -/
def P10333027933520885606.Spec : Prop :=
  ∀ n, P10333027933520885606.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P15928984591450342455

`A026775(2*n+1)%Δ[A026781(n)]`
-/

namespace A026773.P15928984591450342455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026775 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A026773.P15928984591450342455

namespace A026773

/-- `A026775(2*n+1)%Δ[A026781(n)]` -/
def P15928984591450342455.Spec : Prop :=
  ∀ n, P15928984591450342455.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P12877095903429938387

`Δ[A026786(2*n)]-A026786(2*n+1)`
-/

namespace A026773.P12877095903429938387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026786 (2 * n + 1)

end

end A026773.P12877095903429938387

namespace A026773

/-- `Δ[A026786(2*n)]-A026786(2*n+1)` -/
def P12877095903429938387.Spec : Prop :=
  ∀ n, P12877095903429938387.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P16126586206276664835

`A006318(n+1)-A060693(A000217(n+1))`
-/

namespace A026773.P16126586206276664835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (n + 1) - A060693 (A000217 (n + 1)).toNat

end

end A026773.P16126586206276664835

namespace A026773

/-- `A006318(n+1)-A060693(A000217(n+1))` -/
def P16126586206276664835.Spec : Prop :=
  ∀ n, P16126586206276664835.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P18258982590762057529

`A006318(n+1)+A014137(n)-A014137(n+1)`
-/

namespace A026773.P18258982590762057529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (n + 1) + (A014137 n - A014137 (n + 1))

end

end A026773.P18258982590762057529

namespace A026773

/-- `A006318(n+1)+A014137(n)-A014137(n+1)` -/
def P18258982590762057529.Spec : Prop :=
  ∀ n, P18258982590762057529.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P1772924242768988901

`A026781(n+1)-(A026784(n+1)+A026781(n))`
-/

namespace A026773.P1772924242768988901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 (n + 1) - (A026784 (n + 1) + A026781 n)

end

end A026773.P1772924242768988901

namespace A026773

/-- `A026781(n+1)-(A026784(n+1)+A026781(n))` -/
def P1772924242768988901.Spec : Prop :=
  ∀ n, P1772924242768988901.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P15392828189142840948

`A086616(n+1)-(A086616(n)+A000108(n+1))`
-/

namespace A026773.P15392828189142840948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086616 (n + 1) - (A086616 n + A000108 (n + 1))

end

end A026773.P15392828189142840948

namespace A026773

/-- `A086616(n+1)-(A086616(n)+A000108(n+1))` -/
def P15392828189142840948.Spec : Prop :=
  ∀ n, P15392828189142840948.a n = A026773 (n + 1)

end A026773

/-! ## A026773.P6433976211964546806

`A001003(n+1)+A001003(n+1)-A000108(n+1)`
-/

namespace A026773.P6433976211964546806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) + (A001003 (n + 1) - A000108 (n + 1))

end

end A026773.P6433976211964546806

namespace A026773

/-- `A001003(n+1)+A001003(n+1)-A000108(n+1)` -/
def P6433976211964546806.Spec : Prop :=
  ∀ n, P6433976211964546806.a n = A026773 (n + 1)

end A026773

/-!
# A026774: a(n) = T(2n-1,n-2), T given by A026769.

The programs for A026774, there is no canonical definition to state claims against.
-/

/-! ## A026774.P4956378872487399200

`Δ[A026771(n+1)]-A026773(n+2)`
-/

namespace A026774.P4956378872487399200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026773 (n + 2)

end

end A026774.P4956378872487399200

/-! ## A026774.P288511483978193110

`Δ[A026771(n+1)]-A026775(2*n+3)`
-/

namespace A026774.P288511483978193110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026775 (2 * n + 3)

end

end A026774.P288511483978193110

/-! ## A026774.P16429893036875557315

`A026771(n+2)-(A026773(n+2)+A026771(n+1))`
-/

namespace A026774.P16429893036875557315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026771 (n + 2) - (A026773 (n + 2) + A026771 (n + 1))

end

end A026774.P16429893036875557315

/-! ## A026774.P8505567575412565743

`A026769(2*(n+1)*(n+3))`
-/

namespace A026774.P8505567575412565743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (2 * ((n + 1) * (n + 3)))

end

end A026774.P8505567575412565743

/-! ## A026774.P276513368588306118

`record[A026769(∑[A014682(n)+2])]`
-/

namespace A026774.P276513368588306118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026774.P276513368588306118

/-! ## A026774.P8733946126026858231

`record[A026769((n+3)*A123108(n))]`
-/

namespace A026774.P8733946126026858231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 ((n + 3 : ℤ) * A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026774.P8733946126026858231

/-!
# A026775: a(n) = T(n, floor(n/2)), T given by A026769.

The programs for A026775, there is no canonical definition to state claims against.
-/

/-! ## A026775.P1511142575504326663

`A026769(2*A002620(n)+n)`
-/

namespace A026775.P1511142575504326663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (2 * A002620 n + (n : ℤ)).toNat

end

end A026775.P1511142575504326663

/-! ## A026775.P17859519603050688290

`A026769(∑[n]+n-A110654(n))`
-/

namespace A026775.P17859519603050688290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - A110654 n)).toNat

end

end A026775.P17859519603050688290

/-! ## A026775.P10581227374938252110

`A026769(n-(A110654(n)-∑[n]))`
-/

namespace A026775.P10581227374938252110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 ((n : ℤ) - (A110654 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A026775.P10581227374938252110

/-! ## A026775.P17472333294510554974

`A026769(∑[n+1]-A008619(n+1))`
-/

namespace A026775.P17472333294510554974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008619 (n + 1)).toNat

end

end A026775.P17472333294510554974

/-! ## A026775.P12059619328612346498

`A026769(eq[A114327(n)², A114327(n)])`
-/

namespace A026775.P12059619328612346498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026775.P12059619328612346498

/-! ## A026775.P13995077090374662364

`A026769(A000217(n)+A008619(n)-1)`
-/

namespace A026775.P13995077090374662364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A000217 n + (A008619 n - 1)).toNat

end

end A026775.P13995077090374662364

/-! ## A026775.P12923950884288751051

`A026769(A000217(n)-(1-A008619(n)))`
-/

namespace A026775.P12923950884288751051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A000217 n - (1 - A008619 n)).toNat

end

end A026775.P12923950884288751051

/-! ## A026775.P17173881904312217376

`A026769(A002620(n)+A002620(n)+n)`
-/

namespace A026775.P17173881904312217376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A002620 n + (A002620 n + (n : ℤ))).toNat

end

end A026775.P17173881904312217376

/-! ## A026775.P7688518949718257878

`A026769(A123108(n²)+n)`
-/

namespace A026775.P7688518949718257878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A123108 (n ^ 2) + (n : ℤ)).toNat

end

end A026775.P7688518949718257878

/-! ## A026775.P2226457283440032276

`A026769(A110654((n+1)²)-1)`
-/

namespace A026775.P2226457283440032276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A110654 ((n + 1) ^ 2) - 1).toNat

end

end A026775.P2226457283440032276

/-!
# A026776: a(n) = Sum_{k=0..n} T(n,k), T given by A026769.

The programs for A026776, there is no canonical definition to state claims against.
-/

/-! ## A026776.P13753548249782960749

`A001405(n)+A026787(n)-A026003(n)`
-/

namespace A026776.P13753548249782960749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A026787 n - A026003 n)

end

end A026776.P13753548249782960749

/-! ## A026776.P12367488454281070973

`A219652(A046661(n+1)-A275866(n+1))`
-/

namespace A026776.P12367488454281070973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A046661 (n + 1) - A275866 (n + 1)).toNat

end

end A026776.P12367488454281070973

/-! ## A026776.P3141920481404030721

`A342600(n)+A038548(A008933(n))`
-/

namespace A026776.P3141920481404030721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342600 n + A038548 (A008933 n).toNat

end

end A026776.P3141920481404030721

/-! ## A026776.P13917190208369972079

`A084634(n)-A319571(A099488(n))`
-/

namespace A026776.P13917190208369972079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084634 n - A319571 (A099488 n).toNat

end

end A026776.P13917190208369972079

/-!
# A026777: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026769.

The programs for A026777, there is no canonical definition to state claims against.
-/

/-! ## A026777.P988171324833970877

`A356137(A174783(n+1))`
-/

namespace A026777.P988171324833970877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356137 (A174783 (n + 1)).toNat

end

end A026777.P988171324833970877

/-! ## A026777.P823263244956701123

`A135661(A000257(n))+A027306(n)`
-/

namespace A026777.P823263244956701123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A000257 n).toNat + A027306 n

end

end A026777.P823263244956701123

/-! ## A026777.P1847877291699708389

`A356137(A037955(n)+A026008(n))`
-/

namespace A026777.P1847877291699708389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356137 (A037955 n + A026008 n).toNat

end

end A026777.P1847877291699708389

/-! ## A026777.P6947257802861090179

`A239963(A029651(n)-A137932(n))`
-/

namespace A026777.P6947257802861090179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239963 (A029651 n - A137932 n).toNat

end

end A026777.P6947257802861090179

/-!
# A026778: a(n) = Sum_{i=0..n} Sum_{j=0..n} T(i,j), T given by A026769.

The programs for A026778, there is no canonical definition to state claims against.
-/

/-! ## A026778.P6516615107416307798

`∑[A026776(n)]`
-/

namespace A026778.P6516615107416307798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026778.P6516615107416307798

/-! ## A026778.P15540664415357940306

`A026776(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A026778.P15540664415357940306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026776 (A028310 n).toNat + a (n - 1)

end

end A026778.P15540664415357940306

/-! ## A026778.P12064424468554516499

`A026776(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A026778.P12064424468554516499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026776 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A026778.P12064424468554516499

/-! ## A026778.P9198074938954312023

`A026776(n%A026776(n))+a(n-1)` with `a(0)=1`
-/

namespace A026778.P9198074938954312023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026776 (Int.tmod (n : ℤ) (A026776 n)).toNat + a (n - 1)

end

end A026778.P9198074938954312023

/-! ## A026778.P10553828611268815834

`∑[A001405(n)+A026787(n)-A026003(n)]`
-/

namespace A026778.P10553828611268815834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A026787 n - A026003 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026778.P10553828611268815834

/-!
# A026779: a(n) = Sum_{k=0..floor(n/2)} T(n-k,k), T given by A026769.

The programs for A026779, there is no canonical definition to state claims against.
-/

/-! ## A026779.P10580827188047875409

`A085089(A004524(n)+A001250(n))`
-/

namespace A026779.P10580827188047875409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A004524 n + A001250 n).toNat

end

end A026779.P10580827188047875409

/-! ## A026779.P1980931443484619186

`A085089(A004788(n)+A001250(n))`
-/

namespace A026779.P1980931443484619186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A004788 n + A001250 n).toNat

end

end A026779.P1980931443484619186

/-! ## A026779.P10193338923271620941

`A085089(A025480(n)+A001250(n))`
-/

namespace A026779.P10193338923271620941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A025480 n + A001250 n).toNat

end

end A026779.P10193338923271620941

/-! ## A026779.P664163718839702516

`A295724(n)+A103193(A103245(n))`
-/

namespace A026779.P664163718839702516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A103193 (A103245 n).toNat

end

end A026779.P664163718839702516

/-! ## A026779.P17177217917944750413

`A000194(A320346(n))-A341994(n)`
-/

namespace A026779.P17177217917944750413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A320346 n).toNat - A341994 n

end

end A026779.P17177217917944750413

/-!
# A026780: Triangular array T read by rows: T(n,0)=T(n,n)=1 for n >= 0; for n >= 2 and 1 <= k <= n-1, T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k) if 1 <= k <= floor(n/2), else T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026780, there is no canonical definition to state claims against.
-/

/-! ## A026780.P3955906498377165354

`A249488(∑[2*n]%A080036(n))`
-/

namespace A026780.P3955906498377165354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A026780.P3955906498377165354

/-! ## A026780.P8378330275198173124

`A249488(gcd(A010816(n), A061579(n)))`
-/

namespace A026780.P8378330275198173124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (Int.gcd (A010816 n) (A061579 n))

end

end A026780.P8378330275198173124

/-! ## A026780.P12961152315059417967

`A249488(abs(A061579(n)-A198954(n)))`
-/

namespace A026780.P12961152315059417967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 |A061579 n - A198954 n|.toNat

end

end A026780.P12961152315059417967

/-! ## A026780.P16893063067421838611

`A249488(A061579(n))`
-/

namespace A026780.P16893063067421838611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A061579 n).toNat

end

end A026780.P16893063067421838611

/-! ## A026780.P15377775448948608224

`A249488(A114327(n)+n)`
-/

namespace A026780.P15377775448948608224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A114327 n + (n : ℤ)).toNat

end

end A026780.P15377775448948608224

/-! ## A026780.P6460223322008707992

`A249488(A038722(n+1)-1)`
-/

namespace A026780.P6460223322008707992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A038722 (n + 1) - 1).toNat

end

end A026780.P6460223322008707992

/-! ## A026780.P9420149240465466411

`A249488(A038722(n+2))`
-/

namespace A026780.P9420149240465466411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A038722 (n + 2)).toNat

end

end A026780.P9420149240465466411

/-!
# A026781: a(n) = T(2n,n), T given by A026780.

The programs for A026781, there is no canonical definition to state claims against.
-/

/-! ## A026781.P7801422011128561428

`A026786(2*n)`
-/

namespace A026781.P7801422011128561428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (2 * n)

end

end A026781.P7801422011128561428

/-! ## A026781.P17543992402890661293

`record[A026786(n)/(-1)^n]`
-/

namespace A026781.P17543992402890661293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026786 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P17543992402890661293

/-! ## A026781.P5911239304869279863

`record[A026786((n-1)^(n%2))]`
-/

namespace A026781.P5911239304869279863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P5911239304869279863

/-! ## A026781.P9583912364675611034

`record[A026786(A014681(n))]`
-/

namespace A026781.P9583912364675611034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P9583912364675611034

/-! ## A026781.P6044798584907029788

`record[A026786(A026741(n)+1)]`
-/

namespace A026781.P6044798584907029788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P6044798584907029788

/-! ## A026781.P13386312218721834434

`record[A026786(A093178(n)-1)]`
-/

namespace A026781.P13386312218721834434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P13386312218721834434

/-! ## A026781.P5981063870367834760

`record[A026786(n/A093178(n))]`
-/

namespace A026781.P5981063870367834760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P5981063870367834760

/-! ## A026781.P16880502003395601429

`record[A026786(gcd(n, A014601(n)))]`
-/

namespace A026781.P16880502003395601429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (Int.gcd (n : ℤ) (A014601 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P16880502003395601429

/-! ## A026781.P6642791570603674011

`record[A026786(A000265(n+1)-1)]`
-/

namespace A026781.P6642791570603674011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P6642791570603674011

/-! ## A026781.P16657578768704384123

`record[A026786(A065190(n+1)-1)]`
-/

namespace A026781.P16657578768704384123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A065190 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P16657578768704384123

/-! ## A026781.P10583819436119322073

`record[A026786(A004275(A320536(n+1)))]`
-/

namespace A026781.P10583819436119322073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A004275 (A320536 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026781.P10583819436119322073

/-! ## A026781.P17825043588420138452

`A026773(n+1)+A000108(n)-A026770(n)`
-/

namespace A026781.P17825043588420138452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026773 (n + 1) + (A000108 n - A026770 n)

end

end A026781.P17825043588420138452

/-!
# A026782: a(n) = T(2n,n-1), T given by A026780.

The programs for A026782, there is no canonical definition to state claims against.
-/

/-! ## A026782.P3944321897233219088

`Δ[A026784(n+1)]-A026781(n+1)`
-/

namespace A026782.P3944321897233219088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026781 (n + 1)

end

end A026782.P3944321897233219088

/-! ## A026782.P15928816232162882063

`Δ[A026786(2*n+1)]-A026781(n+1)`
-/

namespace A026782.P15928816232162882063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026781 (n + 1)

end

end A026782.P15928816232162882063

/-! ## A026782.P9818146446337049608

`Δ[A026784(n+1)]-A026786(2*(n+1))`
-/

namespace A026782.P9818146446337049608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026786 (2 * (n + 1))

end

end A026782.P9818146446337049608

/-! ## A026782.P17009001379258278429

`A026784(n+2)-(A026784(n+1)+A026781(n+1))`
-/

namespace A026782.P17009001379258278429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026784 (n + 2) - (A026784 (n + 1) + A026781 (n + 1))

end

end A026782.P17009001379258278429

/-! ## A026782.P8987921964015531469

`A026780(A090288(n)+1)`
-/

namespace A026782.P8987921964015531469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A090288 n + 1).toNat

end

end A026782.P8987921964015531469

/-! ## A026782.P4070335060707526302

`A026780(A132209(n+1))`
-/

namespace A026782.P4070335060707526302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A132209 (n + 1)).toNat

end

end A026782.P4070335060707526302

/-! ## A026782.P1184125827141441527

`A026780(A142463(n+1))`
-/

namespace A026782.P1184125827141441527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A142463 (n + 1)).toNat

end

end A026782.P1184125827141441527

/-! ## A026782.P14431765932811267436

`A249488(A001844(n+1))`
-/

namespace A026782.P14431765932811267436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A001844 (n + 1)).toNat

end

end A026782.P14431765932811267436

/-! ## A026782.P13206516064839984645

`A249488(A099776(n+1))`
-/

namespace A026782.P13206516064839984645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A099776 (n + 1)).toNat

end

end A026782.P13206516064839984645

/-! ## A026782.P4509694063213871380

`A026780(A059993(n)+2)`
-/

namespace A026782.P4509694063213871380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A059993 n + 2).toNat

end

end A026782.P4509694063213871380

/-!
# A026783: a(n) = T(2n, n-2), T given by A026780.

The programs for A026783, there is no canonical definition to state claims against.
-/

/-! ## A026783.P6382612286306519420

`Δ[A026785(n+2)]-A026782(n+2)`
-/

namespace A026783.P6382612286306519420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026782 (n + 2)

end

end A026783.P6382612286306519420

/-! ## A026783.P4386521764192088339

`A026785(n+3)-(A026785(n+2)+A026782(n+2))`
-/

namespace A026783.P4386521764192088339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026785 (n + 3) - (A026785 (n + 2) + A026782 (n + 2))

end

end A026783.P4386521764192088339

/-! ## A026783.P18367946694856218540

`A026780(A090288(n+1))`
-/

namespace A026783.P18367946694856218540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A090288 (n + 1)).toNat

end

end A026783.P18367946694856218540

/-! ## A026783.P13062973084029803349

`A026780(eq[4, A114327(n)])`
-/

namespace A026783.P13062973084029803349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026783.P13062973084029803349

/-! ## A026783.P12894994295165404778

`record[A026780(2*A264754(n))]`
-/

namespace A026783.P12894994295165404778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (2 * A264754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026783.P12894994295165404778

/-! ## A026783.P4307051281660583821

`A026780(A059993(n+1)+1)`
-/

namespace A026783.P4307051281660583821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A059993 (n + 1) + 1).toNat

end

end A026783.P4307051281660583821

/-! ## A026783.P13633949397155381358

`A249488(A099776(n+2)+1)`
-/

namespace A026783.P13633949397155381358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A099776 (n + 2) + 1).toNat

end

end A026783.P13633949397155381358

/-! ## A026783.P4566168386431524978

`A026780(A132209(n+2)-1)`
-/

namespace A026783.P4566168386431524978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A132209 (n + 2) - 1).toNat

end

end A026783.P4566168386431524978

/-! ## A026783.P12620631344112400458

`A026780(A001844(n+2)-3)`
-/

namespace A026783.P12620631344112400458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A001844 (n + 2) - 3).toNat

end

end A026783.P12620631344112400458

/-! ## A026783.P2614774512728657432

`record[A026780(A005843(A264754(n)))]`
-/

namespace A026783.P2614774512728657432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A005843 (A264754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026783.P2614774512728657432

/-!
# A026784: a(n) = T(2n-1, n-1), T given by A026780.

The programs for A026784, there is no canonical definition to state claims against.
-/

/-! ## A026784.P3164567838711143837

`A026786(Δ[n²])`
-/

namespace A026784.P3164567838711143837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026784.P3164567838711143837

/-! ## A026784.P7947113887025604842

`record[A026786(n*n%2)]`
-/

namespace A026784.P7947113887025604842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026784.P7947113887025604842

/-! ## A026784.P7467076869671301073

`record[A026786(A026741(n))]`
-/

namespace A026784.P7467076869671301073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026784.P7467076869671301073

/-! ## A026784.P14706693347438622624

`record[A026786(A093178(n))]`
-/

namespace A026784.P14706693347438622624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026784.P14706693347438622624

/-! ## A026784.P1964760392633822104

`record[A026786(abs(A010816(n)))]`
-/

namespace A026784.P1964760392633822104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 |A010816 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026784.P1964760392633822104

/-! ## A026784.P239327526930206598

`record[A026786(A000265(n+1))]`
-/

namespace A026784.P239327526930206598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026784.P239327526930206598

/-! ## A026784.P2515880244164741294

`record[A026786(A014681(n)+1)]`
-/

namespace A026784.P2515880244164741294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026784.P2515880244164741294

/-! ## A026784.P3991094162611383550

`record[A026786(A065190(n+1))]`
-/

namespace A026784.P3991094162611383550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026784.P3991094162611383550

/-! ## A026784.P10945972149812525972

`Δ[A026781(n)]-A026773(n+1)`
-/

namespace A026784.P10945972149812525972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026773 (n + 1)

end

end A026784.P10945972149812525972

/-! ## A026784.P17997513446314553443

`Δ[A026786(2*n)]-A026773(n+1)`
-/

namespace A026784.P17997513446314553443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026786 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026773 (n + 1)

end

end A026784.P17997513446314553443

/-! ## A026784.P3634781621901313613

`Δ[A026781(n)]-A026775(2*n+1)`
-/

namespace A026784.P3634781621901313613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026775 (2 * n + 1)

end

end A026784.P3634781621901313613

/-! ## A026784.P2211972994826899020

`A026786(2*n+1)%Δ[A026781(n)]`
-/

namespace A026784.P2211972994826899020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026786 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A026784.P2211972994826899020

/-! ## A026784.P7070838887280481409

`gcd(A014601(n+1)*A026786(2*n+1), A026786(2*n+1))`
-/

namespace A026784.P7070838887280481409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014601 (n + 1) * A026786 (2 * n + 1)) (A026786 (2 * n + 1))

end

end A026784.P7070838887280481409

/-!
# A026785: a(n) = T(2n-1, n-2), T given by A026780.

The programs for A026785, there is no canonical definition to state claims against.
-/

/-! ## A026785.P4742838125919546299

`Δ[A026782(n+1)]-A026784(n+2)`
-/

namespace A026785.P4742838125919546299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026784 (n + 2)

end

end A026785.P4742838125919546299

/-! ## A026785.P13487082484350549511

`Δ[A026782(n+1)]-A026786(2*n+3)`
-/

namespace A026785.P13487082484350549511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026786 (2 * n + 3)

end

end A026785.P13487082484350549511

/-! ## A026785.P5444602346728629914

`A026782(n+2)-(A026784(n+2)+A026782(n+1))`
-/

namespace A026785.P5444602346728629914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026782 (n + 2) - (A026784 (n + 2) + A026782 (n + 1))

end

end A026785.P5444602346728629914

/-! ## A026785.P17921429342414753614

`A026780(2*(n+2)²-2)`
-/

namespace A026785.P17921429342414753614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (2 * (n + 2) ^ 2 - 2)

end

end A026785.P17921429342414753614

/-! ## A026785.P17045063947737361294

`record[A026780(n*A103391(n+2))]`
-/

namespace A026785.P17045063947737361294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 ((n : ℤ) * A103391 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026785.P17045063947737361294

/-!
# A026786: a(n) = T(n, floor(n/2)), T given by A026780.

The programs for A026786, there is no canonical definition to state claims against.
-/

/-! ## A026786.P18008855052837234743

`A026780(∑[or(1, n)]-1)`
-/

namespace A026786.P18008855052837234743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A026786.P18008855052837234743

/-! ## A026786.P18049156670937251686

`A249488(∑[n%2+n])`
-/

namespace A026786.P18049156670937251686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026786.P18049156670937251686

/-! ## A026786.P9711795185818985411

`A249488(floor((n+1)²/2))`
-/

namespace A026786.P9711795185818985411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A026786.P9711795185818985411

/-! ## A026786.P9052938052780104422

`A026780(∑[char[2*(n+1)]+n])`
-/

namespace A026786.P9052938052780104422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026786.P9052938052780104422

/-! ## A026786.P6411104177612366710

`A027246(A004895(n+1))`
-/

namespace A026786.P6411104177612366710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027246 (A004895 (n + 1)).toNat

end

end A026786.P6411104177612366710

/-!
# A026787: a(n) = Sum_{k=0..n} T(n,k), T given by A026780.

The programs for A026787, there is no canonical definition to state claims against.
-/

/-! ## A026787.P6591004832363024562

`A006138(n)-A285007((n+1)²)`
-/

namespace A026787.P6591004832363024562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n - A285007 ((n + 1) ^ 2)

end

end A026787.P6591004832363024562

/-! ## A026787.P17861091774006036640

`A248731(n)+A054635(A002450(n))`
-/

namespace A026787.P17861091774006036640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248731 n + A054635 (A002450 n).toNat

end

end A026787.P17861091774006036640

/-! ## A026787.P15890326075053225308

`A189590(n+1)+A123578(A089068(2*n))`
-/

namespace A026787.P15890326075053225308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189590 (n + 1) + A123578 (A089068 (2 * n)).toNat

end

end A026787.P15890326075053225308

/-! ## A026787.P15594644591556843301

`A248731(n)+A010060(A061777(2*(n+2)))`
-/

namespace A026787.P15594644591556843301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248731 n + A010060 (A061777 (2 * (n + 2))).toNat

end

end A026787.P15594644591556843301

/-!
# A026788: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026780.

The programs for A026788, there is no canonical definition to state claims against.
-/

/-! ## A026788.P2335631742402846653

`Δ[Δ[A026787(n)]]-A026787(n)`
-/

namespace A026788.P2335631742402846653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026787 n

end

end A026788.P2335631742402846653

/-! ## A026788.P6991861026491674905

`Δ[Δ[A026789(n)]-A026789(n)]`
-/

namespace A026788.P6991861026491674905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026788.P6991861026491674905

/-! ## A026788.P1682785726486576878

`A026787(n+2)%Δ[A026789(n)]`
-/

namespace A026788.P1682785726486576878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026787 (n + 2)) (f1 (n + 1) - f1 n)

end

end A026788.P1682785726486576878

/-! ## A026788.P15963944089221302782

`A026787(n+2)-2*A026787(n+1)`
-/

namespace A026788.P15963944089221302782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026787 (n + 2) - 2 * A026787 (n + 1)

end

end A026788.P15963944089221302782

/-! ## A026788.P5628688274082349739

`(A026789(n+2)-A026789(n))%A026787(n+1)`
-/

namespace A026788.P5628688274082349739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026789 (n + 2) - A026789 n) (A026787 (n + 1))

end

end A026788.P5628688274082349739

/-!
# A026789: a(n) = Sum_{i=0..n} Sum_{j=0..n} T(i,j), T given by A026780.

The programs for A026789, there is no canonical definition to state claims against.
-/

/-! ## A026789.P12435548951423154261

`∑[A026787(n)]`
-/

namespace A026789.P12435548951423154261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026789.P12435548951423154261

/-! ## A026789.P6022433587047663862

`a(n-1)+A026787(n)+A000038(n)` with `a(0)=1`
-/

namespace A026789.P6022433587047663862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A026787 n + A000038 n)

end

end A026789.P6022433587047663862

/-! ## A026789.P13655878030801400992

`A026787(n%A026787(n))+a(n-1)` with `a(0)=1`
-/

namespace A026789.P13655878030801400992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026787 (Int.tmod (n : ℤ) (A026787 n)).toNat + a (n - 1)

end

end A026789.P13655878030801400992

/-! ## A026789.P14497331796123366221

`a(n-1)-A026787(n)*A251552(A025177(n²))` with `a(0)=1, a(1)=3`
-/

namespace A026789.P14497331796123366221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - A026787 n * A251552 (A025177 (n ^ 2)).toNat

end

end A026789.P14497331796123366221

/-! ## A026789.P3316303653874331697

`record[∑[A026780(n)]/A048854(n)]`
-/

namespace A026789.P3316303653874331697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A048854 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026789.P3316303653874331697

/-!
# A026790: a(n) = Sum_{k=0..floor(n/2)} T(n-k,k), T given by A026780.

The programs for A026790, there is no canonical definition to state claims against.
-/

/-! ## A026790.P17064937978507020321

`floor(A000040(A293343(n+3))/A001358(3*n+4))`
-/

namespace A026790.P17064937978507020321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (A293343 (n + 3)).toNat : ℚ) / (A001358 (3 * n + 4) : ℚ)⌋

end

end A026790.P17064937978507020321

/-! ## A026790.P18175881484964627915

`round(sqrt(A334207(3^n+1)+1))-char[5]`
-/

namespace A026790.P18175881484964627915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A334207 (3 ^ n + 1) + 1 : ℝ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A026790.P18175881484964627915

/-! ## A026790.P923440444910053584

`A102450(A054151(n))`
-/

namespace A026790.P923440444910053584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A054151 n).toNat

end

end A026790.P923440444910053584

/-! ## A026790.P5453255557043225576

`A338331(A026713(n))`
-/

namespace A026790.P5453255557043225576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A026713 n).toNat

end

end A026790.P5453255557043225576

/-! ## A026790.P17430497702010634537

`A255232(A387783(n))`
-/

namespace A026790.P17430497702010634537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255232 (A387783 n).toNat

end

end A026790.P17430497702010634537

/-!
# A026791: Triangle in which n-th row lists juxtaposed lexicographically ordered partitions of n; e.g., the partitions of 3 (1+1+1,1+2,3) appear as 1,1,1,1,2,3 in row 3.

The programs for A026791, there is no canonical definition to state claims against.
-/

/-! ## A026791.P16987659347273702956

`gcd(A099312(n+2), A325039(3*n+2))`
-/

namespace A026791.P16987659347273702956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099312 (n + 2)) (A325039 (3 * n + 2))

end

end A026791.P16987659347273702956

/-! ## A026791.P12679217587767969462

`A020639(gcd(A000217(n), A347243(4*n+1)))`
-/

namespace A026791.P12679217587767969462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000217 n) (A347243 (4 * n + 1)))

end

end A026791.P12679217587767969462

/-! ## A026791.P2331863037427823221

`gcd(∑[n], A327804(A049094(n+1)))`
-/

namespace A026791.P2331863037427823221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A327804 (A049094 (n + 1)).toNat)

end

end A026791.P2331863037427823221

/-! ## A026791.P6192582764692905109

`A300826(A001973(n)+A000322(n))`
-/

namespace A026791.P6192582764692905109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (A001973 n + A000322 n).toNat

end

end A026791.P6192582764692905109

/-! ## A026791.P8304033969551956636

`A240837(A271325(Δ[A034956(n+1)]))`
-/

namespace A026791.P8304033969551956636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240837 (A271325 (f1 (n + 1) - f1 n).toNat).toNat

end

end A026791.P8304033969551956636

/-!
# A026792: List of juxtaposed reverse-lexicographically ordered partitions of the positive integers.

The programs for A026792, there is no canonical definition to state claims against.
-/

/-! ## A026792.P9933110069885060963

`A211993(n+1)+A211994(n+1)-A211992(n+1)`
-/

namespace A026792.P9933110069885060963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211993 (n + 1) + (A211994 (n + 1) - A211992 (n + 1))

end

end A026792.P9933110069885060963

/-! ## A026792.P4818749732751334651

`A334301(n+1)%A106575(n+1)`
-/

namespace A026792.P4818749732751334651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334301 (n + 1)) (A106575 (n + 1))

end

end A026792.P4818749732751334651

/-! ## A026792.P3073644931271633069

`lcm(A123271(n+2), A334301(n+1))`
-/

namespace A026792.P3073644931271633069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A334301 (n + 1))

end

end A026792.P3073644931271633069

/-! ## A026792.P481217589722677341

`and(A138865(n+1), A334301(n+1))`
-/

namespace A026792.P481217589722677341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138865 (n + 1)) (A334301 (n + 1))

end

end A026792.P481217589722677341

/-! ## A026792.P15422901548051182906

`and(A207374(n+1), A334301(n+1))`
-/

namespace A026792.P15422901548051182906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207374 (n + 1)) (A334301 (n + 1))

end

end A026792.P15422901548051182906

/-!
# A026793: Juxtaposed partitions of 1,2,3,... into distinct parts, ordered by number of terms and then lexicographically.

The programs for A026793, there is no canonical definition to state claims against.
-/

/-! ## A026793.P14829847674244931589

`A339443(A183572(n+1)^Δ[A276347(n+1)])`
-/

namespace A026793.P14829847674244931589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (SequenceMachineLib.roundAway ((A183572 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A026793.P14829847674244931589

/-! ## A026793.P15566989582665672572

`A339443(Δ[A276347(n+1)]²*A183572(n+1))`
-/

namespace A026793.P15566989582665672572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 ((f1 (n + 1) - f1 n) ^ 2 * A183572 (n + 1)).toNat

end

end A026793.P15566989582665672572

/-! ## A026793.P10431270124144534446

`A339443(A101776(n)+A055646(n))`
-/

namespace A026793.P10431270124144534446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A101776 n + A055646 n).toNat

end

end A026793.P10431270124144534446

/-! ## A026793.P11641675644934569319

`A339443(A102515(n)+A055646(n))`
-/

namespace A026793.P11641675644934569319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A102515 n + A055646 n).toNat

end

end A026793.P11641675644934569319

/-!
# A026794: Triangular array T read by rows: T(n,k) = number of partitions of n in which least part is k, 1<=k<=n.

The programs for A026794, there is no canonical definition to state claims against.
-/

/-! ## A026794.P11548061693170535509

`gcd(Δ[A026807(n+1)], A115359(n))`
-/

namespace A026794.P11548061693170535509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A115359 n)

end

end A026794.P11548061693170535509

/-! ## A026794.P15385904027105869579

`A027186(n+1)+A027185(n+1)`
-/

namespace A026794.P15385904027105869579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (n + 1) + A027185 (n + 1)

end

end A026794.P15385904027105869579

/-! ## A026794.P16843994468493351350

`A303810(A038722(n+1))`
-/

namespace A026794.P16843994468493351350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A038722 (n + 1)).toNat

end

end A026794.P16843994468493351350

/-! ## A026794.P12885216132136405196

`A303810(A061579(n)+1)`
-/

namespace A026794.P12885216132136405196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A061579 n + 1).toNat

end

end A026794.P12885216132136405196

/-! ## A026794.P7141805348559641875

`A303810(A278818(n))`
-/

namespace A026794.P7141805348559641875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A278818 n).toNat

end

end A026794.P7141805348559641875

/-! ## A026794.P8377829285326561548

`A026807(n+1)-A026807(n+2)%A322427(n+1)`
-/

namespace A026794.P8377829285326561548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - Int.tmod (A026807 (n + 2)) (A322427 (n + 1))

end

end A026794.P8377829285326561548

/-!
# A026795: Expansion of 1/((1-2*x)*(1-6*x)*(1-9*x)*(1-10*x)).

The programs for A026795, the canonical program `A026795.P467589967610920776` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026795 has offset 0).

The definition of A026795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026795.P467589967610920776

`(875*10^n-972*9^n+126*6^n-2^n)/28`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026795

/-- `(875*10^n-972*9^n+126*6^n-2^n)/28` -/
def P467589967610920776.Spec : Prop :=
  ∀ n, P467589967610920776.a n = (A026795 n : ℚ)

end A026795

/-! ## A026795.P16658364659923631754

`A016321(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A026795.P16658364659923631754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016321 n + 6 * a (n - 1)

end

end A026795.P16658364659923631754

namespace A026795

/-- `A016321(n)+6*a(n-1)` -/
def P16658364659923631754.Spec : Prop :=
  ∀ n, P16658364659923631754.a n = A026795 n

end A026795

/-! ## A026795.P7545743050290481156

`a(n-1)+A020595(n)+a(n-1)` with `a(0)=1`
-/

namespace A026795.P7545743050290481156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020595 n + a (n - 1))

end

end A026795.P7545743050290481156

namespace A026795

/-- `a(n-1)+A020595(n)+a(n-1)` -/
def P7545743050290481156.Spec : Prop :=
  ∀ n, P7545743050290481156.a n = A026795 n

end A026795

/-! ## A026795.P13931699378260377645

`Δ[A021202(n)-A021194(n)]`
-/

namespace A026795.P13931699378260377645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021202 n - A021194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026795.P13931699378260377645

namespace A026795

/-- `Δ[A021202(n)-A021194(n)]` -/
def P13931699378260377645.Spec : Prop :=
  ∀ n, P13931699378260377645.a n = A026795 n

end A026795

/-! ## A026795.P356079965089725808

`2*A025952(n)-A025940(n)`
-/

namespace A026795.P356079965089725808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025952 n - A025940 n

end

end A026795.P356079965089725808

namespace A026795

/-- `2*A025952(n)-A025940(n)` -/
def P356079965089725808.Spec : Prop :=
  ∀ n, P356079965089725808.a n = A026795 n

end A026795

/-! ## A026795.P9651072855483588724

`2*A026562(n)-A026561(n)`
-/

namespace A026795.P9651072855483588724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026562 n - A026561 n

end

end A026795.P9651072855483588724

namespace A026795

/-- `2*A026562(n)-A026561(n)` -/
def P9651072855483588724.Spec : Prop :=
  ∀ n, P9651072855483588724.a n = A026795 n

end A026795

/-! ## A026795.P10040442195965456368

`A016307(n+1)-A016306(n+1)`
-/

namespace A026795.P10040442195965456368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016307 (n + 1) - A016306 (n + 1)

end

end A026795.P10040442195965456368

namespace A026795

/-- `A016307(n+1)-A016306(n+1)` -/
def P10040442195965456368.Spec : Prop :=
  ∀ n, P10040442195965456368.a n = A026795 n

end A026795

/-! ## A026795.P13683147558301843688

`2*A028000(n)-A028002(n)`
-/

namespace A026795.P13683147558301843688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028000 n - A028002 n

end

end A026795.P13683147558301843688

namespace A026795

/-- `2*A028000(n)-A028002(n)` -/
def P13683147558301843688.Spec : Prop :=
  ∀ n, P13683147558301843688.a n = A026795 n

end A026795

/-!
# A026796: Number of partitions of n in which the least part is 3.

The programs for A026796, there is no canonical definition to state claims against.
-/

/-! ## A026796.P11747654298094344489

`A008483(abs(abs(1-n)-2))`
-/

namespace A026796.P11747654298094344489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 |(|1 - (n : ℤ)| - 2)|.toNat

end

end A026796.P11747654298094344489

/-! ## A026796.P181531674414246767

`A008483(n)-A008484(n)`
-/

namespace A026796.P181531674414246767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A008484 n

end

end A026796.P181531674414246767

/-! ## A026796.P4413723212157494770

`A008483(n)-A026797(n+4)`
-/

namespace A026796.P4413723212157494770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A026797 (n + 4)

end

end A026796.P4413723212157494770

/-! ## A026796.P16059626670492881540

`A002865(n)-(A085811(n+1)+A008484(n))`
-/

namespace A026796.P16059626670492881540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - (A085811 (n + 1) + A008484 n)

end

end A026796.P16059626670492881540

/-! ## A026796.P10553548747163699328

`Δ[A008484(n)-A195054(n)]`
-/

namespace A026796.P10553548747163699328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A195054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026796.P10553548747163699328

/-! ## A026796.P3181559816319078968

`Δ[A027340(n)-A027338(n)]`
-/

namespace A026796.P3181559816319078968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A027338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026796.P3181559816319078968

/-! ## A026796.P4628343260252396675

`Δ[A264401(A075349(n+1))]-A008484(n)`
-/

namespace A026796.P4628343260252396675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264401 (A075349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008484 n

end

end A026796.P4628343260252396675

/-! ## A026796.P13147434969260129206

`A027195(A233583(n+1))+A027189(A233583(n+1))`
-/

namespace A026796.P13147434969260129206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027195 (A233583 (n + 1)).toNat + A027189 (A233583 (n + 1)).toNat

end

end A026796.P13147434969260129206

/-! ## A026796.P3105422705996409527

`A026794(A152949(n+1))%A000837(n)`
-/

namespace A026796.P3105422705996409527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026794 (A152949 (n + 1)).toNat) (A000837 n)

end

end A026796.P3105422705996409527

/-! ## A026796.P2049344928533973660

`A026794(A167614(n+1))-A008484(n)`
-/

namespace A026796.P2049344928533973660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A167614 (n + 1)).toNat - A008484 n

end

end A026796.P2049344928533973660

/-!
# A026797: Number of partitions of n in which the least part is 4.

The programs for A026797, there is no canonical definition to state claims against.
-/

/-! ## A026797.P1705586566177184811

`A008484(abs(3-n))`
-/

namespace A026797.P1705586566177184811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 |3 - (n : ℤ)|.toNat

end

end A026797.P1705586566177184811

/-! ## A026797.P12342494713818244891

`A008484(n+1)-A185325(n+1)`
-/

namespace A026797.P12342494713818244891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1) - A185325 (n + 1)

end

end A026797.P12342494713818244891

/-! ## A026797.P4377383527875779308

`A008484(n+1)-A026798(n+6)`
-/

namespace A026797.P4377383527875779308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1) - A026798 (n + 6)

end

end A026797.P4377383527875779308

/-! ## A026797.P13612245557415453470

`A008483(n+1)-(A185325(n+1)+A026796(n+1))`
-/

namespace A026797.P13612245557415453470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) - (A185325 (n + 1) + A026796 (n + 1))

end

end A026797.P13612245557415453470

/-! ## A026797.P1090218504963732556

`A026796(n+4)-(A185325(n+1)+A026796(n+1))`
-/

namespace A026797.P1090218504963732556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 4) - (A185325 (n + 1) + A026796 (n + 1))

end

end A026797.P1090218504963732556

/-! ## A026797.P7450102396587369115

`A027196(n+1)+A027190(n+1)`
-/

namespace A026797.P7450102396587369115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027196 (n + 1) + A027190 (n + 1)

end

end A026797.P7450102396587369115

/-! ## A026797.P3672007477998104005

`A026794(A145018(n+1))%A132975(n+1)`
-/

namespace A026797.P3672007477998104005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026794 (A145018 (n + 1)).toNat) (A132975 (n + 1))

end

end A026797.P3672007477998104005

/-!
# A026798: Number of partitions of n in which the least part is 5.

The programs for A026798, there is no canonical definition to state claims against.
-/

/-! ## A026798.P13215519793190572851

`A185325(abs(5-n))`
-/

namespace A026798.P13215519793190572851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 |5 - (n : ℤ)|.toNat

end

end A026798.P13215519793190572851

/-! ## A026798.P11917098994887193571

`A185325(n)-A185326(A028310(n))`
-/

namespace A026798.P11917098994887193571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - A185326 (A028310 n).toNat

end

end A026798.P11917098994887193571

/-! ## A026798.P14687088286571681631

`A000007(n)+A185325(n)-A185326(n)`
-/

namespace A026798.P14687088286571681631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A185325 n - A185326 n)

end

end A026798.P14687088286571681631

/-! ## A026798.P5720332081100861514

`A185325(n)-A057427(n)*A185326(n)`
-/

namespace A026798.P5720332081100861514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - A057427 n * A185326 n

end

end A026798.P5720332081100861514

/-! ## A026798.P8332565189378380786

`A000035(A001316(n))+A185325(n)-A185326(n)`
-/

namespace A026798.P8332565189378380786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001316 n).toNat + (A185325 n - A185326 n)

end

end A026798.P8332565189378380786

/-! ## A026798.P17516737495112070381

`A185325(n)-A185326(n)%A133041(n)`
-/

namespace A026798.P17516737495112070381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - Int.tmod (A185326 n) (A133041 n)

end

end A026798.P17516737495112070381

/-! ## A026798.P15524928091277158474

`A000035(A008574(n))+A185325(n)-A185326(n)`
-/

namespace A026798.P15524928091277158474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008574 n).toNat + (A185325 n - A185326 n)

end

end A026798.P15524928091277158474

/-! ## A026798.P7533917234211169646

`A185325(n)-A185326(A233583(n+1))`
-/

namespace A026798.P7533917234211169646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - A185326 (A233583 (n + 1)).toNat

end

end A026798.P7533917234211169646

/-! ## A026798.P17213378348288381914

`A026794(A077169(n))*A185115(n)`
-/

namespace A026798.P17213378348288381914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A077169 n).toNat * A185115 n

end

end A026798.P17213378348288381914

/-!
# A026799: Number of partitions of n in which the least part is 6.

The programs for A026799, there is no canonical definition to state claims against.
-/

/-! ## A026799.P7700844418681140889

`A185326(n)-A185327(n)`
-/

namespace A026799.P7700844418681140889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A185327 n

end

end A026799.P7700844418681140889

/-! ## A026799.P18340980515778896533

`A185326(abs(6-A028310(n)))`
-/

namespace A026799.P18340980515778896533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 |6 - A028310 n|.toNat

end

end A026799.P18340980515778896533

/-! ## A026799.P16947783428246495773

`A185326(n)-(A185328(n)+A026800(n))`
-/

namespace A026799.P16947783428246495773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - (A185328 n + A026800 n)

end

end A026799.P16947783428246495773

/-! ## A026799.P5558302046572701093

`A185326(n)-A026800(n+7)`
-/

namespace A026799.P5558302046572701093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A026800 (n + 7)

end

end A026799.P5558302046572701093

/-! ## A026799.P7186513561521820569

`A185326(abs(6-A233583(n+1)))`
-/

namespace A026799.P7186513561521820569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 |6 - A233583 (n + 1)|.toNat

end

end A026799.P7186513561521820569

