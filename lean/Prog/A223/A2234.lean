import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
# A223400: 4X4 square grid graph coloring a rectangular array: number of nX6 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223400, there is no canonical definition to state claims against.
-/

/-! ## A223400.P12208977947968133195

`A223402(A374007(n+1))`
-/

namespace A223400.P12208977947968133195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A374007 (n + 1)).toNat

end

end A223400.P12208977947968133195

/-! ## A223400.P5074636775182362792

`A223402(eq[5, A025581(n)]+1)`
-/

namespace A223400.P5074636775182362792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223400.P5074636775182362792

/-! ## A223400.P17876905403703741330

`A223402(Δ[A264443(n+1)]-1)`
-/

namespace A223400.P17876905403703741330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (f1 (n + 1) - f1 n - 1).toNat

end

end A223400.P17876905403703741330

/-!
# A223401: 4X4 square grid graph coloring a rectangular array: number of nX7 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223401, there is no canonical definition to state claims against.
-/

/-! ## A223401.P14234606383376233612

`A223402(A167499(n+5)+2)`
-/

namespace A223401.P14234606383376233612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A167499 (n + 5) + 2).toNat

end

end A223401.P14234606383376233612

/-! ## A223401.P10932524688985199044

`A223402(A374008(n+1))`
-/

namespace A223401.P10932524688985199044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A374008 (n + 1)).toNat

end

end A223401.P10932524688985199044

/-! ## A223401.P18228458392066883690

`A223402(eq[6, A193592(n)])`
-/

namespace A223401.P18228458392066883690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223401.P18228458392066883690

/-! ## A223401.P10474060126174641544

`A223402(eq[6, A025581(n)]+1)`
-/

namespace A223401.P10474060126174641544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223401.P10474060126174641544

/-!
# A223402: T(n,k)=4X4 square grid graph coloring a rectangular array: number of nXk 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223402, there is no canonical definition to state claims against.
-/

/-! ## A223402.P15458357029479726314

`8*A112318(A230739(n+1))`
-/

namespace A223402.P15458357029479726314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A112318 (A230739 (n + 1)).toNat

end

end A223402.P15458357029479726314

/-!
# A223403: Number of nX1 0..3 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223403, there is no canonical definition to state claims against.
-/

/-! ## A223403.P4060541344553489133

`sqrt(A223404(n+1))`
-/

namespace A223403.P4060541344553489133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223404 (n + 1) : ℝ)

end

end A223403.P4060541344553489133

/-! ## A223403.P2037743736705998712

`root(A223404(n+1), 2%A020705(n))`
-/

namespace A223403.P2037743736705998712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223404 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A020705 n) : ℝ))

end

end A223403.P2037743736705998712

/-! ## A223403.P4989805178206537727

`A223406(∑[n]+1)`
-/

namespace A223403.P4989805178206537727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223406 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223403.P4989805178206537727

/-! ## A223403.P15715537726967900017

`record[A010054(n)*A223406(n+1)]`
-/

namespace A223403.P15715537726967900017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223403.P15715537726967900017

/-! ## A223403.P14302050152167951679

`record[A103451(n)*A223406(n+1)]`
-/

namespace A223403.P14302050152167951679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A223406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223403.P14302050152167951679

/-!
# A223404: Number of nX2 0..3 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223404, there is no canonical definition to state claims against.
-/

/-! ## A223404.P5935845591130769993

`A223403(n+1)²`
-/

namespace A223404.P5935845591130769993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223403 (n + 1) ^ 2

end

end A223404.P5935845591130769993

/-! ## A223404.P6249067905680621369

`A223403(n+1)^A000005(A031930(n+1))`
-/

namespace A223404.P6249067905680621369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223403 (n + 1) : ℚ) ^ (A000005 (A031930 (n + 1)).toNat : ℤ)

end

end A223404.P6249067905680621369

/-! ## A223404.P12300054769618499670

`A223403(n+1)^A000005(A322394(n+1))`
-/

namespace A223404.P12300054769618499670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223403 (n + 1) : ℚ) ^ (A000005 (A322394 (n + 1)).toNat : ℤ)

end

end A223404.P12300054769618499670

/-! ## A223404.P11725114080645512348

`A223403(n+1)%A223396(n+1)*A223403(n+1)`
-/

namespace A223404.P11725114080645512348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223403 (n + 1)) (A223396 (n + 1)) * A223403 (n + 1)

end

end A223404.P11725114080645512348

/-! ## A223404.P544254871230719691

`A223403(n+1)^A000005(A242944(n+1))`
-/

namespace A223404.P544254871230719691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223403 (n + 1) : ℚ) ^ (A000005 (A242944 (n + 1)).toNat : ℤ)

end

end A223404.P544254871230719691

/-!
# A223405: Number of nX3 0..3 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223405, there is no canonical definition to state claims against.
-/

/-! ## A223405.P18182479608082373856

`A223406(∑[n+2]+4)`
-/

namespace A223405.P18182479608082373856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223406 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223405.P18182479608082373856

/-! ## A223405.P171017294614866509

`A223406(A167614(n+1))+A026816(n)`
-/

namespace A223405.P171017294614866509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223406 (A167614 (n + 1)).toNat + A026816 n

end

end A223405.P171017294614866509

/-! ## A223405.P12701155735006088058

`A223406(A167614(n+1))+A031346(n)`
-/

namespace A223405.P12701155735006088058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223406 (A167614 (n + 1)).toNat + A031346 n

end

end A223405.P12701155735006088058

/-! ## A223405.P14130723749044140252

`A223406(A167614(n+1))+A064459(n)`
-/

namespace A223405.P14130723749044140252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223406 (A167614 (n + 1)).toNat + A064459 n

end

end A223405.P14130723749044140252

/-! ## A223405.P15946269629030050563

`A223406(A167614(n+1))+A084904(n)`
-/

namespace A223405.P15946269629030050563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223406 (A167614 (n + 1)).toNat + A084904 n

end

end A223405.P15946269629030050563

/-!
# A223406: T(n,k)=Number of nXk 0..3 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223406, there is no canonical definition to state claims against.
-/

/-! ## A223406.P1316653850723953656

`A087948(A197442(n+1)-1)`
-/

namespace A223406.P1316653850723953656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087948 (A197442 (n + 1) - 1).toNat

end

end A223406.P1316653850723953656

/-!
# A223407: 4X4X4 triangular graph without horizontal edges coloring a rectangular array: number of n X n 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223407, there is no canonical definition to state claims against.
-/

/-! ## A223407.P906664427746914330

`A223415((n+1)²+n²)`
-/

namespace A223407.P906664427746914330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 ((n + 1) ^ 2 + n ^ 2)

end

end A223407.P906664427746914330

/-!
# A223408: 4 X 4 X 4 triangular graph without horizontal edges coloring a rectangular array: number of n X 1 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223408, there is no canonical definition to state claims against.
-/

/-! ## A223408.P7743893195971120514

`A223415(∑[n]+1)`
-/

namespace A223408.P7743893195971120514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223408.P7743893195971120514

/-! ## A223408.P15909217268818056477

`lcm(2, A223415(A000124(n)))`
-/

namespace A223408.P15909217268818056477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223415 (A000124 n).toNat)

end

end A223408.P15909217268818056477

/-! ## A223408.P14406961647985685185

`record[gcd(A002262(n), A223415(n+1))]`
-/

namespace A223408.P14406961647985685185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A223415 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223408.P14406961647985685185

/-! ## A223408.P1334033352692357304

`record[A023531(n)*A223415(n+1)]`
-/

namespace A223408.P1334033352692357304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A223415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223408.P1334033352692357304

/-! ## A223408.P5604566782948605740

`record[root(A223415(n+1), A064189(n))]`
-/

namespace A223408.P5604566782948605740
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223415 (n + 1) : ℝ) ^ (1 / (A064189 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223408.P5604566782948605740

/-!
# A223409: 4 X 4 X 4 triangular graph without horizontal edges coloring a rectangular array: number of n X 2 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223409, there is no canonical definition to state claims against.
-/

/-! ## A223409.P4187763104170148928

`A223415(∑[n+1]+2)`
-/

namespace A223409.P4187763104170148928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223409.P4187763104170148928

/-! ## A223409.P104335076660044938

`lcm(2, A223415(A133263(n+1)))`
-/

namespace A223409.P104335076660044938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223415 (A133263 (n + 1)).toNat)

end

end A223409.P104335076660044938

/-! ## A223409.P112786836600088122

`record[gcd(A002262(n), A223415(n+2))]`
-/

namespace A223409.P112786836600088122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A223415 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223409.P112786836600088122

/-! ## A223409.P6775170025463366001

`record[A223415(A000096(Δ[ceil(sqrt(n^3))]))]`
-/

namespace A223409.P6775170025463366001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A000096 (f2 (n + 1) - f2 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223409.P6775170025463366001

/-! ## A223409.P4331194571417181608

`record[A223415(A133263(val(n+1, 2)+1))]`
-/

namespace A223409.P4331194571417181608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223409.P4331194571417181608

/-!
# A223410: 4X4X4 triangular graph without horizontal edges coloring a rectangular array: number of nX3 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223410, there is no canonical definition to state claims against.
-/

/-! ## A223410.P13123225550021338169

`A223415(∑[n+2]+4)`
-/

namespace A223410.P13123225550021338169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223410.P13123225550021338169

/-! ## A223410.P12602768041871297069

`lcm(2, A223415(A167614(n+1)))`
-/

namespace A223410.P12602768041871297069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223415 (A167614 (n + 1)).toNat)

end

end A223410.P12602768041871297069

/-! ## A223410.P14942174873980861343

`A223415(A167614(n+1))+A178798(n)`
-/

namespace A223410.P14942174873980861343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A167614 (n + 1)).toNat + A178798 n

end

end A223410.P14942174873980861343

/-! ## A223410.P4066109330680429009

`or(A000038(n), A223415(A167614(n+1)))`
-/

namespace A223410.P4066109330680429009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A223415 (A167614 (n + 1)).toNat)

end

end A223410.P4066109330680429009

/-! ## A223410.P6774339705011296662

`A223415(A167614(n+1))%A223411(n+1)`
-/

namespace A223410.P6774339705011296662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223415 (A167614 (n + 1)).toNat) (A223411 (n + 1))

end

end A223410.P6774339705011296662

/-!
# A223411: 4X4X4 triangular graph without horizontal edges coloring a rectangular array: number of nX4 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223411, there is no canonical definition to state claims against.
-/

/-! ## A223411.P13942197960049878295

`A223415(A374004(n+1))`
-/

namespace A223411.P13942197960049878295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A374004 (n + 1)).toNat

end

end A223411.P13942197960049878295

/-! ## A223411.P7135553049873834707

`A223415(A052905(n)+9)`
-/

namespace A223411.P7135553049873834707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A052905 n + 9).toNat

end

end A223411.P7135553049873834707

/-! ## A223411.P16731652816610224240

`A223415(A055999(n)+10)`
-/

namespace A223411.P16731652816610224240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A055999 n + 10).toNat

end

end A223411.P16731652816610224240

/-! ## A223411.P12655267125188157814

`A223415(A167614(n+2)+1)`
-/

namespace A223411.P12655267125188157814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A167614 (n + 2) + 1).toNat

end

end A223411.P12655267125188157814

/-! ## A223411.P4260469812964482510

`A223415(Δ[A264443(n)-n²])`
-/

namespace A223411.P4260469812964482510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (f1 (n + 1) - f1 n).toNat

end

end A223411.P4260469812964482510

/-!
# A223412: 4X4X4 triangular graph without horizontal edges coloring a rectangular array: number of nX5 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223412, there is no canonical definition to state claims against.
-/

/-! ## A223412.P8235990398035437564

`A223415(A374005(n+1))`
-/

namespace A223412.P8235990398035437564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A374005 (n + 1)).toNat

end

end A223412.P8235990398035437564

/-! ## A223412.P5839834386628884839

`A223415(A155212(n)+13)`
-/

namespace A223412.P5839834386628884839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A155212 n + 13).toNat

end

end A223412.P5839834386628884839

/-! ## A223412.P9899503584583904687

`A223415(eq[6, A131818(n+1)])`
-/

namespace A223412.P9899503584583904687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223412.P9899503584583904687

/-! ## A223412.P11397334194832100324

`A223415(Δ[A006416(n+2)]+8)`
-/

namespace A223412.P11397334194832100324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (f1 (n + 1) - f1 n + 8).toNat

end

end A223412.P11397334194832100324

/-! ## A223412.P12076705891571935647

`A223415(Δ[A264443(n)])`
-/

namespace A223412.P12076705891571935647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (f1 (n + 1) - f1 n).toNat

end

end A223412.P12076705891571935647

/-!
# A223413: 4X4X4 triangular graph without horizontal edges coloring a rectangular array: number of nX6 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223413, there is no canonical definition to state claims against.
-/

/-! ## A223413.P2364931157678735731

`A223415(A374007(n+1))`
-/

namespace A223413.P2364931157678735731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A374007 (n + 1)).toNat

end

end A223413.P2364931157678735731

/-! ## A223413.P4991282526127030961

`A223415(A052905(n+3))`
-/

namespace A223413.P4991282526127030961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A052905 (n + 3)).toNat

end

end A223413.P4991282526127030961

/-! ## A223413.P14619877600464821475

`A223415(Δ[A264443(n+1)]-1)`
-/

namespace A223413.P14619877600464821475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (f1 (n + 1) - f1 n - 1).toNat

end

end A223413.P14619877600464821475

/-!
# A223414: 4X4X4 triangular graph without horizontal edges coloring a rectangular array: number of nX7 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223414, there is no canonical definition to state claims against.
-/

/-! ## A223414.P16738961758671195287

`A223415(A374008(n+1))`
-/

namespace A223414.P16738961758671195287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A374008 (n + 1)).toNat

end

end A223414.P16738961758671195287

/-! ## A223414.P5981147531252834605

`A223415(eq[8, A131818(n+1)])`
-/

namespace A223414.P5981147531252834605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223414.P5981147531252834605

/-! ## A223414.P5815562721042810493

`A223415(A055999(n+4))`
-/

namespace A223414.P5815562721042810493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223415 (A055999 (n + 4)).toNat

end

end A223414.P5815562721042810493

/-!
# A223415: T(n,k)=4X4X4 triangular graph without horizontal edges coloring a rectangular array: number of nXk 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223415, there is no canonical definition to state claims against.
-/

/-! ## A223415.P9215189355974756855

`A344882(A092266(n)+1)`
-/

namespace A223415.P9215189355974756855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344882 (A092266 n + 1).toNat

end

end A223415.P9215189355974756855

/-!
# A223416: 3-level binary fanout graph coloring a rectangular array: number of n X n 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,3 1,4 0,2 2,5 2,6 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223416, there is no canonical definition to state claims against.
-/

/-! ## A223416.P15524620717365647381

`A223423(∑[4*n]+1)`
-/

namespace A223416.P15524620717365647381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223416.P15524620717365647381

/-! ## A223416.P9735183385651313023

`or(A000007(n), A223423(A001844(n)))`
-/

namespace A223416.P9735183385651313023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223423 (A001844 n).toNat)

end

end A223416.P9735183385651313023

/-! ## A223416.P15986757582277593812

`A223423(A001844(n))^gcd(2, A001845(n))`
-/

namespace A223416.P15986757582277593812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A001844 n).toNat ^ Int.gcd 2 (A001845 n)

end

end A223416.P15986757582277593812

/-! ## A223416.P6125549977513267150

`A223423(A001844(n))+and(1, A033845(n+1))`
-/

namespace A223416.P6125549977513267150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A001844 n).toNat + Int.land 1 (A033845 (n + 1))

end

end A223416.P6125549977513267150

/-! ## A223416.P13483699790028861391

`A223423(A001844(n))^gcd(n+1, A006530(n+2))`
-/

namespace A223416.P13483699790028861391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A001844 n).toNat ^ Int.gcd (n + 1 : ℤ) (A006530 (n + 2))

end

end A223416.P13483699790028861391

/-!
# A223417: 3-level binary fanout graph coloring a rectangular array: number of nX1 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,3 1,4 0,2 2,5 2,6 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223417, the canonical program `A223417.P15604913838622916523` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223417 has offset 1).

The definition of A223417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223417.P5575571960323434307

`ogf((7+12x-2x^2)/(1-4x^2))`
-/

namespace A223417.P5575571960323434307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 12, -2] [1, 0, -4] n

end

end A223417.P5575571960323434307

namespace A223417

/-- `ogf((7+12x-2x^2)/(1-4x^2))` -/
def P5575571960323434307.Spec : Prop :=
  ∀ n, P5575571960323434307.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P15604913838622916523

`4*a(n-2)` with `a(0)=7, a(1)=12, a(2)=26`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223417

/-- `4*a(n-2)` -/
def P15604913838622916523.Spec : Prop :=
  ∀ n, (P15604913838622916523.a n : ℤ) = A223417 (n + 1)

theorem P15604913838622916523.correct : P15604913838622916523.Spec := by
  intro n
  simp only [A223417, Nat.add_sub_cancel]

end A223417

/-! ## A223417.P10322715730181345183

`2^(n+3)-A133572(n+1)`
-/

namespace A223417.P10322715730181345183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A133572 (n + 1)

end

end A223417.P10322715730181345183

namespace A223417

/-- `2^(n+3)-A133572(n+1)` -/
def P10322715730181345183.Spec : Prop :=
  ∀ n, P10322715730181345183.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P9140363992457651916

`A199573(n)+A007283(n+1)`
-/

namespace A223417.P9140363992457651916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199573 n + A007283 (n + 1)

end

end A223417.P9140363992457651916

namespace A223417

/-- `A199573(n)+A007283(n+1)` -/
def P9140363992457651916.Spec : Prop :=
  ∀ n, P9140363992457651916.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P4224671642573936268

`A199573(n)+A091629(n+1)`
-/

namespace A223417.P4224671642573936268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199573 n + A091629 (n + 1)

end

end A223417.P4224671642573936268

namespace A223417

/-- `A199573(n)+A091629(n+1)` -/
def P4224671642573936268.Spec : Prop :=
  ∀ n, P4224671642573936268.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P11144853247858834445

`A122756(n+2)+Δ[A122756(n)]`
-/

namespace A223417.P11144853247858834445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (n + 2) + (f1 (n + 1) - f1 n)

end

end A223417.P11144853247858834445

namespace A223417

/-- `A122756(n+2)+Δ[A122756(n)]` -/
def P11144853247858834445.Spec : Prop :=
  ∀ n, P11144853247858834445.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P6219115188721289619

`A122756(n+2)+A000079(A014681(n))`
-/

namespace A223417.P6219115188721289619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (n + 2) + A000079 (A014681 n).toNat

end

end A223417.P6219115188721289619

namespace A223417

/-- `A122756(n+2)+A000079(A014681(n))` -/
def P6219115188721289619.Spec : Prop :=
  ∀ n, P6219115188721289619.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P412380496116377643

`(A059841(n)+A040030(n))*A011782(n)`
-/

namespace A223417.P412380496116377643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + A040030 n) * A011782 n

end

end A223417.P412380496116377643

namespace A223417

/-- `(A059841(n)+A040030(n))*A011782(n)` -/
def P412380496116377643.Spec : Prop :=
  ∀ n, P412380496116377643.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P7048308794607172712

`or(A011782(A004442(n+1)), A042950(n+2))`
-/

namespace A223417.P7048308794607172712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (A004442 (n + 1)).toNat) (A042950 (n + 2))

end

end A223417.P7048308794607172712

namespace A223417

/-- `or(A011782(A004442(n+1)), A042950(n+2))` -/
def P7048308794607172712.Spec : Prop :=
  ∀ n, P7048308794607172712.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P5687705637164738760

`A171497(n+1)-A074323(n)*A135530(n+1)`
-/

namespace A223417.P5687705637164738760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 (n + 1) - A074323 n * A135530 (n + 1)

end

end A223417.P5687705637164738760

namespace A223417

/-- `A171497(n+1)-A074323(n)*A135530(n+1)` -/
def P5687705637164738760.Spec : Prop :=
  ∀ n, P5687705637164738760.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P4893359966075318983

`or(A029744(n+1)*A029744(n+3), A007283(n+1))`
-/

namespace A223417.P4893359966075318983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029744 (n + 1) * A029744 (n + 3)) (A007283 (n + 1))

end

end A223417.P4893359966075318983

namespace A223417

/-- `or(A029744(n+1)*A029744(n+3), A007283(n+1))` -/
def P4893359966075318983.Spec : Prop :=
  ∀ n, P4893359966075318983.a n = A223417 (n + 1)

end A223417

/-! ## A223417.P7255573785768083344

`Δ[A283323(n)+A136326(n+2)]`
-/

namespace A223417.P7255573785768083344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283323 n + A136326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223417.P7255573785768083344

namespace A223417

/-- `Δ[A283323(n)+A136326(n+2)]` -/
def P7255573785768083344.Spec : Prop :=
  ∀ n, P7255573785768083344.a n = A223417 (n + 1)

end A223417

/-!
# A223418: 3-level binary fanout graph coloring a rectangular array: number of n X 3 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,3 1,4 0,2 2,5 2,6 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223418, there is no canonical definition to state claims against.
-/

/-! ## A223418.P13729687235088233617

`A223423(∑[n+2]+4)`
-/

namespace A223418.P13729687235088233617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223418.P13729687235088233617

/-! ## A223418.P12981136425522483662

`lcm(2, A223423(A167614(n+1)))`
-/

namespace A223418.P12981136425522483662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223423 (A167614 (n + 1)).toNat)

end

end A223418.P12981136425522483662

/-! ## A223418.P6844666423695031509

`A223423(A167614(n+1))+A185284(n)`
-/

namespace A223418.P6844666423695031509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A167614 (n + 1)).toNat + A185284 n

end

end A223418.P6844666423695031509

/-! ## A223418.P7739298541516535567

`A223423(A167614(n+1))%A264181(n)`
-/

namespace A223418.P7739298541516535567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223423 (A167614 (n + 1)).toNat) (A264181 (n + 18))

end

end A223418.P7739298541516535567

/-! ## A223418.P17796469237594211052

`or(A000038(n), A223423(A167614(n+1)))`
-/

namespace A223418.P17796469237594211052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A223423 (A167614 (n + 1)).toNat)

end

end A223418.P17796469237594211052

/-!
# A223419: 3-level binary fanout graph coloring a rectangular array: number of n X 4 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,3 1,4 0,2 2,5 2,6 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223419, there is no canonical definition to state claims against.
-/

/-! ## A223419.P18386341832441788383

`A223423(A374004(n+1))`
-/

namespace A223419.P18386341832441788383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A374004 (n + 1)).toNat

end

end A223419.P18386341832441788383

/-! ## A223419.P13856088571473642998

`A223423(A052905(n)+9)`
-/

namespace A223419.P13856088571473642998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A052905 n + 9).toNat

end

end A223419.P13856088571473642998

/-! ## A223419.P2650471939791848602

`A223423(A055999(n)+10)`
-/

namespace A223419.P2650471939791848602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A055999 n + 10).toNat

end

end A223419.P2650471939791848602

/-! ## A223419.P3278130028922063214

`A223423(A167614(n+2)+1)`
-/

namespace A223419.P3278130028922063214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A167614 (n + 2) + 1).toNat

end

end A223419.P3278130028922063214

/-! ## A223419.P13827489503354307724

`A223423(A133263(n+3)+2)`
-/

namespace A223419.P13827489503354307724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A133263 (n + 3) + 2).toNat

end

end A223419.P13827489503354307724

/-!
# A223420: 3-level binary fanout graph coloring a rectangular array: number of nX5 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,3 1,4 0,2 2,5 2,6 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223420, there is no canonical definition to state claims against.
-/

/-! ## A223420.P11089532214158653440

`A223423(A374005(n+1))`
-/

namespace A223420.P11089532214158653440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A374005 (n + 1)).toNat

end

end A223420.P11089532214158653440

/-! ## A223420.P13079824811393389879

`A223423(A167499(n+3))`
-/

namespace A223420.P13079824811393389879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A167499 (n + 3)).toNat

end

end A223420.P13079824811393389879

/-! ## A223420.P16744441186301049593

`A223423(A056000(n)+15)`
-/

namespace A223420.P16744441186301049593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A056000 n + 15).toNat

end

end A223420.P16744441186301049593

/-! ## A223420.P18279353150763567076

`A223423(A167614(n+3)+2)`
-/

namespace A223420.P18279353150763567076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A167614 (n + 3) + 2).toNat

end

end A223420.P18279353150763567076

/-! ## A223420.P11423363464340144018

`A223423(A034856(n+3)+7)`
-/

namespace A223420.P11423363464340144018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A034856 (n + 3) + 7).toNat

end

end A223420.P11423363464340144018

/-!
# A223421: 3-level binary fanout graph coloring a rectangular array: number of nX6 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,3 1,4 0,2 2,5 2,6 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223421, there is no canonical definition to state claims against.
-/

/-! ## A223421.P6991208795038036637

`A223423(A374007(n+1))`
-/

namespace A223421.P6991208795038036637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A374007 (n + 1)).toNat

end

end A223421.P6991208795038036637

/-! ## A223421.P1486284314020162896

`A223423(eq[7, A131818(n+1)])`
-/

namespace A223421.P1486284314020162896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223421.P1486284314020162896

/-! ## A223421.P11514391915418941411

`A223423(eq[3, A219347(n)])`
-/

namespace A223421.P11514391915418941411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223421.P11514391915418941411

/-! ## A223421.P6566658772596563983

`A223423(eq[5, A193592(n)])`
-/

namespace A223421.P6566658772596563983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223421.P6566658772596563983

/-! ## A223421.P14413340566164873600

`A223423(eq[8, A185782(n+1)])`
-/

namespace A223421.P14413340566164873600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223421.P14413340566164873600

/-!
# A223422: 3-level binary fanout graph coloring a rectangular array: number of nX7 0..6 arrays where 0..6 label nodes of a graph with edges 0,1 1,3 1,4 0,2 2,5 2,6 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223422, there is no canonical definition to state claims against.
-/

/-! ## A223422.P7821247424394057193

`A223423(A374008(n+1))`
-/

namespace A223422.P7821247424394057193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A374008 (n + 1)).toNat

end

end A223422.P7821247424394057193

/-! ## A223422.P8063012390624120626

`A223423(A167487(n+5))`
-/

namespace A223422.P8063012390624120626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (A167487 (n + 5)).toNat

end

end A223422.P8063012390624120626

/-! ## A223422.P13006208112845759042

`A223423(eq[8, A131818(n+1)])`
-/

namespace A223422.P13006208112845759042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223422.P13006208112845759042

/-! ## A223422.P10656868843380551952

`A223423(eq[4, A219347(n)])`
-/

namespace A223422.P10656868843380551952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223422.P10656868843380551952

/-! ## A223422.P6469045413337676092

`A223423(eq[6, A193592(n)])`
-/

namespace A223422.P6469045413337676092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223422.P6469045413337676092

/-!
# A223424: 5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of n X n 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223424, there is no canonical definition to state claims against.
-/

/-! ## A223424.P2107135665276335066

`A223432((n+1)²+n²)`
-/

namespace A223424.P2107135665276335066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 ((n + 1) ^ 2 + n ^ 2)

end

end A223424.P2107135665276335066

/-!
# A223425: 5 X 5 X 5 triangular graph without horizontal edges coloring a rectangular array: number of n X 1 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223425, there is no canonical definition to state claims against.
-/

/-! ## A223425.P7850100725993764640

`A223432(∑[n]+1)`
-/

namespace A223425.P7850100725993764640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223425.P7850100725993764640

/-! ## A223425.P9170777463847523844

`record[root(A223432(n+1), A108086(n))]`
-/

namespace A223425.P9170777463847523844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223432 (n + 1) : ℝ) ^ (1 / (A108086 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223425.P9170777463847523844

/-! ## A223425.P12456731419616746394

`record[root(A223432(n+1), A335975(n))]`
-/

namespace A223425.P12456731419616746394
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223432 (n + 1) : ℝ) ^ (1 / (A335975 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223425.P12456731419616746394

/-! ## A223425.P15130955694910451096

`lcm(A033999(n), A223432(A000124(n)))`
-/

namespace A223425.P15130955694910451096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223432 (A000124 n).toNat)

end

end A223425.P15130955694910451096

/-! ## A223425.P1010072394850734395

`or(A000007(n), A223432(A000124(n)))`
-/

namespace A223425.P1010072394850734395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223432 (A000124 n).toNat)

end

end A223425.P1010072394850734395

/-!
# A223426: 5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of nX2 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223426, there is no canonical definition to state claims against.
-/

/-! ## A223426.P10836805730542577925

`A223432(∑[n+1]+2)`
-/

namespace A223426.P10836805730542577925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223426.P10836805730542577925

/-! ## A223426.P14908447296540892339

`record[A223432(abs(A201163(n)))]`
-/

namespace A223426.P14908447296540892339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223426.P14908447296540892339

/-! ## A223426.P11643807846254285972

`record[A223432(A101881(n)+1)]`
-/

namespace A223426.P11643807846254285972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223426.P11643807846254285972

/-! ## A223426.P1899707721480492937

`lcm(2, A223432(A101881(2*n+1)))`
-/

namespace A223426.P1899707721480492937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223432 (A101881 (2 * n + 1)).toNat)

end

end A223426.P1899707721480492937

/-! ## A223426.P3747117505280780658

`A223432(A101881(2*n+1))+A000038(n+1)`
-/

namespace A223426.P3747117505280780658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A101881 (2 * n + 1)).toNat + A000038 (n + 1)

end

end A223426.P3747117505280780658

/-!
# A223427: 5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of nX3 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223427, there is no canonical definition to state claims against.
-/

/-! ## A223427.P7220477138837595482

`A223432(∑[n+2]+4)`
-/

namespace A223427.P7220477138837595482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223427.P7220477138837595482

/-! ## A223427.P7157864579387520985

`lcm(2, A223432(A167614(n+1)))`
-/

namespace A223427.P7157864579387520985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223432 (A167614 (n + 1)).toNat)

end

end A223427.P7157864579387520985

/-! ## A223427.P13566776138687363118

`A223432(A167614(n+1))+A025469(n)`
-/

namespace A223427.P13566776138687363118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A167614 (n + 1)).toNat + A025469 n

end

end A223427.P13566776138687363118

/-! ## A223427.P11899669963506042656

`A223432(A167614(n+1))+A185238(n)`
-/

namespace A223427.P11899669963506042656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A167614 (n + 1)).toNat + A185238 n

end

end A223427.P11899669963506042656

/-! ## A223427.P16891649820422107376

`A223432(A167614(n+1))+A185284(n)`
-/

namespace A223427.P16891649820422107376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A167614 (n + 1)).toNat + A185284 n

end

end A223427.P16891649820422107376

/-!
# A223428: 5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of nX4 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223428, there is no canonical definition to state claims against.
-/

/-! ## A223428.P6495553081553795862

`A223432(∑[n+3]+7)`
-/

namespace A223428.P6495553081553795862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223428.P6495553081553795862

/-! ## A223428.P14107234953682637813

`A223432(A052905(n)+9)%A097188(3*n+4)`
-/

namespace A223428.P14107234953682637813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223432 (A052905 n + 9).toNat) (A097188 (3 * n + 4))

end

end A223428.P14107234953682637813

/-!
# A223429: 5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of nX5 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223429, there is no canonical definition to state claims against.
-/

/-! ## A223429.P15142926746472132307

`A223432(A374005(n+1))`
-/

namespace A223429.P15142926746472132307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A374005 (n + 1)).toNat

end

end A223429.P15142926746472132307

/-! ## A223429.P1545603678524433245

`A223432(A155212(n)+13)`
-/

namespace A223429.P1545603678524433245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A155212 n + 13).toNat

end

end A223429.P1545603678524433245

/-! ## A223429.P1755345394301398125

`A223432(Δ[A264443(n)])`
-/

namespace A223429.P1755345394301398125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (f1 (n + 1) - f1 n).toNat

end

end A223429.P1755345394301398125

/-! ## A223429.P12269919513444740578

`A223432(A046691(n+3))`
-/

namespace A223429.P12269919513444740578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A046691 (n + 3)).toNat

end

end A223429.P12269919513444740578

/-! ## A223429.P16061421525343775700

`A223432(A056115(n)+11)`
-/

namespace A223429.P16061421525343775700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A056115 n + 11).toNat

end

end A223429.P16061421525343775700

/-!
# A223430: 5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of nX6 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223430, there is no canonical definition to state claims against.
-/

/-! ## A223430.P15634265843789874159

`A223432(A374007(n+1))`
-/

namespace A223430.P15634265843789874159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A374007 (n + 1)).toNat

end

end A223430.P15634265843789874159

/-! ## A223430.P15184335679173674195

`A223432(A052905(n+3))`
-/

namespace A223430.P15184335679173674195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A052905 (n + 3)).toNat

end

end A223430.P15184335679173674195

/-! ## A223430.P10659130887702593921

`A223432(Δ[A264443(n+1)]-1)`
-/

namespace A223430.P10659130887702593921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (f1 (n + 1) - f1 n - 1).toNat

end

end A223430.P10659130887702593921

/-!
# A223431: 5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of nX7 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223431, there is no canonical definition to state claims against.
-/

/-! ## A223431.P1873710497019346686

`A223432(A374008(n+1))`
-/

namespace A223431.P1873710497019346686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (A374008 (n + 1)).toNat

end

end A223431.P1873710497019346686

/-! ## A223431.P5353744913863388207

`A223432(eq[6, A193592(n)])`
-/

namespace A223431.P5353744913863388207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223431.P5353744913863388207

/-!
# A223432: T(n,k)=5X5X5 triangular graph without horizontal edges coloring a rectangular array: number of nXk 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223432, there is no canonical definition to state claims against.
-/

/-! ## A223432.P12287989623343953064

`A338669(A206021(n+1)+floor(1/(n+1)))`
-/

namespace A223432.P12287989623343953064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338669 (A206021 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A223432.P12287989623343953064

/-! ## A223432.P7849484097624467462

`A052126(A206021(n+1)+A185118(n))`
-/

namespace A223432.P7849484097624467462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A206021 (n + 1) + A185118 n).toNat

end

end A223432.P7849484097624467462

/-!
# A223433: Generalized Petersen graph (8,2) coloring a rectangular array: number of n X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223433, there is no canonical definition to state claims against.
-/

/-! ## A223433.P9948005003419286296

`A223440((n+1)²+n²)`
-/

namespace A223433.P9948005003419286296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 ((n + 1) ^ 2 + n ^ 2)

end

end A223433.P9948005003419286296

/-! ## A223433.P9371979950710877713

`A054977(n+1)*A223440(A001844(n))`
-/

namespace A223433.P9371979950710877713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A223440 (A001844 n).toNat

end

end A223433.P9371979950710877713

/-! ## A223433.P6251805093656809125

`A007318(A049581(n))*A223440(A001844(n))`
-/

namespace A223433.P6251805093656809125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A049581 n).toNat * A223440 (A001844 n).toNat

end

end A223433.P6251805093656809125

/-! ## A223433.P13365179517916883958

`A007318(A195644(n+1))*A223440(A001844(n))`
-/

namespace A223433.P13365179517916883958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A195644 (n + 1)).toNat * A223440 (A001844 n).toNat

end

end A223433.P13365179517916883958

/-!
# A223434: Generalized Petersen graph (8,2) coloring a rectangular array: number of n X 2 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223434, there is no canonical definition to state claims against.
-/

/-! ## A223434.P16405205810559804538

`A223693(n+2)/9`
-/

namespace A223434.P16405205810559804538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223693 (n + 2) : ℚ) / 9

end

end A223434.P16405205810559804538

/-! ## A223434.P2253180233095595851

`A223440(∑[n+1]+2)`
-/

namespace A223434.P2253180233095595851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223434.P2253180233095595851

/-! ## A223434.P14215343452958002300

`record[A223440(Δ[A003453(n+5)])]`
-/

namespace A223434.P14215343452958002300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223434.P14215343452958002300

/-! ## A223434.P15545930923332026486

`record[A223440(eq[4, A291873(n+1)])]`
-/

namespace A223434.P15545930923332026486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291873 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223434.P15545930923332026486

/-! ## A223434.P7213712906520947798

`A223599(∑[n+2])`
-/

namespace A223434.P7213712906520947798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223434.P7213712906520947798

/-!
# A223435: Generalized Petersen graph (8,2) coloring a rectangular array: number of nX3 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223435, there is no canonical definition to state claims against.
-/

/-! ## A223435.P9101434579190830238

`A223440(∑[n+2]+4)`
-/

namespace A223435.P9101434579190830238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223435.P9101434579190830238

/-! ## A223435.P6722912215785793806

`lcm(2, A223440(A167614(n+1)))`
-/

namespace A223435.P6722912215785793806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223440 (A167614 (n + 1)).toNat)

end

end A223435.P6722912215785793806

/-! ## A223435.P18110911461279456420

`A223440(A167614(n+1))+A000007(n+1)`
-/

namespace A223435.P18110911461279456420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A223435.P18110911461279456420

/-! ## A223435.P798489828214514785

`A223440(A167614(n+1))*A330098(n+1)`
-/

namespace A223435.P798489828214514785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A167614 (n + 1)).toNat * A330098 (n + 1)

end

end A223435.P798489828214514785

/-! ## A223435.P17336550265139095568

`A223440(A167614(n+1))%A208048(n+2)`
-/

namespace A223435.P17336550265139095568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223440 (A167614 (n + 1)).toNat) (A208048 (n + 2))

end

end A223435.P17336550265139095568

/-!
# A223436: Generalized Petersen graph (8,2) coloring a rectangular array: number of n X 4 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223436, there is no canonical definition to state claims against.
-/

/-! ## A223436.P6682092083103560572

`A223440(∑[n+3]+7)`
-/

namespace A223436.P6682092083103560572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223436.P6682092083103560572

/-! ## A223436.P6324406003814163130

`A223440(A167614(n+2)+1)+A011655(3*n)`
-/

namespace A223436.P6324406003814163130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A167614 (n + 2) + 1).toNat + A011655 (3 * n)

end

end A223436.P6324406003814163130

/-!
# A223437: Generalized Petersen graph (8,2) coloring a rectangular array: number of nX5 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223437, there is no canonical definition to state claims against.
-/

/-! ## A223437.P12253907685534219310

`A223440(A374005(n+1))`
-/

namespace A223437.P12253907685534219310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A374005 (n + 1)).toNat

end

end A223437.P12253907685534219310

/-! ## A223437.P15190134200504973497

`A223440(A167499(n+3))`
-/

namespace A223437.P15190134200504973497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A167499 (n + 3)).toNat

end

end A223437.P15190134200504973497

/-! ## A223437.P2576515755885797999

`A223440(A155212(n)+13)`
-/

namespace A223437.P2576515755885797999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A155212 n + 13).toNat

end

end A223437.P2576515755885797999

/-! ## A223437.P8023625539956443627

`A223440(eq[6, A131818(n+1)])`
-/

namespace A223437.P8023625539956443627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223437.P8023625539956443627

/-! ## A223437.P13183934652133157827

`A223440(Δ[A264443(n)])`
-/

namespace A223437.P13183934652133157827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (f1 (n + 1) - f1 n).toNat

end

end A223437.P13183934652133157827

/-!
# A223438: Generalized Petersen graph (8,2) coloring a rectangular array: number of nX6 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223438, there is no canonical definition to state claims against.
-/

/-! ## A223438.P2301174338637625726

`A223440(A374007(n+1))`
-/

namespace A223438.P2301174338637625726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A374007 (n + 1)).toNat

end

end A223438.P2301174338637625726

/-! ## A223438.P7128895959936038648

`A223440(eq[7, A131818(n+1)])`
-/

namespace A223438.P7128895959936038648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223438.P7128895959936038648

/-! ## A223438.P14458987713408911245

`A223440(eq[6, A002260(n+1)]+1)`
-/

namespace A223438.P14458987713408911245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223438.P14458987713408911245

/-! ## A223438.P9620497013744944430

`A223440(A052905(n+3))`
-/

namespace A223438.P9620497013744944430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A052905 (n + 3)).toNat

end

end A223438.P9620497013744944430

/-! ## A223438.P4492229757988000551

`A223440(A056119(n)+16)`
-/

namespace A223438.P4492229757988000551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A056119 n + 16).toNat

end

end A223438.P4492229757988000551

/-!
# A223439: Generalized Petersen graph (8,2) coloring a rectangular array: number of nX7 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223439, there is no canonical definition to state claims against.
-/

/-! ## A223439.P999290913280736287

`A223440(A374008(n+1))`
-/

namespace A223439.P999290913280736287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A374008 (n + 1)).toNat

end

end A223439.P999290913280736287

/-! ## A223439.P17686970956870383476

`A223440(A166136(n+5)+1)`
-/

namespace A223439.P17686970956870383476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (A166136 (n + 5) + 1).toNat

end

end A223439.P17686970956870383476

/-! ## A223439.P5602603529123636416

`A223440(eq[8, A131818(n+1)])`
-/

namespace A223439.P5602603529123636416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223439.P5602603529123636416

/-! ## A223439.P6543508634913589191

`A223440(eq[2, A219347(n)-2])`
-/

namespace A223439.P6543508634913589191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223439.P6543508634913589191

/-!
# A223440: T(n,k)=Generalized Petersen graph (8,2) coloring a rectangular array: number of nXk 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223440, there is no canonical definition to state claims against.
-/

/-! ## A223440.P492294322411595425

`8*A098740(A232948(n+1))`
-/

namespace A223440.P492294322411595425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A098740 (A232948 (n + 1)).toNat

end

end A223440.P492294322411595425

/-! ## A223440.P2794823643525885627

`A335841(A234832(n+1))`
-/

namespace A223440.P2794823643525885627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335841 (A234832 (n + 1)).toNat

end

end A223440.P2794823643525885627

/-!
# A223441: 4-level binary fanout graph coloring a rectangular array: number of n X n 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223441, there is no canonical definition to state claims against.
-/

/-! ## A223441.P4771686597225616852

`A223449(∑[4*n]+1)`
-/

namespace A223441.P4771686597225616852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223441.P4771686597225616852

/-! ## A223441.P5686982103320878405

`record[gcd(A114327(n), A223449(n+1))]`
-/

namespace A223441.P5686982103320878405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223449 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223441.P5686982103320878405

/-! ## A223441.P15241183943437520165

`record[root(A223449(n+1), A274651(n+1))]`
-/

namespace A223441.P15241183943437520165
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223449 (n + 1) : ℝ) ^ (1 / (A274651 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223441.P15241183943437520165

/-! ## A223441.P13701453816762599898

`lcm(A000079(n), A223449(A001844(n)))`
-/

namespace A223441.P13701453816762599898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A223449 (A001844 n).toNat)

end

end A223441.P13701453816762599898

/-! ## A223441.P11395890154307608491

`or(A000038(n), A223449(A001844(n)))`
-/

namespace A223441.P11395890154307608491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A223449 (A001844 n).toNat)

end

end A223441.P11395890154307608491

/-!
# A223442: 4-level binary fanout graph coloring a rectangular array: number of n X 1 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223442, the canonical program `A223442.P40228728210104024` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223442 has offset 1).

The definition of A223442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223442.P40228728210104024

`6*a(n-2)-4*a(n-4)` with `a(0)=15, a(1)=28, a(2)=66, a(3)=144`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223442

/-- `6*a(n-2)-4*a(n-4)` -/
def P40228728210104024.Spec : Prop :=
  ∀ n, P40228728210104024.a n = A223442 (n + 1)

theorem P40228728210104024.correct : P40228728210104024.Spec := by
  intro n
  simp only [A223442, Nat.add_sub_cancel]

end A223442

/-! ## A223442.P4688114185273819348

`A223449(∑[n]+1)`
-/

namespace A223442.P4688114185273819348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223442.P4688114185273819348

namespace A223442

/-- `A223449(∑[n]+1)` -/
def P4688114185273819348.Spec : Prop :=
  ∀ n, P4688114185273819348.a n = A223442 (n + 1)

end A223442

/-! ## A223442.P2438425894947296034

`record[A010054(n)*A223449(n+1)]`
-/

namespace A223442.P2438425894947296034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223442.P2438425894947296034

namespace A223442

/-- `record[A010054(n)*A223449(n+1)]` -/
def P2438425894947296034.Spec : Prop :=
  ∀ n, P2438425894947296034.a n = A223442 (n + 1)

end A223442

/-! ## A223442.P15898657552184353110

`record[root(A223449(n+1), A026769(n))]`
-/

namespace A223442.P15898657552184353110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223449 (n + 1) : ℝ) ^ (1 / (A026769 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223442.P15898657552184353110

namespace A223442

/-- `record[root(A223449(n+1), A026769(n))]` -/
def P15898657552184353110.Spec : Prop :=
  ∀ n, P15898657552184353110.a n = (A223442 (n + 1) : ℝ)

end A223442

/-! ## A223442.P10599907107273465809

`record[root(A223449(n+1), A026780(n))]`
-/

namespace A223442.P10599907107273465809
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223449 (n + 1) : ℝ) ^ (1 / (A026780 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223442.P10599907107273465809

namespace A223442

/-- `record[root(A223449(n+1), A026780(n))]` -/
def P10599907107273465809.Spec : Prop :=
  ∀ n, P10599907107273465809.a n = (A223442 (n + 1) : ℝ)

end A223442

/-!
# A223443: 4-level binary fanout graph coloring a rectangular array: number of n X 2 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223443, the canonical program `A223443.P9736848566471832700` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223443 has offset 1).

The definition of A223443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223443.P9736848566471832700

`6*a(n-1)-8*a(n-2)` with `a(0)=28, a(1)=104, a(2)=408`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223443

/-- `6*a(n-1)-8*a(n-2)` -/
def P9736848566471832700.Spec : Prop :=
  ∀ n, P9736848566471832700.a n = A223443 (n + 1)

theorem P9736848566471832700.correct : P9736848566471832700.Spec := by
  intro n
  simp only [A223443, Nat.add_sub_cancel]

end A223443

/-! ## A223443.P11104856893842138656

`A198633(n)+A020714(n)²`
-/

namespace A223443.P11104856893842138656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + A020714 n ^ 2

end

end A223443.P11104856893842138656

namespace A223443

/-- `A198633(n)+A020714(n)²` -/
def P11104856893842138656.Spec : Prop :=
  ∀ n, P11104856893842138656.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P3960053081116288460

`A309779(n+1)+A198633(n)`
-/

namespace A223443.P3960053081116288460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309779 (n + 1) + A198633 n

end

end A223443.P3960053081116288460

namespace A223443

/-- `A309779(n+1)+A198633(n)` -/
def P3960053081116288460.Spec : Prop :=
  ∀ n, P3960053081116288460.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P15771762447376964391

`record[A171559(n)]+A020714(n)²`
-/

namespace A223443.P15771762447376964391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A020714 n ^ 2

end

end A223443.P15771762447376964391

namespace A223443

/-- `record[A171559(n)]+A020714(n)²` -/
def P15771762447376964391.Spec : Prop :=
  ∀ n, P15771762447376964391.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P1357968119620906499

`A198633(n)+A070875(2*n)²`
-/

namespace A223443.P1357968119620906499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + A070875 (2 * n) ^ 2

end

end A223443.P1357968119620906499

namespace A223443

/-- `A198633(n)+A070875(2*n)²` -/
def P1357968119620906499.Spec : Prop :=
  ∀ n, P1357968119620906499.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P5236378612167878429

`Δ[A151821(n+1)]+A020714(n)²`
-/

namespace A223443.P5236378612167878429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A020714 n ^ 2

end

end A223443.P5236378612167878429

namespace A223443

/-- `Δ[A151821(n+1)]+A020714(n)²` -/
def P5236378612167878429.Spec : Prop :=
  ∀ n, P5236378612167878429.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P15896814317844692502

`A198633(n)+A164682(2*n+1)²`
-/

namespace A223443.P15896814317844692502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + A164682 (2 * n + 1) ^ 2

end

end A223443.P15896814317844692502

namespace A223443

/-- `A198633(n)+A164682(2*n+1)²` -/
def P15896814317844692502.Spec : Prop :=
  ∀ n, P15896814317844692502.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P5410810053105223819

`A155543(n)+Δ[A056326(2*n+5)]`
-/

namespace A223443.P5410810053105223819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n + (f1 (n + 1) - f1 n)

end

end A223443.P5410810053105223819

namespace A223443

/-- `A155543(n)+Δ[A056326(2*n+5)]` -/
def P5410810053105223819.Spec : Prop :=
  ∀ n, P5410810053105223819.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P3779665430057703825

`A005029(2*n+1)+A155559(n+1)-A155559(n)²`
-/

namespace A223443.P3779665430057703825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 (2 * n + 1) + (A155559 (n + 1) - A155559 n ^ 2)

end

end A223443.P3779665430057703825

namespace A223443

/-- `A005029(2*n+1)+A155559(n+1)-A155559(n)²` -/
def P3779665430057703825.Spec : Prop :=
  ∀ n, P3779665430057703825.a n = A223443 (n + 1)

end A223443

/-! ## A223443.P13619291178441928188

`A005029(2*n+1)+A155559(n+1)-A155559(2*n)`
-/

namespace A223443.P13619291178441928188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 (2 * n + 1) + (A155559 (n + 1) - A155559 (2 * n))

end

end A223443.P13619291178441928188

namespace A223443

/-- `A005029(2*n+1)+A155559(n+1)-A155559(2*n)` -/
def P13619291178441928188.Spec : Prop :=
  ∀ n, P13619291178441928188.a n = A223443 (n + 1)

end A223443

/-!
# A223444: 4-level binary fanout graph coloring a rectangular array: number of nX3 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223444, there is no canonical definition to state claims against.
-/

/-! ## A223444.P13795950893962539258

`A223449(∑[n+2]+4)`
-/

namespace A223444.P13795950893962539258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223444.P13795950893962539258

/-! ## A223444.P10944425350849216648

`lcm(2, A223449(A167614(n+1)))`
-/

namespace A223444.P10944425350849216648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223449 (A167614 (n + 1)).toNat)

end

end A223444.P10944425350849216648

/-! ## A223444.P3136743749280947912

`A277165(n)+A223449(A167614(n+1))`
-/

namespace A223444.P3136743749280947912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 n + A223449 (A167614 (n + 1)).toNat

end

end A223444.P3136743749280947912

/-! ## A223444.P11668193452094212538

`A223449(A167614(n+1))+A000007(n+1)`
-/

namespace A223444.P11668193452094212538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A223444.P11668193452094212538

/-! ## A223444.P17823037303104459531

`A223449(A034856(n+2))+A000007(n+1)`
-/

namespace A223444.P17823037303104459531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A223444.P17823037303104459531

/-!
# A223445: 4-level binary fanout graph coloring a rectangular array: number of nX4 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223445, there is no canonical definition to state claims against.
-/

/-! ## A223445.P17428680517085604540

`A223449(∑[n+3]+7)`
-/

namespace A223445.P17428680517085604540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223445.P17428680517085604540

/-! ## A223445.P12016281179708170942

`lcm(2, A223449(A027379(n+2)))`
-/

namespace A223445.P12016281179708170942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223449 (A027379 (n + 2)).toNat)

end

end A223445.P12016281179708170942

/-! ## A223445.P8464106890616548689

`lcm(8, A223449(A374004(n+1)))`
-/

namespace A223445.P8464106890616548689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A223449 (A374004 (n + 1)).toNat)

end

end A223445.P8464106890616548689

/-! ## A223445.P12107473697127513044

`A223449(A374004(n+1))%A273934(n+1)`
-/

namespace A223445.P12107473697127513044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223449 (A374004 (n + 1)).toNat) (A273934 (n + 1))

end

end A223445.P12107473697127513044

/-!
# A223446: 4-level binary fanout graph coloring a rectangular array: number of nX5 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223446, there is no canonical definition to state claims against.
-/

/-! ## A223446.P13786531907117029328

`A223449(A155212(n)+13)`
-/

namespace A223446.P13786531907117029328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A155212 n + 13).toNat

end

end A223446.P13786531907117029328

/-! ## A223446.P10353276229786984650

`A223449(A056000(n)+15)`
-/

namespace A223446.P10353276229786984650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A056000 n + 15).toNat

end

end A223446.P10353276229786984650

/-! ## A223446.P2244030194307867397

`A223449(Δ[A264443(n)])`
-/

namespace A223446.P2244030194307867397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (f1 (n + 1) - f1 n).toNat

end

end A223446.P2244030194307867397

/-! ## A223446.P11680603545274191817

`A223449(A374005(n+1))`
-/

namespace A223446.P11680603545274191817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A374005 (n + 1)).toNat

end

end A223446.P11680603545274191817

/-! ## A223446.P15706971730878858685

`A223449(eq[4, A193592(n)])`
-/

namespace A223446.P15706971730878858685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223446.P15706971730878858685

/-!
# A223447: 4-level binary fanout graph coloring a rectangular array: number of nX6 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223447, there is no canonical definition to state claims against.
-/

/-! ## A223447.P6490446002556854447

`A223449(eq[7, A131818(n+1)])`
-/

namespace A223447.P6490446002556854447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223447.P6490446002556854447

/-! ## A223447.P6229304246386614165

`A223449(A022856(A020723(n))+4)`
-/

namespace A223447.P6229304246386614165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A022856 (A020723 n).toNat + 4).toNat

end

end A223447.P6229304246386614165

/-! ## A223447.P8121949696513818121

`A223449(A374007(n+1))`
-/

namespace A223447.P8121949696513818121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A374007 (n + 1)).toNat

end

end A223447.P8121949696513818121

/-! ## A223447.P17433559874878815656

`A223449(eq[5, A193592(n)])`
-/

namespace A223447.P17433559874878815656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223447.P17433559874878815656

/-! ## A223447.P6662503964933569293

`A223449(eq[8, A185782(n+1)])`
-/

namespace A223447.P6662503964933569293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223447.P6662503964933569293

/-!
# A223448: 4-level binary fanout graph coloring a rectangular array: number of n X 7 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 1,3 3,5 3,6 1,4 4,7 4,8 0,2 2,9 9,11 9,12 2,10 10,13 10,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223448, there is no canonical definition to state claims against.
-/

/-! ## A223448.P11596378395830309695

`A223449(eq[8, A131818(n+1)])`
-/

namespace A223448.P11596378395830309695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223448.P11596378395830309695

/-! ## A223448.P15753259841375784629

`A223449(A374008(n+1))`
-/

namespace A223448.P15753259841375784629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A374008 (n + 1)).toNat

end

end A223448.P15753259841375784629

/-! ## A223448.P14536818625065953764

`A223449(A055999(n+4))`
-/

namespace A223448.P14536818625065953764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (A055999 (n + 4)).toNat

end

end A223448.P14536818625065953764

/-! ## A223448.P14805050932705734558

`A223449(eq[6, A193592(n)])`
-/

namespace A223448.P14805050932705734558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223448.P14805050932705734558

/-! ## A223448.P9850813417041333732

`A223449(eq[10, A185782(n+1)])`
-/

namespace A223448.P9850813417041333732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223448.P9850813417041333732

/-!
# A223451: Number of idempotent 2X2 -n..n matrices of rank 1.

The programs for A223451, the canonical program `A223451.P10772190599680636962` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223451 has offset 1).

The definition of A223451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223451.P16710728592301474419

`8*∑[∏{p}[n+1, ceil(atan(#))]]+2`
-/

namespace A223451.P16710728592301474419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈Real.arctan (p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A223451.P16710728592301474419

namespace A223451

/-- `8*∑[∏{p}[n+1, ceil(atan(#))]]+2` -/
def P16710728592301474419.Spec : Prop :=
  ∀ n, P16710728592301474419.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P10772190599680636962

`8*∑[∏{p}[n+1, 2%#²]]+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223451

/-- `8*∑[∏{p}[n+1, 2%#²]]+2` -/
def P10772190599680636962.Spec : Prop :=
  ∀ n, (P10772190599680636962.a n : ℤ) = A223451 (n + 1)

theorem P10772190599680636962.correct : P10772190599680636962.Spec := by
  intro n
  simp only [A223451, Nat.add_sub_cancel]

end A223451

/-! ## A223451.P11694279729740908287

`8*∑[∏{p}[n+1, gcd(n, #)+1]]+2`
-/

namespace A223451.P11694279729740908287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.gcd n p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A223451.P11694279729740908287

namespace A223451

/-- `8*∑[∏{p}[n+1, gcd(n, #)+1]]+2` -/
def P11694279729740908287.Spec : Prop :=
  ∀ n, (P11694279729740908287.a n : ℤ) = A223451 (n + 1)

end A223451

/-! ## A223451.P8425759651948192572

`8*∑[∏{p}[n+1, xor(#, xor(2, #))]]+2`
-/

namespace A223451.P8425759651948192572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.xor p (Nat.xor 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A223451.P8425759651948192572

namespace A223451

/-- `8*∑[∏{p}[n+1, xor(#, xor(2, #))]]+2` -/
def P8425759651948192572.Spec : Prop :=
  ∀ n, (P8425759651948192572.a n : ℤ) = A223451 (n + 1)

end A223451

/-! ## A223451.P2604144931128975479

`A223454(n+1)-2`
-/

namespace A223451.P2604144931128975479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223454 (n + 1) - 2

end

end A223451.P2604144931128975479

namespace A223451

/-- `A223454(n+1)-2` -/
def P2604144931128975479.Spec : Prop :=
  ∀ n, P2604144931128975479.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P5517766485665647958

`2*(A226323(n+1)-4)`
-/

namespace A223451.P5517766485665647958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A226323 (n + 1) - 4)

end

end A223451.P5517766485665647958

namespace A223451

/-- `2*(A226323(n+1)-4)` -/
def P5517766485665647958.Spec : Prop :=
  ∀ n, P5517766485665647958.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P783417929018508129

`∑[8*A034444(n+1)]+2`
-/

namespace A223451.P783417929018508129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A223451.P783417929018508129

namespace A223451

/-- `∑[8*A034444(n+1)]+2` -/
def P783417929018508129.Spec : Prop :=
  ∀ n, P783417929018508129.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P9372283374172827314

`∑[2^(A001221(n+1)+3)]+2`
-/

namespace A223451.P9372283374172827314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) + 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A223451.P9372283374172827314

namespace A223451

/-- `∑[2^(A001221(n+1)+3)]+2` -/
def P9372283374172827314.Spec : Prop :=
  ∀ n, P9372283374172827314.a n = (A223451 (n + 1) : ℚ)

end A223451

/-! ## A223451.P17599760661283314733

`8*∑[A000005(∏{p}[n+1, #])]+2`
-/

namespace A223451.P17599760661283314733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A223451.P17599760661283314733

namespace A223451

/-- `8*∑[A000005(∏{p}[n+1, #])]+2` -/
def P17599760661283314733.Spec : Prop :=
  ∀ n, P17599760661283314733.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P15399703288724123140

`A017089(A064608(n+1))`
-/

namespace A223451.P15399703288724123140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A064608 (n + 1)).toNat

end

end A223451.P15399703288724123140

namespace A223451

/-- `A017089(A064608(n+1))` -/
def P15399703288724123140.Spec : Prop :=
  ∀ n, P15399703288724123140.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P1488814817742431651

`A004447(A223454(n+1))`
-/

namespace A223451.P1488814817742431651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A223454 (n + 1)).toNat

end

end A223451.P1488814817742431651

namespace A223451

/-- `A004447(A223454(n+1))` -/
def P1488814817742431651.Spec : Prop :=
  ∀ n, P1488814817742431651.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P11484740458402843355

`A017089(∑[A034444(n+1)])`
-/

namespace A223451.P11484740458402843355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223451.P11484740458402843355

namespace A223451

/-- `A017089(∑[A034444(n+1)])` -/
def P11484740458402843355.Spec : Prop :=
  ∀ n, P11484740458402843355.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P5886873821382105378

`A004272(A226323(n+1)-1)`
-/

namespace A223451.P5886873821382105378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (A226323 (n + 1) - 1).toNat

end

end A223451.P5886873821382105378

namespace A223451

/-- `A004272(A226323(n+1)-1)` -/
def P5886873821382105378.Spec : Prop :=
  ∀ n, P5886873821382105378.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P10627464808367950381

`A016825(2*A064608(n+1))`
-/

namespace A223451.P10627464808367950381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * A064608 (n + 1)).toNat

end

end A223451.P10627464808367950381

namespace A223451

/-- `A016825(2*A064608(n+1))` -/
def P10627464808367950381.Spec : Prop :=
  ∀ n, P10627464808367950381.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P5606657194587210640

`A004275(A223454(n+1)/2)`
-/

namespace A223451.P5606657194587210640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A223454 (n + 1) : ℚ) / 2)).toNat

end

end A223451.P5606657194587210640

namespace A223451

/-- `A004275(A223454(n+1)/2)` -/
def P5606657194587210640.Spec : Prop :=
  ∀ n, P5606657194587210640.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P1214341815047948391

`A017113(∑[A034444(n+1)])-2`
-/

namespace A223451.P1214341815047948391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A223451.P1214341815047948391

namespace A223451

/-- `A017113(∑[A034444(n+1)])-2` -/
def P1214341815047948391.Spec : Prop :=
  ∀ n, P1214341815047948391.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P10548319856681573841

`A016825(∑[2*A034444(n+1)])`
-/

namespace A223451.P10548319856681573841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223451.P10548319856681573841

namespace A223451

/-- `A016825(∑[2*A034444(n+1)])` -/
def P10548319856681573841.Spec : Prop :=
  ∀ n, P10548319856681573841.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P11851773728190396082

`A017089(∑[2^A001221(n+1)])`
-/

namespace A223451.P11851773728190396082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223451.P11851773728190396082

namespace A223451

/-- `A017089(∑[2^A001221(n+1)])` -/
def P11851773728190396082.Spec : Prop :=
  ∀ n, P11851773728190396082.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P15675832352410782812

`A017089(∑[A000005(∏{p}[n+1, #])])`
-/

namespace A223451.P15675832352410782812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223451.P15675832352410782812

namespace A223451

/-- `A017089(∑[A000005(∏{p}[n+1, #])])` -/
def P15675832352410782812.Spec : Prop :=
  ∀ n, P15675832352410782812.a n = A223451 (n + 1)

end A223451

/-! ## A223451.P8208768536055571377

`A022144(∑[2^A001221(n+1)])+2`
-/

namespace A223451.P8208768536055571377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 2

end

end A223451.P8208768536055571377

namespace A223451

/-- `A022144(∑[2^A001221(n+1)])+2` -/
def P8208768536055571377.Spec : Prop :=
  ∀ n, P8208768536055571377.a n = A223451 (n + 1)

end A223451

/-!
# A223452: Number of idempotent 3X3 -n..n matrices of rank 2.

The programs for A223452, there is no canonical definition to state claims against.
-/

/-! ## A223452.P3885160847909542384

`A223455(n+1)-(A221312(n+1)+2)`
-/

namespace A223452.P3885160847909542384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223455 (n + 1) - (A221312 (n + 1) + 2)

end

end A223452.P3885160847909542384

/-! ## A223452.P15842587050975458191

`A168195(A223455(n+1))-A221312(n+1)`
-/

namespace A223452.P15842587050975458191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168195 (A223455 (n + 1)).toNat - A221312 (n + 1)

end

end A223452.P15842587050975458191

/-!
# A223453: T(n,k) = Number of idempotent n X n -k..k matrices.

The programs for A223453, there is no canonical definition to state claims against.
-/

/-! ## A223453.P10488783242643436693

`A301336(A372261(3*n+1))+2`
-/

namespace A223453.P10488783242643436693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 (A372261 (3 * n + 1)).toNat + 2

end

end A223453.P10488783242643436693

/-! ## A223453.P1661841273385750988

`A156581(n)+A003173(A170903(n+1))`
-/

namespace A223453.P1661841273385750988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156581 n + A003173 (A170903 (n + 1)).toNat

end

end A223453.P1661841273385750988

/-!
# A223454: Number of idempotent 2 X 2 -n..n matrices.

The programs for A223454, the canonical program `A223454.P7463534272621350601` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223454 has offset 1).

The definition of A223454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223454.P9097570060173322997

`8*∑[∏{p}[n+1, ceil(atan(#))]]+4`
-/

namespace A223454.P9097570060173322997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈Real.arctan (p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A223454.P9097570060173322997

namespace A223454

/-- `8*∑[∏{p}[n+1, ceil(atan(#))]]+4` -/
def P9097570060173322997.Spec : Prop :=
  ∀ n, P9097570060173322997.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P7463534272621350601

`8*∑[∏{e}[∏{p}[n+1, #], #+1]]+4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223454

/-- `8*∑[∏{e}[∏{p}[n+1, #], #+1]]+4` -/
def P7463534272621350601.Spec : Prop :=
  ∀ n, (P7463534272621350601.a n : ℤ) = A223454 (n + 1)

theorem P7463534272621350601.correct : P7463534272621350601.Spec := by
  intro n
  simp only [A223454, Nat.add_sub_cancel]

end A223454

/-! ## A223454.P5766954665758828046

`A223451(n+1)+2`
-/

namespace A223454.P5766954665758828046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223451 (n + 1) + 2

end

end A223454.P5766954665758828046

namespace A223454

/-- `A223451(n+1)+2` -/
def P5766954665758828046.Spec : Prop :=
  ∀ n, P5766954665758828046.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P8182053188035554137

`2*(A226323(n+1)-3)`
-/

namespace A223454.P8182053188035554137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A226323 (n + 1) - 3)

end

end A223454.P8182053188035554137

namespace A223454

/-- `2*(A226323(n+1)-3)` -/
def P8182053188035554137.Spec : Prop :=
  ∀ n, P8182053188035554137.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P5987037645041676420

`8*A064608(n+1)+4`
-/

namespace A223454.P5987037645041676420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A064608 (n + 1) + 4

end

end A223454.P5987037645041676420

namespace A223454

/-- `8*A064608(n+1)+4` -/
def P5987037645041676420.Spec : Prop :=
  ∀ n, P5987037645041676420.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P5628905766703713754

`∑[8*A034444(n+1)]+4`
-/

namespace A223454.P5628905766703713754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A223454.P5628905766703713754

namespace A223454

/-- `∑[8*A034444(n+1)]+4` -/
def P5628905766703713754.Spec : Prop :=
  ∀ n, P5628905766703713754.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P9310154574916241196

`∑[2^(A001221(n+1)+3)]+4`
-/

namespace A223454.P9310154574916241196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) + 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A223454.P9310154574916241196

namespace A223454

/-- `∑[2^(A001221(n+1)+3)]+4` -/
def P9310154574916241196.Spec : Prop :=
  ∀ n, P9310154574916241196.a n = (A223454 (n + 1) : ℚ)

end A223454

/-! ## A223454.P2541015610415663437

`∑[8*A000005(∏{p}[n+1, #])]+4`
-/

namespace A223454.P2541015610415663437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000005 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A223454.P2541015610415663437

namespace A223454

/-- `∑[8*A000005(∏{p}[n+1, #])]+4` -/
def P2541015610415663437.Spec : Prop :=
  ∀ n, P2541015610415663437.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P16265170769374861223

`A017113(A064608(n+1))`
-/

namespace A223454.P16265170769374861223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A064608 (n + 1)).toNat

end

end A223454.P16265170769374861223

namespace A223454

/-- `A017113(A064608(n+1))` -/
def P16265170769374861223.Spec : Prop :=
  ∀ n, P16265170769374861223.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P8268274723635765802

`A004447(A223451(n+1))`
-/

namespace A223454.P8268274723635765802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A223451 (n + 1)).toNat

end

end A223454.P8268274723635765802

namespace A223454

/-- `A004447(A223451(n+1))` -/
def P8268274723635765802.Spec : Prop :=
  ∀ n, P8268274723635765802.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P7852267955612180266

`A004272(A226323(n+1))`
-/

namespace A223454.P7852267955612180266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (A226323 (n + 1)).toNat

end

end A223454.P7852267955612180266

namespace A223454

/-- `A004272(A226323(n+1))` -/
def P7852267955612180266.Spec : Prop :=
  ∀ n, P7852267955612180266.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P8173571405026534338

`A017113(∑[A034444(n+1)])`
-/

namespace A223454.P8173571405026534338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223454.P8173571405026534338

namespace A223454

/-- `A017113(∑[A034444(n+1)])` -/
def P8173571405026534338.Spec : Prop :=
  ∀ n, P8173571405026534338.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P12914819503017391892

`A134965(A064608(n+1)+1)`
-/

namespace A223454.P12914819503017391892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134965 (A064608 (n + 1) + 1).toNat

end

end A223454.P12914819503017391892

namespace A223454

/-- `A134965(A064608(n+1)+1)` -/
def P12914819503017391892.Spec : Prop :=
  ∀ n, P12914819503017391892.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P11893448279803389777

`A017113(∑[abs(A158522(n+1))])`
-/

namespace A223454.P11893448279803389777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223454.P11893448279803389777

namespace A223454

/-- `A017113(∑[abs(A158522(n+1))])` -/
def P11893448279803389777.Spec : Prop :=
  ∀ n, P11893448279803389777.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P12439628208151111670

`A017089(∑[A034444(n+1)])+2`
-/

namespace A223454.P12439628208151111670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A223454.P12439628208151111670

namespace A223454

/-- `A017089(∑[A034444(n+1)])+2` -/
def P12439628208151111670.Spec : Prop :=
  ∀ n, P12439628208151111670.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P18026282070033732711

`2*A016825(∑[A034444(n+1)])`
-/

namespace A223454.P18026282070033732711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223454.P18026282070033732711

namespace A223454

/-- `2*A016825(∑[A034444(n+1)])` -/
def P18026282070033732711.Spec : Prop :=
  ∀ n, P18026282070033732711.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P1532200566032145733

`A017113(∑[A000005(∏{p}[n+1, #])])`
-/

namespace A223454.P1532200566032145733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A223454.P1532200566032145733

namespace A223454

/-- `A017113(∑[A000005(∏{p}[n+1, #])])` -/
def P1532200566032145733.Spec : Prop :=
  ∀ n, P1532200566032145733.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P18046742123386815932

`A022144(∑[2^A001221(n+1)])+4`
-/

namespace A223454.P18046742123386815932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 4

end

end A223454.P18046742123386815932

namespace A223454

/-- `A022144(∑[2^A001221(n+1)])+4` -/
def P18046742123386815932.Spec : Prop :=
  ∀ n, P18046742123386815932.a n = A223454 (n + 1)

end A223454

/-! ## A223454.P4436668535664623118

`4*A005408(∑[2^A001221(n+1)])`
-/

namespace A223454.P4436668535664623118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005408 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223454.P4436668535664623118

namespace A223454

/-- `4*A005408(∑[2^A001221(n+1)])` -/
def P4436668535664623118.Spec : Prop :=
  ∀ n, P4436668535664623118.a n = A223454 (n + 1)

end A223454

/-!
# A223455: Number of idempotent 3 X 3 -n..n matrices.

The programs for A223455, there is no canonical definition to state claims against.
-/

/-! ## A223455.P1949639969336548167

`A221312(n+1)+A223452(n+1)+2`
-/

namespace A223455.P1949639969336548167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221312 (n + 1) + (A223452 (n + 1) + 2)

end

end A223455.P1949639969336548167

/-! ## A223455.P14664951289268854784

`A061228(A223452(n+1)+A221312(n+1))`
-/

namespace A223455.P14664951289268854784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (A223452 (n + 1) + A221312 (n + 1)).toNat

end

end A223455.P14664951289268854784

/-!
# A223456: Composite numbers whose number of proper divisors has a prime number of proper divisors.

The programs for A223456, the canonical program `A223456.P16215183360678606943` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223456 has offset 1).

The definition of A223456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223456.P16215183360678606943

`filter[A154893(n+1), A066247(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A223456

/-- `filter[A154893(n+1), A066247(#)]` -/
def P16215183360678606943.Spec : Prop :=
  ∀ n, P16215183360678606943.a n = A223456 (n + 1)

theorem P16215183360678606943.correct : P16215183360678606943.Spec := by
  intro n
  simp only [A223456, Nat.add_sub_cancel]

end A223456

/-! ## A223456.P18162192634470307188

`filter[A154893(n+2), A005171(#)]`
-/

namespace A223456.P18162192634470307188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A223456.P18162192634470307188

namespace A223456

/-- `filter[A154893(n+2), A005171(#)]` -/
def P18162192634470307188.Spec : Prop :=
  ∀ n, P18162192634470307188.a n = A223456 (n + 1)

end A223456

/-! ## A223456.P17533571680209194757

`∩[A033987(n+1), A154893(n+1)]`
-/

namespace A223456.P17533571680209194757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P17533571680209194757

namespace A223456

/-- `∩[A033987(n+1), A154893(n+1)]` -/
def P17533571680209194757.Spec : Prop :=
  ∀ n, (P17533571680209194757.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P16706068507249090998

`∩[A002808(n+1), A154893(n+1)]`
-/

namespace A223456.P16706068507249090998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P16706068507249090998

namespace A223456

/-- `∩[A002808(n+1), A154893(n+1)]` -/
def P16706068507249090998.Spec : Prop :=
  ∀ n, (P16706068507249090998.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P17252620551357519237

`∩[A154893(n+1), A379271(n+1)]`
-/

namespace A223456.P17252620551357519237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P17252620551357519237

namespace A223456

/-- `∩[A154893(n+1), A379271(n+1)]` -/
def P17252620551357519237.Spec : Prop :=
  ∀ n, (P17252620551357519237.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P6130251349220631238

`∩[A058080(n+1), A154893(n+1)]`
-/

namespace A223456.P6130251349220631238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P6130251349220631238

namespace A223456

/-- `∩[A058080(n+1), A154893(n+1)]` -/
def P6130251349220631238.Spec : Prop :=
  ∀ n, (P6130251349220631238.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P14730091023151967398

`∩[A033942(n+1), A154893(n+1)]`
-/

namespace A223456.P14730091023151967398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P14730091023151967398

namespace A223456

/-- `∩[A033942(n+1), A154893(n+1)]` -/
def P14730091023151967398.Spec : Prop :=
  ∀ n, (P14730091023151967398.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P16670901374253138446

`∩[A066423(n+1), A154893(n+1)]`
-/

namespace A223456.P16670901374253138446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P16670901374253138446

namespace A223456

/-- `∩[A066423(n+1), A154893(n+1)]` -/
def P16670901374253138446.Spec : Prop :=
  ∀ n, (P16670901374253138446.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P1904918708135085236

`∩[A088381(n+1), A154893(n+1)]`
-/

namespace A223456.P1904918708135085236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P1904918708135085236

namespace A223456

/-- `∩[A088381(n+1), A154893(n+1)]` -/
def P1904918708135085236.Spec : Prop :=
  ∀ n, (P1904918708135085236.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P2465000037596578091

`∩[A009188(n+1), A154893(n+1)]`
-/

namespace A223456.P2465000037596578091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P2465000037596578091

namespace A223456

/-- `∩[A009188(n+1), A154893(n+1)]` -/
def P2465000037596578091.Spec : Prop :=
  ∀ n, (P2465000037596578091.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P4610728123948181365

`∩[A154893(n+1), A175526(n+1)]`
-/

namespace A223456.P4610728123948181365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P4610728123948181365

namespace A223456

/-- `∩[A154893(n+1), A175526(n+1)]` -/
def P4610728123948181365.Spec : Prop :=
  ∀ n, (P4610728123948181365.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P1589361088166748386

`∩[A080257(n+1), A154893(n+1)]`
-/

namespace A223456.P1589361088166748386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P1589361088166748386

namespace A223456

/-- `∩[A080257(n+1), A154893(n+1)]` -/
def P1589361088166748386.Spec : Prop :=
  ∀ n, (P1589361088166748386.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P3298645030222628374

`∩[A154893(n+1), A220571(n+1)]`
-/

namespace A223456.P3298645030222628374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P3298645030222628374

namespace A223456

/-- `∩[A154893(n+1), A220571(n+1)]` -/
def P3298645030222628374.Spec : Prop :=
  ∀ n, (P3298645030222628374.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P13848787672281901367

`∩[A154893(n+1), A343311(n+1)]`
-/

namespace A223456.P13848787672281901367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P13848787672281901367

namespace A223456

/-- `∩[A154893(n+1), A343311(n+1)]` -/
def P13848787672281901367.Spec : Prop :=
  ∀ n, (P13848787672281901367.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P10289756460708740909

`∩[A154893(n+1), A387319(n+1)]`
-/

namespace A223456.P10289756460708740909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223456.P10289756460708740909

namespace A223456

/-- `∩[A154893(n+1), A387319(n+1)]` -/
def P10289756460708740909.Spec : Prop :=
  ∀ n, (P10289756460708740909.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P17742047595317631371

`lt[1, A003415(A032741(n))]`
-/

namespace A223456.P17742047595317631371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223456.P17742047595317631371

namespace A223456

/-- `lt[1, A003415(A032741(n))]` -/
def P17742047595317631371.Spec : Prop :=
  ∀ n, (P17742047595317631371.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P9506315300273384201

`lt[1, A160086(A032741(n)²)]`
-/

namespace A223456.P9506315300273384201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A032741 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223456.P9506315300273384201

namespace A223456

/-- `lt[1, A160086(A032741(n)²)]` -/
def P9506315300273384201.Spec : Prop :=
  ∀ n, (P9506315300273384201.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P17040337082827101784

`lt[2, A032741(A032741(n)²)]`
-/

namespace A223456.P17040337082827101784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223456.P17040337082827101784

namespace A223456

/-- `lt[2, A032741(A032741(n)²)]` -/
def P17040337082827101784.Spec : Prop :=
  ∀ n, (P17040337082827101784.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P5884695313023606361

`eq[4, A073855(A032741(n)²)]`
-/

namespace A223456.P5884695313023606361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A032741 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223456.P5884695313023606361

namespace A223456

/-- `eq[4, A073855(A032741(n)²)]` -/
def P5884695313023606361.Spec : Prop :=
  ∀ n, (P5884695313023606361.a n : ℤ) = A223456 (n + 1)

end A223456

/-! ## A223456.P6322912769374862537

`filter[A154893(n+1), A252742(#)]`
-/

namespace A223456.P6322912769374862537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j).toNat = 1) n)

end

end A223456.P6322912769374862537

namespace A223456

/-- `filter[A154893(n+1), A252742(#)]` -/
def P6322912769374862537.Spec : Prop :=
  ∀ n, P6322912769374862537.a n = A223456 (n + 1)

end A223456

/-!
# A223459: 6X6X6 triangular graph without horizontal edges coloring a rectangular array: number of n X n 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223459, there is no canonical definition to state claims against.
-/

/-! ## A223459.P13684874515955247170

`A223467((n+1)²+n²)`
-/

namespace A223459.P13684874515955247170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 ((n + 1) ^ 2 + n ^ 2)

end

end A223459.P13684874515955247170

/-!
# A223460: 6 X 6 X 6 triangular graph without horizontal edges coloring a rectangular array: number of n X 1 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223460, there is no canonical definition to state claims against.
-/

/-! ## A223460.P8880136895487123205

`A223467(∑[n]+1)`
-/

namespace A223460.P8880136895487123205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223460.P8880136895487123205

/-! ## A223460.P2398012185432782870

`record[A010054(n)*A223467(n+1)]`
-/

namespace A223460.P2398012185432782870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223460.P2398012185432782870

/-! ## A223460.P16331571867527322315

`record[root(A223467(n+1), A013610(n))]`
-/

namespace A223460.P16331571867527322315
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223467 (n + 1) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223460.P16331571867527322315

/-! ## A223460.P2502296842751118763

`record[gcd(A002262(n), A223467(n+1))]`
-/

namespace A223460.P2502296842751118763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A223467 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223460.P2502296842751118763

/-! ## A223460.P10357406447095476073

`A223467(A000124(n))%A251231(n+1)`
-/

namespace A223460.P10357406447095476073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223467 (A000124 n).toNat) (A251231 (n + 1))

end

end A223460.P10357406447095476073

/-!
# A223461: 6X6X6 triangular graph without horizontal edges coloring a rectangular array: number of nX2 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223461, there is no canonical definition to state claims against.
-/

/-! ## A223461.P5348264254865432024

`A223467(∑[n+1]+2)`
-/

namespace A223461.P5348264254865432024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223461.P5348264254865432024

/-! ## A223461.P2808028122971868525

`record[A010054(n)*A223467(n+2)]`
-/

namespace A223461.P2808028122971868525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223461.P2808028122971868525

/-! ## A223461.P13895329003875640398

`record[root(A223467(n+2), A013610(n))]`
-/

namespace A223461.P13895329003875640398
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223467 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223461.P13895329003875640398

/-! ## A223461.P11700889431111725538

`record[gcd(A002262(n), A223467(n+2))]`
-/

namespace A223461.P11700889431111725538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A223467 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223461.P11700889431111725538

/-! ## A223461.P16628217662877596008

`record[A223467(abs(A201163(n)))]`
-/

namespace A223461.P16628217662877596008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223461.P16628217662877596008

/-!
# A223462: 6X6X6 triangular graph without horizontal edges coloring a rectangular array: number of nX3 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223462, there is no canonical definition to state claims against.
-/

/-! ## A223462.P17523928514249026888

`A223467(∑[n+2]+4)`
-/

namespace A223462.P17523928514249026888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223462.P17523928514249026888

/-! ## A223462.P14348960640578849620

`lcm(2, A223467(A167614(n+1)))`
-/

namespace A223462.P14348960640578849620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223467 (A167614 (n + 1)).toNat)

end

end A223462.P14348960640578849620

/-! ## A223462.P1132526925678864030

`A223467(A167614(n+1))+A180472(n)`
-/

namespace A223462.P1132526925678864030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A167614 (n + 1)).toNat + A180472 n

end

end A223462.P1132526925678864030

/-! ## A223462.P1721303948762469810

`A223467(A167614(n+1))+A185284(n)`
-/

namespace A223462.P1721303948762469810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A167614 (n + 1)).toNat + A185284 n

end

end A223462.P1721303948762469810

/-! ## A223462.P11708804071797317670

`A235044(n)+A223467(A167614(n+1))`
-/

namespace A223462.P11708804071797317670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A223467 (A167614 (n + 1)).toNat

end

end A223462.P11708804071797317670

/-!
# A223463: 6X6X6 triangular graph without horizontal edges coloring a rectangular array: number of nX4 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223463, there is no canonical definition to state claims against.
-/

/-! ## A223463.P6420478504913662927

`A223467(∑[n+3]+7)`
-/

namespace A223463.P6420478504913662927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223463.P6420478504913662927

/-! ## A223463.P16377348606173951758

`A010684(2*n)*A223467(A055999(n)+10)`
-/

namespace A223463.P16377348606173951758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A223467 (A055999 n + 10).toNat

end

end A223463.P16377348606173951758

/-! ## A223463.P9275461521997935220

`abs(1-A223467(A027379(n+2)))+1`
-/

namespace A223463.P9275461521997935220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A223467 (A027379 (n + 2)).toNat| + 1

end

end A223463.P9275461521997935220

/-! ## A223463.P12042569548231507169

`A223467(A046691(n+2)+1)-A069905(A341675(n+1))`
-/

namespace A223463.P12042569548231507169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A046691 (n + 2) + 1).toNat - A069905 (A341675 (n + 1)).toNat

end

end A223463.P12042569548231507169

/-! ## A223463.P18277482838866453235

`A223467(A046691(n+2)+1)-A069905(A336922(n+1)²)`
-/

namespace A223463.P18277482838866453235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A046691 (n + 2) + 1).toNat - A069905 (A336922 (n + 1) ^ 2).toNat

end

end A223463.P18277482838866453235

/-!
# A223464: 6X6X6 triangular graph without horizontal edges coloring a rectangular array: number of nX5 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223464, there is no canonical definition to state claims against.
-/

/-! ## A223464.P9753368369265723371

`A223467(A374005(n+1))`
-/

namespace A223464.P9753368369265723371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A374005 (n + 1)).toNat

end

end A223464.P9753368369265723371

/-! ## A223464.P15200390610436521338

`A223467(A056000(n)+15)`
-/

namespace A223464.P15200390610436521338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A056000 n + 15).toNat

end

end A223464.P15200390610436521338

/-! ## A223464.P4658357719497897844

`A223467(eq[6, A131818(n+1)])`
-/

namespace A223464.P4658357719497897844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223464.P4658357719497897844

/-! ## A223464.P16337286974654029792

`A223467(eq[4, A193592(n)])`
-/

namespace A223464.P16337286974654029792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223464.P16337286974654029792

/-! ## A223464.P10995642983756695666

`A223467(Δ[A023545(n+1)])`
-/

namespace A223464.P10995642983756695666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (f1 (n + 1) - f1 n).toNat

end

end A223464.P10995642983756695666

/-!
# A223465: 6X6X6 triangular graph without horizontal edges coloring a rectangular array: number of nX6 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223465, there is no canonical definition to state claims against.
-/

/-! ## A223465.P13207886514221698995

`A223467(A374007(n+1))`
-/

namespace A223465.P13207886514221698995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A374007 (n + 1)).toNat

end

end A223465.P13207886514221698995

/-! ## A223465.P12867861421426780777

`A223467(eq[7, A131818(n+1)])`
-/

namespace A223465.P12867861421426780777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223465.P12867861421426780777

/-! ## A223465.P14596746323851598535

`A223467(Δ[A023545(n+2)]-1)`
-/

namespace A223465.P14596746323851598535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (f1 (n + 1) - f1 n - 1).toNat

end

end A223465.P14596746323851598535

/-!
# A223466: 6X6X6 triangular graph without horizontal edges coloring a rectangular array: number of nX7 0..20 arrays where 0..20 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 3,6 3,7 4,7 4,8 5,8 5,9 6,10 6,11 7,11 7,12 8,12 8,13 9,13 9,14 10,15 10,16 11,16 11,17 12,17 12,18 13,18 13,19 14,19 14,20 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223466, there is no canonical definition to state claims against.
-/

/-! ## A223466.P17438559553467109141

`A223467(A374008(n+1))`
-/

namespace A223466.P17438559553467109141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (A374008 (n + 1)).toNat

end

end A223466.P17438559553467109141

/-! ## A223466.P13949789995615703185

`A223467(eq[8, A131818(n+1)])`
-/

namespace A223466.P13949789995615703185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223466.P13949789995615703185

/-!
# A223468: Number of nX2 0..2 arrays with no more than floor(nX2/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223468, there is no canonical definition to state claims against.
-/

/-! ## A223468.P1627025890484628938

`A223028(n+1)+A077957(n)`
-/

namespace A223468.P1627025890484628938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223028 (n + 1) + A077957 n

end

end A223468.P1627025890484628938

/-! ## A223468.P2797125220773623388

`A223028(n+1)+Δ[A060546(n)]`
-/

namespace A223468.P2797125220773623388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223028 (n + 1) + (f1 (n + 1) - f1 n)

end

end A223468.P2797125220773623388

/-! ## A223468.P6895839959868531035

`A223028(n+1)+A052552(n)-1`
-/

namespace A223468.P6895839959868531035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223028 (n + 1) + (A052552 n - 1)

end

end A223468.P6895839959868531035

/-! ## A223468.P5760603468452527529

`A223028(n+1)+Δ[A016116(n+1)]`
-/

namespace A223468.P5760603468452527529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223028 (n + 1) + (f1 (n + 1) - f1 n)

end

end A223468.P5760603468452527529

/-! ## A223468.P9573107632314279184

`A060546(n+1)-(A060546(n)-A223028(n+1))`
-/

namespace A223468.P9573107632314279184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - (A060546 n - A223028 (n + 1))

end

end A223468.P9573107632314279184

/-!
# A223469: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223469, there is no canonical definition to state claims against.
-/

/-! ## A223469.P9017037101527886685

`A223473(∑[n+2]+4)`
-/

namespace A223469.P9017037101527886685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223469.P9017037101527886685

/-! ## A223469.P4765971282030813843

`A223473(A167614(n+1))+A011737(n)`
-/

namespace A223469.P4765971282030813843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A167614 (n + 1)).toNat + A011737 n

end

end A223469.P4765971282030813843

/-! ## A223469.P17662303483589825059

`A223473(A167614(n+1))+A025442(n)`
-/

namespace A223469.P17662303483589825059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A167614 (n + 1)).toNat + A025442 n

end

end A223469.P17662303483589825059

/-! ## A223469.P16229021810455478034

`A223473(A167614(n+1))+A025444(n)`
-/

namespace A223469.P16229021810455478034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A167614 (n + 1)).toNat + A025444 n

end

end A223469.P16229021810455478034

/-! ## A223469.P9538151526478951964

`A223473(A167614(n+1))+A036426(n)`
-/

namespace A223469.P9538151526478951964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A167614 (n + 1)).toNat + A036426 n

end

end A223469.P9538151526478951964

/-!
# A223470: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223470, there is no canonical definition to state claims against.
-/

/-! ## A223470.P17092175168896602488

`A223473(∑[n+3]+7)`
-/

namespace A223470.P17092175168896602488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223470.P17092175168896602488

/-!
# A223471: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223471, there is no canonical definition to state claims against.
-/

/-! ## A223471.P8578673298411771685

`A223473(A374005(n+1))`
-/

namespace A223471.P8578673298411771685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A374005 (n + 1)).toNat

end

end A223471.P8578673298411771685

/-! ## A223471.P14802998394963093602

`A223473(A167499(n+3))`
-/

namespace A223471.P14802998394963093602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A167499 (n + 3)).toNat

end

end A223471.P14802998394963093602

/-! ## A223471.P15680711588361463122

`A223473(A155212(n)+13)`
-/

namespace A223471.P15680711588361463122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A155212 n + 13).toNat

end

end A223471.P15680711588361463122

/-! ## A223471.P4356046970776729328

`A223473(A056000(n)+15)`
-/

namespace A223471.P4356046970776729328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A056000 n + 15).toNat

end

end A223471.P4356046970776729328

/-! ## A223471.P16923329247597311437

`A223473(eq[7, A066657(n)])`
-/

namespace A223471.P16923329247597311437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223471.P16923329247597311437

/-!
# A223472: Number of nX6 0..2 arrays with no more than floor(nX6/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223472, there is no canonical definition to state claims against.
-/

/-! ## A223472.P5539683183962078230

`A223473(A374007(n+1))`
-/

namespace A223472.P5539683183962078230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A374007 (n + 1)).toNat

end

end A223472.P5539683183962078230

/-! ## A223472.P16974023919982972656

`A223473(A166136(n+4))`
-/

namespace A223472.P16974023919982972656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A166136 (n + 4)).toNat

end

end A223472.P16974023919982972656

/-! ## A223472.P13082709416636126506

`A223473(A056115(n)+21)`
-/

namespace A223472.P13082709416636126506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A056115 n + 21).toNat

end

end A223472.P13082709416636126506

/-! ## A223472.P10419314240277357979

`A223473(A167499(n+4)+1)`
-/

namespace A223472.P10419314240277357979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223473 (A167499 (n + 4) + 1).toNat

end

end A223472.P10419314240277357979

/-!
# A223474: Least positive multiple of n that when written in base 10 has digits in nonincreasing order.

The programs for A223474, there is no canonical definition to state claims against.
-/

/-! ## A223474.P8518513700651587958

`(n+1)*A223475(n+1)`
-/

namespace A223474.P8518513700651587958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A223475 (n + 1)

end

end A223474.P8518513700651587958

/-! ## A223474.P5046217147921449774

`lcm(n+1, A332202(A069183(n)))`
-/

namespace A223474.P5046217147921449774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A332202 (A069183 n).toNat)

end

end A223474.P5046217147921449774

/-! ## A223474.P2877135067859822286

`lcm(A077168(n), A223475(A077168(n)))`
-/

namespace A223474.P2877135067859822286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077168 n) (A223475 (A077168 n).toNat)

end

end A223474.P2877135067859822286

/-! ## A223474.P13928212391508191534

`lcm(A223475(n+1), A333861(A000079(n)))`
-/

namespace A223474.P13928212391508191534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A223475 (n + 1)) (A333861 (A000079 n).toNat)

end

end A223474.P13928212391508191534

/-! ## A223474.P9629984326934946579

`A066799(A143570(n))*A138389(n+1)`
-/

namespace A223474.P9629984326934946579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (A143570 n).toNat * A138389 (n + 1)

end

end A223474.P9629984326934946579

/-!
# A223475: Least k such that the decimal representation of k*n has digits in nonincreasing order.

The programs for A223475, there is no canonical definition to state claims against.
-/

/-! ## A223475.P2968921611121886658

`A223474(n+1)/(n+1)`
-/

namespace A223475.P2968921611121886658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223474 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A223475.P2968921611121886658

/-!
# A223476: Rolling icosahedron face footprints: number of n X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223476, there is no canonical definition to state claims against.
-/

/-! ## A223476.P4156142551003231876

`A223480(∑[4*n]+1)`
-/

namespace A223476.P4156142551003231876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223476.P4156142551003231876

/-! ## A223476.P3076880453146210543

`or(1, A223480(A001844(n)))`
-/

namespace A223476.P3076880453146210543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223480 (A001844 n).toNat)

end

end A223476.P3076880453146210543

/-! ## A223476.P14749174307255601307

`record[A003982(n)*A223480(n+1)]`
-/

namespace A223476.P14749174307255601307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223476.P14749174307255601307

/-! ## A223476.P13247487400183101093

`record[gcd(A114327(n), A223480(n+1))]`
-/

namespace A223476.P13247487400183101093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223480 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223476.P13247487400183101093

/-! ## A223476.P2971093390321898218

`A259195(n)+A223480(A001844(n))`
-/

namespace A223476.P2971093390321898218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 n + A223480 (A001844 n).toNat

end

end A223476.P2971093390321898218

/-!
# A223477: Rolling icosahedron face footprints: number of n X 5 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223477, there is no canonical definition to state claims against.
-/

/-! ## A223477.P10464534911052798923

`A223480(Δ[A264443(n)])`
-/

namespace A223477.P10464534911052798923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (f1 (n + 1) - f1 n).toNat

end

end A223477.P10464534911052798923

/-! ## A223477.P5029107044516660380

`A223480(A046691(n+3))`
-/

namespace A223477.P5029107044516660380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A046691 (n + 3)).toNat

end

end A223477.P5029107044516660380

/-! ## A223477.P7116729056486693750

`A223480(eq[4, A193592(n)])`
-/

namespace A223477.P7116729056486693750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223477.P7116729056486693750

/-! ## A223477.P7073129235633329333

`A223480(Δ[A023545(n+1)])`
-/

namespace A223477.P7073129235633329333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (f1 (n + 1) - f1 n).toNat

end

end A223477.P7073129235633329333

/-! ## A223477.P952818948255080472

`A223480(A052905(n+2)+1)`
-/

namespace A223477.P952818948255080472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A052905 (n + 2) + 1).toNat

end

end A223477.P952818948255080472

/-!
# A223478: Rolling icosahedron face footprints: number of n X 6 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223478, there is no canonical definition to state claims against.
-/

/-! ## A223478.P366689081645603493

`A223480(A056119(n)+16)`
-/

namespace A223478.P366689081645603493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A056119 n + 16).toNat

end

end A223478.P366689081645603493

/-! ## A223478.P13710781252122599471

`A223480(eq[3, A219347(n)])`
-/

namespace A223478.P13710781252122599471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223478.P13710781252122599471

/-! ## A223478.P6379048046663147605

`A223480(eq[5, A193592(n)])`
-/

namespace A223478.P6379048046663147605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223478.P6379048046663147605

/-! ## A223478.P9463494371487754186

`A223480(eq[6, A200370(n+1)])`
-/

namespace A223478.P9463494371487754186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223478.P9463494371487754186

/-! ## A223478.P10110728338434245201

`A223480(eq[8, A185782(n+1)])`
-/

namespace A223478.P10110728338434245201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223478.P10110728338434245201

/-!
# A223479: Rolling icosahedron face footprints: number of nX7 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223479, there is no canonical definition to state claims against.
-/

/-! ## A223479.P4025521336860440317

`A223480(eq[4, A219347(n)])`
-/

namespace A223479.P4025521336860440317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223479.P4025521336860440317

/-! ## A223479.P15147680587905825677

`A223480(eq[6, A193592(n)])`
-/

namespace A223479.P15147680587905825677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223479.P15147680587905825677

/-! ## A223479.P10178658934315287783

`A223480(eq[7, A200370(n+1)])`
-/

namespace A223479.P10178658934315287783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223479.P10178658934315287783

/-! ## A223479.P7923330789801383714

`A223480(eq[10, A185782(n+1)])`
-/

namespace A223479.P7923330789801383714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223479.P7923330789801383714

/-! ## A223479.P40128158850728278

`A223480(A166136(n+4)+Δ[n²])`
-/

namespace A223479.P40128158850728278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A166136 (n + 4) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A223479.P40128158850728278

/-!
# A223480: T(n,k)=Rolling icosahedron face footprints: number of nXk 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223480, there is no canonical definition to state claims against.
-/

/-! ## A223480.P3385448449648876292

`A223282(A077228(A001096(n))+n)`
-/

namespace A223480.P3385448449648876292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223282 (A077228 (A001096 n).toNat + (n : ℤ)).toNat

end

end A223480.P3385448449648876292

/-! ## A223480.P13598474202736424731

`A010172(A072256(n))^A248973(n)`
-/

namespace A223480.P13598474202736424731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010172 (A072256 n).toNat : ℚ) ^ (A248973 n : ℤ)

end

end A223480.P13598474202736424731

/-!
# A223481: Rolling icosahedron face footprints: number of 3 X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223481, there is no canonical definition to state claims against.
-/

/-! ## A223481.P18244020955639618215

`A223480(∑[n+2]+4)`
-/

namespace A223481.P18244020955639618215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223481.P18244020955639618215

/-! ## A223481.P5835477142599457870

`A223480(A167614(n+1))+A185037(n)`
-/

namespace A223481.P5835477142599457870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A167614 (n + 1)).toNat + A185037 n

end

end A223481.P5835477142599457870

/-! ## A223481.P1054739325389732253

`A223480(A167614(n+1))+A185284(n)`
-/

namespace A223481.P1054739325389732253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A167614 (n + 1)).toNat + A185284 n

end

end A223481.P1054739325389732253

/-! ## A223481.P524353541380429986

`lcm(A015343(n), A223480(A167614(n+1)))`
-/

namespace A223481.P524353541380429986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015343 n) (A223480 (A167614 (n + 1)).toNat)

end

end A223481.P524353541380429986

/-! ## A223481.P16521760705577252049

`or(A000035(n), A223480(A167614(n+1)))`
-/

namespace A223481.P16521760705577252049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A223480 (A167614 (n + 1)).toNat)

end

end A223481.P16521760705577252049

/-!
# A223482: Rolling icosahedron face footprints: number of 4 X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223482, there is no canonical definition to state claims against.
-/

/-! ## A223482.P18408910798257402828

`A223480(A141214(n)+7)`
-/

namespace A223482.P18408910798257402828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A141214 n + 7).toNat

end

end A223482.P18408910798257402828

/-! ## A223482.P7674442659807874110

`A223480(A052905(n)+9)`
-/

namespace A223482.P7674442659807874110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A052905 n + 9).toNat

end

end A223482.P7674442659807874110

/-! ## A223482.P8224017099239054386

`A223480(A055999(n)+10)`
-/

namespace A223482.P8224017099239054386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A055999 n + 10).toNat

end

end A223482.P8224017099239054386

/-! ## A223482.P11668166494638768216

`A223480(A167614(n+2)+1)`
-/

namespace A223482.P11668166494638768216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A167614 (n + 2) + 1).toNat

end

end A223482.P11668166494638768216

/-! ## A223482.P8492316587606798200

`A223480(A166136(n+2)-2)`
-/

namespace A223482.P8492316587606798200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A166136 (n + 2) - 2).toNat

end

end A223482.P8492316587606798200

/-!
# A223483: Rolling icosahedron face footprints: number of 5Xn 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223483, there is no canonical definition to state claims against.
-/

/-! ## A223483.P8249504714975015421

`A223480(A167499(n+3))`
-/

namespace A223483.P8249504714975015421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A167499 (n + 3)).toNat

end

end A223483.P8249504714975015421

/-! ## A223483.P9081132617325383844

`A223480(A155212(n)+13)`
-/

namespace A223483.P9081132617325383844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A155212 n + 13).toNat

end

end A223483.P9081132617325383844

/-! ## A223483.P5148444094068511786

`A223480(A056000(n)+15)`
-/

namespace A223483.P5148444094068511786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A056000 n + 15).toNat

end

end A223483.P5148444094068511786

/-! ## A223483.P3670219213246102214

`A223480(eq[7, A066657(n)])`
-/

namespace A223483.P3670219213246102214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223483.P3670219213246102214

/-! ## A223483.P5277196902486314859

`A223480(eq[6, A131818(n+1)])`
-/

namespace A223483.P5277196902486314859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223483.P5277196902486314859

/-!
# A223484: Rolling icosahedron face footprints: number of 6 X n 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223484, there is no canonical definition to state claims against.
-/

/-! ## A223484.P7860700929282545618

`A223480(A166136(n+4))`
-/

namespace A223484.P7860700929282545618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A166136 (n + 4)).toNat

end

end A223484.P7860700929282545618

/-! ## A223484.P4583790836059262353

`A223480(A056115(n)+21)`
-/

namespace A223484.P4583790836059262353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A056115 n + 21).toNat

end

end A223484.P4583790836059262353

/-! ## A223484.P12616523172227943471

`A223480(A167499(n+4)+1)`
-/

namespace A223484.P12616523172227943471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A167499 (n + 4) + 1).toNat

end

end A223484.P12616523172227943471

/-! ## A223484.P2277965745168980460

`A223480(A000124(n+5)+5)`
-/

namespace A223484.P2277965745168980460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A000124 (n + 5) + 5).toNat

end

end A223484.P2277965745168980460

/-! ## A223484.P6162127346568603493

`A223480(eq[7, A131818(n+1)])`
-/

namespace A223484.P6162127346568603493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223484.P6162127346568603493

/-!
# A223485: Rolling icosahedron face footprints: number of 7Xn 0..19 arrays starting with 0 where 0..19 label faces of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves across an icosahedral edge.

The programs for A223485, there is no canonical definition to state claims against.
-/

/-! ## A223485.P3375867490116447805

`A223480(A056119(n)+28)`
-/

namespace A223485.P3375867490116447805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A056119 n + 28).toNat

end

end A223485.P3375867490116447805

/-! ## A223485.P15100247037108565024

`A223480(eq[11, A066657(n)])`
-/

namespace A223485.P15100247037108565024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223485.P15100247037108565024

/-! ## A223485.P1180293482218613649

`A223480(A167499(n+5)+2)`
-/

namespace A223485.P1180293482218613649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A167499 (n + 5) + 2).toNat

end

end A223485.P1180293482218613649

/-! ## A223485.P3086834212444558206

`A223480(A141214(n+3)+10)`
-/

namespace A223485.P3086834212444558206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (A141214 (n + 3) + 10).toNat

end

end A223485.P3086834212444558206

/-! ## A223485.P7169680961224241491

`A223480(eq[8, A131818(n+1)])`
-/

namespace A223485.P7169680961224241491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223485.P7169680961224241491

/-!
# A223486: Lucas entry points: a(n) = least k such that n divides Lucas number L_k (=A000032(k), for k >= 0), or -1 if there is no such k.

The programs for A223486, there is no canonical definition to state claims against.
-/

/-! ## A223486.P16816558665677943340

`(A106291(n+1)/A253808(n+1))%(2*n+1)`
-/

namespace A223486.P16816558665677943340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A106291 (n + 1) : ℚ) / (A253808 (n + 1) : ℚ))) (2 * n + 1 : ℤ)

end

end A223486.P16816558665677943340

/-!
# A223487: Number of missing residues in Lucas sequence mod n.

The programs for A223487, there is no canonical definition to state claims against.
-/

/-! ## A223487.P9605445159005594224

`1-A066981(n+1)+n`
-/

namespace A223487.P9605445159005594224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066981 (n + 1) + (n : ℤ)

end

end A223487.P9605445159005594224

/-! ## A223487.P1933954329000921572

`1-(A066981(Δ[n²]-n)-n)`
-/

namespace A223487.P1933954329000921572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A066981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A223487.P1933954329000921572

/-! ## A223487.P1471676023819007127

`1-(n-2*n)-A066981(1-(n-2*n))`
-/

namespace A223487.P1471676023819007127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A066981 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A223487.P1471676023819007127

/-! ## A223487.P12696605057705250760

`A024000(A066981(n+1))+n`
-/

namespace A223487.P12696605057705250760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A066981 (n + 1)).toNat + (n : ℤ)

end

end A223487.P12696605057705250760

/-! ## A223487.P18109404898295776519

`abs(A066981(n+1)+A001478(n+1))`
-/

namespace A223487.P18109404898295776519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066981 (n + 1) + A001478 (n + 1)|

end

end A223487.P18109404898295776519

/-! ## A223487.P14796528887252823573

`A001478(A066981(n+1))+A000027(n+1)`
-/

namespace A223487.P14796528887252823573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A066981 (n + 1)).toNat + A000027 (n + 1)

end

end A223487.P14796528887252823573

/-!
# A223488: Number of distinct residues in the Lucas sequence mod the n-th prime.

The programs for A223488, there is no canonical definition to state claims against.
-/

/-! ## A223488.P8046886286032415359

`A066981(A000040(n+1))`
-/

namespace A223488.P8046886286032415359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066981 (A000040 (n + 1)).toNat

end

end A223488.P8046886286032415359

/-! ## A223488.P7617855069855341689

`A066981(A008578(n+2))`
-/

namespace A223488.P7617855069855341689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066981 (A008578 (n + 2)).toNat

end

end A223488.P7617855069855341689

/-! ## A223488.P5089429297221514514

`A066981(A182986(n+2))`
-/

namespace A223488.P5089429297221514514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066981 (A182986 (n + 2)).toNat

end

end A223488.P5089429297221514514

/-! ## A223488.P4898919765555554104

`Δ[A007504(n)]-A223489(n+1)`
-/

namespace A223488.P4898919765555554104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A223489 (n + 1)

end

end A223488.P4898919765555554104

/-! ## A223488.P7392349458096874141

`p?[A014681(n)]-A223489(n+1)`
-/

namespace A223488.P7392349458096874141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A223489 (n + 1)

end

end A223488.P7392349458096874141

/-! ## A223488.P6461000048125623911

`A000040(n+1)-A223489(n+1)`
-/

namespace A223488.P6461000048125623911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A223489 (n + 1)

end

end A223488.P6461000048125623911

/-! ## A223488.P10840554040914529978

`record[A006530(n+2)]-A223489(n+1)`
-/

namespace A223488.P10840554040914529978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223489 (n + 1)

end

end A223488.P10840554040914529978

/-! ## A223488.P5961330814934752855

`record[A014963(n+2)]-A223489(n+1)`
-/

namespace A223488.P5961330814934752855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223489 (n + 1)

end

end A223488.P5961330814934752855

/-! ## A223488.P8606156345139173211

`record[A020639(n+2)]-A223489(n+1)`
-/

namespace A223488.P8606156345139173211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223489 (n + 1)

end

end A223488.P8606156345139173211

/-! ## A223488.P13370620432055048427

`p?[A123193(n+1)]-A223489(n+1)`
-/

namespace A223488.P13370620432055048427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A223489 (n + 1)

end

end A223488.P13370620432055048427

/-! ## A223488.P13731357727722341678

`p?[A207790(n+1)]-A223489(n+1)`
-/

namespace A223488.P13731357727722341678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A223489 (n + 1)

end

end A223488.P13731357727722341678

/-! ## A223488.P1656558079080171328

`p?[A249811(n+1)]-A223489(n+1)`
-/

namespace A223488.P1656558079080171328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A223489 (n + 1)

end

end A223488.P1656558079080171328

/-! ## A223488.P9034895386464059635

`p?[A344307(n+1)]-A223489(n+1)`
-/

namespace A223488.P9034895386464059635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A223489 (n + 1)

end

end A223488.P9034895386464059635

/-! ## A223488.P12467164310208010789

`A006093(n+1)+1-A223489(n+1)`
-/

namespace A223488.P12467164310208010789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A223489 (n + 1))

end

end A223488.P12467164310208010789

/-! ## A223488.P4994997678559952994

`record[A000010(n+1)+1]-A223489(n+1)`
-/

namespace A223488.P4994997678559952994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223489 (n + 1)

end

end A223488.P4994997678559952994

/-! ## A223488.P7786256461873364419

`eq[1, A001222(n+1)]+1-A223489(n+1)`
-/

namespace A223488.P7786256461873364419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A223489 (n + 1)

end

end A223488.P7786256461873364419

/-! ## A223488.P14506293435897921264

`eq[2, A000005(n+1)]+1-A223489(n+1)`
-/

namespace A223488.P14506293435897921264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A223489 (n + 1)

end

end A223488.P14506293435897921264

/-! ## A223488.P9759988011450528249

`lt[A001222(n+2), 2]+2-A223489(n+1)`
-/

namespace A223488.P9759988011450528249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) - A223489 (n + 1)

end

end A223488.P9759988011450528249

/-! ## A223488.P14997481168088480977

`comp[A018252(n+1)-1]+1-A223489(n+1)`
-/

namespace A223488.P14997481168088480977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - A223489 (n + 1)

end

end A223488.P14997481168088480977

/-! ## A223488.P16643887854144664004

`A141310(A006093(n+1))-A223489(n+1)`
-/

namespace A223488.P16643887854144664004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A006093 (n + 1)).toNat - A223489 (n + 1)

end

end A223488.P16643887854144664004

/-!
# A223489: a(n) = number of missing residues in the Lucas sequence mod the n-th prime number.

The programs for A223489, there is no canonical definition to state claims against.
-/

/-! ## A223489.P8250243358280195158

`A000040(n+1)-A223488(n+1)`
-/

namespace A223489.P8250243358280195158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A223488 (n + 1)

end

end A223489.P8250243358280195158

/-! ## A223489.P3540908403902167467

`A008578(n+2)-A223488(n+1)`
-/

namespace A223489.P3540908403902167467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A223488 (n + 1)

end

end A223489.P3540908403902167467

/-! ## A223489.P9057802384404803644

`record[A039649(n+1)]-A223488(n+1)`
-/

namespace A223489.P9057802384404803644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223488 (n + 1)

end

end A223489.P9057802384404803644

/-! ## A223489.P5742261422952728413

`p?[A000961(n+1)]-A223488(n+1)`
-/

namespace A223489.P5742261422952728413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A223488 (n + 1)

end

end A223489.P5742261422952728413

/-! ## A223489.P57701203470197009

`record[A006530(n+2)]-A223488(n+1)`
-/

namespace A223489.P57701203470197009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223488 (n + 1)

end

end A223489.P57701203470197009

/-! ## A223489.P5048690865209970439

`record[A014963(n+2)]-A223488(n+1)`
-/

namespace A223489.P5048690865209970439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223488 (n + 1)

end

end A223489.P5048690865209970439

/-! ## A223489.P6595459472072264095

`record[A020639(n+2)]-A223488(n+1)`
-/

namespace A223489.P6595459472072264095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223488 (n + 1)

end

end A223489.P6595459472072264095

/-! ## A223489.P13555666571117436531

`p?[A324050(n+1)]-A223488(n+1)`
-/

namespace A223489.P13555666571117436531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A223488 (n + 1)

end

end A223489.P13555666571117436531

/-! ## A223489.P1811634360134890463

`record[A000010(n+1)+1]-A223488(n+1)`
-/

namespace A223489.P1811634360134890463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A223488 (n + 1)

end

end A223489.P1811634360134890463

/-! ## A223489.P5161053136367879496

`eq[1, A001222(n+1)]+1-A223488(n+1)`
-/

namespace A223489.P5161053136367879496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A223488 (n + 1)

end

end A223489.P5161053136367879496

/-! ## A223489.P16002595641114135177

`eq[2, A000005(n+1)]+1-A223488(n+1)`
-/

namespace A223489.P16002595641114135177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A223488 (n + 1)

end

end A223489.P16002595641114135177

/-! ## A223489.P14504280516434236803

`lt[A001222(n+2), 2]+2-A223488(n+1)`
-/

namespace A223489.P14504280516434236803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) - A223488 (n + 1)

end

end A223489.P14504280516434236803

/-! ## A223489.P2468119299876009289

`comp[A018252(n+1)-1]+1-A223488(n+1)`
-/

namespace A223489.P2468119299876009289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - A223488 (n + 1)

end

end A223489.P2468119299876009289

/-! ## A223489.P15586669484872235663

`abs(A223488(n+1)-(A014689(n+1)+1+n))`
-/

namespace A223489.P15586669484872235663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A223488 (n + 1) - (A014689 (n + 1) + 1 + (n : ℤ))|

end

end A223489.P15586669484872235663

/-! ## A223489.P15877903121028689918

`A182986(n+2)-A066981(A182986(n+2))`
-/

namespace A223489.P15877903121028689918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A066981 (A182986 (n + 2)).toNat

end

end A223489.P15877903121028689918

/-! ## A223489.P11203363531036592293

`A137750(n+1)+A137751(n+1)-A223488(n+1)`
-/

namespace A223489.P11203363531036592293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137750 (n + 1) + (A137751 (n + 1) - A223488 (n + 1))

end

end A223489.P11203363531036592293

/-! ## A223489.P14782564868308632779

`A223487(p?[xor(1, n)])`
-/

namespace A223489.P14782564868308632779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223487 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A223489.P14782564868308632779

/-! ## A223489.P1328245293628044740

`A223487(A000040(n+1))`
-/

namespace A223489.P1328245293628044740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223487 (A000040 (n + 1)).toNat

end

end A223489.P1328245293628044740

/-! ## A223489.P11848645461286110692

`A223487(A006005(n+1))`
-/

namespace A223489.P11848645461286110692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223487 (A006005 (n + 1)).toNat

end

end A223489.P11848645461286110692

/-! ## A223489.P10626512791274333457

`A223487(A008578(n+2))`
-/

namespace A223489.P10626512791274333457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223487 (A008578 (n + 2)).toNat

end

end A223489.P10626512791274333457

/-!
# A223490: Smallest Fermi-Dirac factor of n.

The programs for A223490, there is no canonical definition to state claims against.
-/

/-! ## A223490.P10062817741948470466

`(n+1)/A302792(n+1)`
-/

namespace A223490.P10062817741948470466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A302792 (n + 1) : ℚ)

end

end A223490.P10062817741948470466

/-! ## A223490.P12404140512279993236

`A302023(A020639(A302024(n+1)))`
-/

namespace A223490.P12404140512279993236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A020639 (A302024 (n + 1)).toNat).toNat

end

end A223490.P12404140512279993236

/-! ## A223490.P10829768257729332224

`A034684(A365296(n+1))`
-/

namespace A223490.P10829768257729332224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A365296 (n + 1)).toNat

end

end A223490.P10829768257729332224

/-! ## A223490.P12711458142098112143

`A084400(A302786(n+1)+1)`
-/

namespace A223490.P12711458142098112143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (A302786 (n + 1) + 1).toNat

end

end A223490.P12711458142098112143

/-! ## A223490.P10770018747043440943

`A302023(A020639(A160102(n+1)))`
-/

namespace A223490.P10770018747043440943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A020639 (A160102 (n + 1)).toNat).toNat

end

end A223490.P10770018747043440943

/-! ## A223490.P12229988885519629340

`A077609(eq[1, A077609(n+1)]+2)`
-/

namespace A223490.P12229988885519629340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A223490.P12229988885519629340

/-! ## A223490.P2643917428881175331

`A077609(record[2-A077609(n+1)+n]+1)`
-/

namespace A223490.P2643917428881175331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A077609 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A223490.P2643917428881175331

/-! ## A223490.P16286788865846396741

`A077609(record[(n+1)/A077609(n+1)+1])`
-/

namespace A223490.P16286788865846396741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A077609 (n + 1) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A223490.P16286788865846396741

/-!
# A223491: Largest Fermi-Dirac factor of n.

The programs for A223491, there is no canonical definition to state claims against.
-/

/-! ## A223491.P10604620164827797220

`(n+1)/A302776(n+1)`
-/

namespace A223491.P10604620164827797220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A302776 (n + 1) : ℚ)

end

end A223491.P10604620164827797220

/-! ## A223491.P2242606681072867684

`A034699(A353897(n+1))`
-/

namespace A223491.P2242606681072867684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A353897 (n + 1)).toNat

end

end A223491.P2242606681072867684

/-! ## A223491.P14996767161334346797

`A084400(A302785(n+1)+1)`
-/

namespace A223491.P14996767161334346797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (A302785 (n + 1) + 1).toNat

end

end A223491.P14996767161334346797

/-! ## A223491.P7976676437379391384

`A302023(A006530(A160102(n+1)))`
-/

namespace A223491.P7976676437379391384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A006530 (A160102 (n + 1)).toNat).toNat

end

end A223491.P7976676437379391384

/-! ## A223491.P4740981672437533186

`A213925(∑[A064547(n+1)]+1)`
-/

namespace A223491.P4740981672437533186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A223491.P4740981672437533186

/-! ## A223491.P1573493754906290722

`(n+1)/A302023(A052126(A302024(n+1)))`
-/

namespace A223491.P1573493754906290722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A302023 (A052126 (A302024 (n + 1)).toNat).toNat : ℚ)

end

end A223491.P1573493754906290722

/-! ## A223491.P1266579029979038084

`A010766(A302776(n+1)+∑[n])`
-/

namespace A223491.P1266579029979038084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A302776 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A223491.P1266579029979038084

/-! ## A223491.P12789471704481584071

`A126988(A302776(n+1)+A000217(n))`
-/

namespace A223491.P12789471704481584071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A302776 (n + 1) + A000217 n).toNat

end

end A223491.P12789471704481584071

/-!
# A223492: Number of (n+2)X1 0..3 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223492, there is no canonical definition to state claims against.
-/

/-! ## A223492.P4840526525791690772

`sqrt(A223493(n+1))`
-/

namespace A223492.P4840526525791690772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223493 (n + 1) : ℝ)

end

end A223492.P4840526525791690772

/-! ## A223492.P11525578880557389578

`floor(sqrt(A223493(-xor(n, -1))))`
-/

namespace A223492.P11525578880557389578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A223493 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A223492.P11525578880557389578

/-! ## A223492.P2535970929310027585

`root(A223493(n+1), ratio[A000079(n)])`
-/

namespace A223492.P2535970929310027585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223493 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A223492.P2535970929310027585

/-! ## A223492.P8022154300899248119

`root(A223493(n+1)+A185255(n), 2)`
-/

namespace A223492.P8022154300899248119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223493 (n + 1) + A185255 n : ℝ) ^ (1 / (2 : ℝ))

end

end A223492.P8022154300899248119

/-! ## A223492.P14829787404276814268

`root(A223493(n+1), A007318(∑[n])+1)`
-/

namespace A223492.P14829787404276814268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223493 (n + 1) : ℝ) ^ (1 / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℝ))

end

end A223492.P14829787404276814268

/-!
# A223493: Number of (n+2)X2 0..3 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223493, there is no canonical definition to state claims against.
-/

/-! ## A223493.P4375118560571382921

`A223492(n+1)²`
-/

namespace A223493.P4375118560571382921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223492 (n + 1) ^ 2

end

end A223493.P4375118560571382921

/-! ## A223493.P7049685664680830058

`A223492(n+1)^A020639(A017137(n))`
-/

namespace A223493.P7049685664680830058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223492 (n + 1) : ℚ) ^ (A020639 (A017137 n).toNat : ℤ)

end

end A223493.P7049685664680830058

/-! ## A223493.P14551333329674847142

`A223492(n+1)^A000005(A151800(n))`
-/

namespace A223493.P14551333329674847142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223492 (n + 1) : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A223493.P14551333329674847142

/-! ## A223493.P10855539632038597049

`A223492(n+1)^A000005(A001359(n+1))`
-/

namespace A223493.P10855539632038597049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223492 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A223493.P10855539632038597049

/-! ## A223493.P10137016738460575543

`A223492(n+1)^A000005(A028916(n+1))`
-/

namespace A223493.P10137016738460575543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223492 (n + 1) : ℚ) ^ (A000005 (A028916 (n + 1)).toNat : ℤ)

end

end A223493.P10137016738460575543

/-!
# A223494: Number of (n+2)X3 0..3 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223494, there is no canonical definition to state claims against.
-/

/-! ## A223494.P13507451970275491520

`A223495(∑[n+3]+1)`
-/

namespace A223494.P13507451970275491520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223494.P13507451970275491520

/-!
# A223496: Number of 3Xn 0..3 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223496, there is no canonical definition to state claims against.
-/

/-! ## A223496.P3044636762736764624

`A223495(∑[n]+1)`
-/

namespace A223496.P3044636762736764624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223496.P3044636762736764624

/-! ## A223496.P15538669927627459280

`record[A223495(A114091(n+1))]`
-/

namespace A223496.P15538669927627459280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223495 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223496.P15538669927627459280

/-! ## A223496.P2038528444392475600

`record[A223495(A286235(n+1))]`
-/

namespace A223496.P2038528444392475600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223495 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223496.P2038528444392475600

/-! ## A223496.P11191112565325028872

`A223495(A000217(n)+1)+char[9]`
-/

namespace A223496.P11191112565325028872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223495 (A000217 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223496.P11191112565325028872

/-! ## A223496.P1732447371115731127

`record[A010054(n)*A223495(n+1)]`
-/

namespace A223496.P1732447371115731127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223496.P1732447371115731127

/-!
# A223497: Number of 4Xn 0..3 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223497, there is no canonical definition to state claims against.
-/

/-! ## A223497.P6102092775933143562

`A223495(∑[n+1]+2)`
-/

namespace A223497.P6102092775933143562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223495 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223497.P6102092775933143562

/-! ## A223497.P6516764728236273752

`record[root(A223495(n+3), A060922(n))]`
-/

namespace A223497.P6516764728236273752
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223495 (n + 3) : ℝ) ^ (1 / (A060922 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223497.P6516764728236273752

/-! ## A223497.P10814192840161690422

`record[root(A223495(n+3), A048786(n+1))]`
-/

namespace A223497.P10814192840161690422
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223495 (n + 3) : ℝ) ^ (1 / (A048786 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223497.P10814192840161690422

/-!
# A223498: Petersen graph (3,1) coloring a rectangular array: number of n X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223498, there is no canonical definition to state claims against.
-/

/-! ## A223498.P9246069805114933969

`A223504((n+1)²+n²)`
-/

namespace A223498.P9246069805114933969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 ((n + 1) ^ 2 + n ^ 2)

end

end A223498.P9246069805114933969

/-!
# A223499: Petersen graph (3,1) coloring a rectangular array: number of n X 3 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,3 3,5 3,4 1,2 1,4 4,5 2,0 2,5 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph, with the array starting at 0.

The programs for A223499, there is no canonical definition to state claims against.
-/

/-! ## A223499.P16573334921322077078

`(13+(13-2*sqrt(39))*(7-sqrt(39))^(n+1)+(7+sqrt(39))^(n+1)*(13+2*sqrt(39)))/39`
-/

namespace A223499.P16573334921322077078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 + (13 - 2 * Real.sqrt (39 : ℝ)) * (7 - Real.sqrt (39 : ℝ)) ^ (n + 1) + (7 + Real.sqrt (39 : ℝ)) ^ (n + 1) * (13 + 2 * Real.sqrt (39 : ℝ))) / 39

end

end A223499.P16573334921322077078

/-! ## A223499.P17844844448025090904

`A223504(∑[n+3]+1)`
-/

namespace A223499.P17844844448025090904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223499.P17844844448025090904

/-! ## A223499.P12585687201866443949

`or(1, A223504(Δ[A008778(n)]))`
-/

namespace A223499.P12585687201866443949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223504 (f1 (n + 1) - f1 n).toNat)

end

end A223499.P12585687201866443949

/-! ## A223499.P3575522579957818220

`A223504(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A223499.P3575522579957818220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A223499.P3575522579957818220

/-! ## A223499.P16918806375500067107

`A223504(Δ[A008778(n)])%A222166(n+1)`
-/

namespace A223499.P16918806375500067107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223504 (f1 (n + 1) - f1 n).toNat) (A222166 (n + 1))

end

end A223499.P16918806375500067107

